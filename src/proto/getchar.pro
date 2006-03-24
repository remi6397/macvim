/* getchar.c */
extern void free_buff __ARGS((struct buffheader *buf));
extern char_u *get_recorded __ARGS((void));
extern char_u *get_inserted __ARGS((void));
extern int stuff_empty __ARGS((void));
extern void typeahead_noflush __ARGS((int c));
extern void flush_buffers __ARGS((int typeahead));
extern void ResetRedobuff __ARGS((void));
extern void saveRedobuff __ARGS((void));
extern void restoreRedobuff __ARGS((void));
extern void AppendToRedobuff __ARGS((char_u *s));
extern void AppendToRedobuffLit __ARGS((char_u *str, int len));
extern void AppendCharToRedobuff __ARGS((int c));
extern void AppendNumberToRedobuff __ARGS((long n));
extern void stuffReadbuff __ARGS((char_u *s));
extern void stuffReadbuffLen __ARGS((char_u *s, long len));
extern void stuffReadbuffSpec __ARGS((char_u *s));
extern void stuffcharReadbuff __ARGS((int c));
extern void stuffnumReadbuff __ARGS((long n));
extern int start_redo __ARGS((long count, int old_redo));
extern int start_redo_ins __ARGS((void));
extern void stop_redo_ins __ARGS((void));
extern int ins_typebuf __ARGS((char_u *str, int noremap, int offset, int nottyped, int silent));
extern int typebuf_changed __ARGS((int tb_change_cnt));
extern int typebuf_typed __ARGS((void));
extern int typebuf_maplen __ARGS((void));
extern void del_typebuf __ARGS((int len, int offset));
extern int alloc_typebuf __ARGS((void));
extern void free_typebuf __ARGS((void));
extern int save_typebuf __ARGS((void));
extern void save_typeahead __ARGS((tasave_T *tp));
extern void restore_typeahead __ARGS((tasave_T *tp));
extern void openscript __ARGS((char_u *name, int directly));
extern void close_all_scripts __ARGS((void));
extern int using_script __ARGS((void));
extern void before_blocking __ARGS((void));
extern void updatescript __ARGS((int c));
extern int vgetc __ARGS((void));
extern int safe_vgetc __ARGS((void));
extern int vpeekc __ARGS((void));
extern int vpeekc_nomap __ARGS((void));
extern int vpeekc_any __ARGS((void));
extern int char_avail __ARGS((void));
extern void vungetc __ARGS((int c));
extern int inchar __ARGS((char_u *buf, int maxlen, long wait_time, int tb_change_cnt));
extern int fix_input_buffer __ARGS((char_u *buf, int len, int script));
extern int input_available __ARGS((void));
extern int do_map __ARGS((int maptype, char_u *arg, int mode, int abbrev));
extern int get_map_mode __ARGS((char_u **cmdp, int forceit));
extern void map_clear __ARGS((char_u *cmdp, char_u *arg, int forceit, int abbr));
extern void map_clear_int __ARGS((buf_T *buf, int mode, int local, int abbr));
extern int map_to_exists __ARGS((char_u *str, char_u *modechars, int abbr));
extern int map_to_exists_mode __ARGS((char_u *rhs, int mode, int abbr));
extern char_u *set_context_in_map_cmd __ARGS((expand_T *xp, char_u *cmd, char_u *arg, int forceit, int isabbrev, int isunmap, cmdidx_T cmdidx));
extern int ExpandMappings __ARGS((regmatch_T *regmatch, int *num_file, char_u ***file));
extern int check_abbr __ARGS((int c, char_u *ptr, int col, int mincol));
extern int makemap __ARGS((FILE *fd, buf_T *buf));
extern int put_escstr __ARGS((FILE *fd, char_u *strstart, int what));
extern void check_map_keycodes __ARGS((void));
extern char_u *check_map __ARGS((char_u *keys, int mode, int exact, int ign_mod, int abbr));
extern void init_mappings __ARGS((void));
extern void add_map __ARGS((char_u *map, int mode));
/* vim: set ft=c : */
