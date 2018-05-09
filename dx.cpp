/*
--------------------------------------------------------------------------------
This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Library General Public
License as published by the Free Software Foundation; either
version 2 of the License, or (at your option) any later version.
This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Library General Public License for more details.
You should have received a copy of the GNU Library General Public
License along with this library; if not, write to the
Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
Boston, MA  02110-1301, USA.
--------------------------------------------------------------------------------
*/

// Copyright (c) 2016 John Seamons, ZL/KF6VO

#include "types.h"
#include "config.h"
#include "kiwi.h"
#include "misc.h"
#include "str.h"
#include "timer.h"
#include "web.h"
#include "peri.h"
#include "cfg.h"
#include "dx.h"
#include "coroutines.h"

#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <time.h>
#include <signal.h>

// maintains a dx_t/dxlist_t struct parallel to JSON for fast lookups

dxlist_t dx;

// create JSON string from dx_t struct representation
void dx_save_as_json()
{
	int i, n;
	cfg_t *cfg = &cfg_dx;
	dx_t *dxp;

	printf("saving as dx.json, %d entries\n", dx.len);

	#define DX_JSON_OVERHEAD 128	// gross assumption about size required for everything else
	n = 0;
	for (i=0, dxp = dx.list; i < dx.len; i++, dxp++) {
		n += DX_JSON_OVERHEAD;
		n += strlen(dxp->ident);
		if (dxp->notes)
			n += strlen(dxp->notes);
		if (dxp->params)
			n += strlen(dxp->params);
	}

	cfg->json = (char *) kiwi_malloc("dx json buf", n);
	cfg->json_buf_size = n;
	char *cp = cfg->json;
	n = sprintf(cp, "{\"dx\":["); cp += n;

	for (i=0, dxp = dx.list; i < dx.len; i++, dxp++) {
		n = sprintf(cp, "%s[%.2f", i? ",":"", dxp->freq); cp += n;
		n = sprintf(cp, ",\"%s\"", modu_s[dxp->flags & DX_MODE]); cp += n;
		if (dxp->notes) {
			n = sprintf(cp, ",\"%s\",\"%s\"", dxp->ident, dxp->notes); cp += n;
		} else {
			n = sprintf(cp, ",\"%s\",\"\"", dxp->ident); cp += n;
		}

		u4_t type = dxp->flags & DX_TYPE;
		if (type || dxp->offset) {
			const char *delim = ",{";
			const char *type_s;
			if (type == WL) type_s = "WL";
			if (type == SB) type_s = "SB";
			if (type == DG) type_s = "DG";
			if (type == NoN) type_s = "NoN";
			if (type == XX) type_s = "XX";
			if (type) {
			    n = sprintf(cp, "%s\"%s\":1", delim, type_s); cp += n;
			    delim = ",";
			}
			if (dxp->low_cut) {
			    n = sprintf(cp, "%s\"lo\":%d", delim, dxp->low_cut); cp += n;
			    delim = ",";
			}
			if (dxp->high_cut) {
			    n = sprintf(cp, "%s\"hi\":%d", delim, dxp->high_cut); cp += n;
			    delim = ",";
			}
			if (dxp->offset) {
			    n = sprintf(cp, "%s\"o\":%d", delim, dxp->offset); cp += n;
			    delim = ",";
			}
			if (dxp->params && *dxp->params) {
			    n = sprintf(cp, "%s\"p\":\"%s\"", delim, dxp->params); cp += n;
			    delim = ",";
			}
			*cp++ = '}';
		}
		*cp++ = ']';
		*cp++ = '\n';
	}
	
	n = sprintf(cp, "]}"); cp += n;
	dxcfg_save_json(cfg->json);
}

#if 0

// too slow
void dx_save_as_json_kstr_version()
{
	int i, n;
	cfg_t *cfg = &cfg_dx;
	dx_t *dxp;
	char *sb, *sb2;

	printf("saving as dx.json, %d entries\n", dx.len);

	sb = (char *) "{\"dx\":[";
	
	for (i=0, dxp = dx.list; i < dx.len; i++, dxp++) {
		asprintf(&sb2, "%s[%.2f", i? ",":"", dxp->freq);
		sb = kstr_cat(sb, kstr_wrap(sb2));
		asprintf(&sb2, ",\"%s\"", modu_s[dxp->flags & DX_MODE]);
		sb = kstr_cat(sb, kstr_wrap(sb2));
		if (dxp->notes) {
			asprintf(&sb2, ",\"%s\",\"%s\"", dxp->ident, dxp->notes);
		    sb = kstr_cat(sb, kstr_wrap(sb2));
		} else {
			asprintf(&sb2, ",\"%s\",\"\"", dxp->ident);
		    sb = kstr_cat(sb, kstr_wrap(sb2));
		}

		u4_t type = dxp->flags & DX_TYPE;
		if (type || dxp->low_cut || dxp->high_cut || dxp->offset || (dxp->params && *dxp->params)) {
			const char *delim = ",{";
			const char *type_s;
			if (type == WL) type_s = "WL";
			if (type == SB) type_s = "SB";
			if (type == DG) type_s = "DG";
			if (type == NoN) type_s = "NoN";
			if (type == XX) type_s = "XX";
			if (type) {
			    asprintf(&sb2, "%s\"%s\":1", delim, type_s);
		        sb = kstr_cat(sb, kstr_wrap(sb2));
			    delim = ",";
			}
			if (dxp->low_cut) {
			    asprintf(&sb2, "%s\"lo\":%d", delim, dxp->low_cut);
		        sb = kstr_cat(sb, kstr_wrap(sb2));
			    delim = ",";
			}
			if (dxp->high_cut) {
			    asprintf(&sb2, "%s\"hi\":%d", delim, dxp->high_cut);
		        sb = kstr_cat(sb, kstr_wrap(sb2));
			    delim = ",";
			}
			if (dxp->offset) {
			    asprintf(&sb2, "%s\"o\":%d", delim, dxp->offset);
		        sb = kstr_cat(sb, kstr_wrap(sb2));
			    delim = ",";
			}
			if (dxp->params && *dxp->params) {
			    asprintf(&sb2, "%s\"p\":\"%s\"", delim, dxp->params);
		        sb = kstr_cat(sb, kstr_wrap(sb2));
			    delim = ",";
			}
		    sb = kstr_cat(sb, "}");
		}
		sb = kstr_cat(sb, "]\n");
		
		NextTask("dx_save_as_json");
	}
	
    sb = kstr_cat(sb, "]}");
	cfg->json = kstr_sp(sb);
	cfg->json_buf_size = strlen(cfg->json) + SPACE_FOR_NULL;
	dxcfg_save_json(cfg->json);
}
#endif

static void dx_mode(dx_t *dxp, const char *s)
{
    int i;
    
    for (i = 0; i < N_MODE; i++) {
        if (strcasecmp(s, modu_s[i]) == 0)
            break;
    }
    
    if (i == N_MODE) {
	    lprintf("unknown dx config mode \"%s\", defaulting to AM\n", s);
	    i = 0;
	}
	
	dxp->flags = i;
}

static void dx_flag(dx_t *dxp, const char *flag)
{
	if (strcmp(flag, "WL") == 0) dxp->flags |= WL; else
	if (strcmp(flag, "SB") == 0) dxp->flags |= SB; else
	if (strcmp(flag, "DG") == 0) dxp->flags |= DG; else
	if (strcmp(flag, "NoN") == 0) dxp->flags |= NoN; else
	if (strcmp(flag, "XX") == 0) dxp->flags |= XX; else
	if (strcmp(flag, "PB") == 0) ; else     // deprecated, but here in case any json file still has it
	lprintf("%.2f \"%s\": unknown dx flag \"%s\"\n", dxp->freq, dxp->ident, flag);
}

// create and switch to new dx_t struct from JSON token list representation
static void dx_reload_json(cfg_t *cfg)
{
	const char *s;
	jsmntok_t *end_tok = &(cfg->tokens[cfg->ntok]);
	jsmntok_t *jt = dxcfg_lookup_json("dx");
	assert(jt != NULL);
	assert(JSMN_IS_ARRAY(jt));
	int _dx_list_len = jt->size;
	jt++;
	
	lprintf("%d dx entries\n", _dx_list_len);
	
	dx_t *_dx_list = (dx_t *) kiwi_malloc("dx_list", (_dx_list_len+1) * sizeof(dx_t));
	
	dx_t *dxp = _dx_list;
	int i = 0;

	for (; jt != end_tok; dxp++, i++) {
		assert(i < _dx_list_len);
		assert(JSMN_IS_ARRAY(jt));
		jt++;
		
		double f;
		assert(dxcfg_float_json(jt, &f) == true);
		dxp->freq = f;
		jt++;
		
		const char *mode;
		assert(dxcfg_string_json(jt, &mode) == true);
		dx_mode(dxp, mode);
		dxcfg_string_free(mode);
		jt++;
		
		assert(dxcfg_string_json(jt, &s) == true);
		kiwi_str_unescape_quotes((char *) s);
		dxp->ident = kiwi_str_encode((char *) s);
		dxcfg_string_free(s);
		jt++;
		
		assert(dxcfg_string_json(jt, &s) == true);
		kiwi_str_unescape_quotes((char *) s);
		dxp->notes = kiwi_str_encode((char *) s);
		dxcfg_string_free(s);
		if (*dxp->notes == '\0') {
			dxcfg_string_free(dxp->notes);
			dxp->notes = NULL;
		}
		jt++;
		
		//printf("dx.json %d %.2f 0x%x \"%s\" \"%s\"\n", i, dxp->freq, dxp->flags, dxp->ident, dxp->notes);

		if (JSMN_IS_OBJECT(jt)) {
			jt++;
			while (jt != end_tok && !JSMN_IS_ARRAY(jt)) {
				assert(JSMN_IS_ID(jt));
				const char *id;
				assert(dxcfg_string_json(jt, &id) == true);
				jt++;
				
				int num;
				if (dxcfg_int_json(jt, &num) == true) {
                    if (strcmp(id, "lo") == 0) {
                        dxp->low_cut = num;
                    } else
                    if (strcmp(id, "hi") == 0) {
                        dxp->high_cut = num;
                    } else
                    if (strcmp(id, "o") == 0) {
                        dxp->offset = num;
                        //printf("dx.json %d offset %s %d\n", i, id, num);
                    } else {
                        if (num) {
                            dx_flag(dxp, id);
                            //printf("dx.json %d dx_flag %s\n", i, id);
                        }
                    }
                } else
				if (dxcfg_string_json(jt, &s) == true) {
                    //printf("dx.json %s=<%s>\n", id, s);
                    if (strcmp(id, "p") == 0) {
                        kiwi_str_unescape_quotes((char *) s);
                        dxp->params = kiwi_str_encode((char *) s);
                    }
                    dxcfg_string_free(s);
				}

                dxcfg_string_free(id);
				jt++;
			}
		}
	}

    //NextTask("dx_reload_json 1");
	qsort(_dx_list, _dx_list_len, sizeof(dx_t), qsort_floatcomp);
    //NextTask("dx_reload_json 2");
    for (i = 0; i < _dx_list_len; i++) _dx_list[i].idx = i;
    //NextTask("dx_reload_json 3");
	
	// switch to new list
	dx_t *prev_dx_list = dx.list;
	int prev_dx_list_len = dx.len;
	dx.list = _dx_list;
	dx.len = _dx_list_len;
	dx.hidden_used = false;
	
	// release previous
	if (prev_dx_list) {
		int i;
		dx_t *dxp;
		for (i=0, dxp = prev_dx_list; i < prev_dx_list_len; i++, dxp++) {
			// previous allocators better have used malloc(), strdup() et al for these and not kiwi_malloc()
			if (dxp->ident) free((void *) dxp->ident);
			if (dxp->notes) free((void *) dxp->notes);
			if (dxp->params) free((void *) dxp->params);
		}
	}
	
	kiwi_free("dx_list", prev_dx_list);
}

// reload requested, at startup or when file edited by hand
void dx_reload()
{
	cfg_t *cfg = &cfg_dx;
	
	if (!dxcfg_init())
		return;
	
	//dxcfg_walk(NULL, cfg_print_tok, NULL);
	dx_reload_json(cfg);
}