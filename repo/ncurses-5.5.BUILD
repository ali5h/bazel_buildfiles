package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

ALL_HDRS = glob(["**/*.h"])
EXTERNAL_HDRS = [
        ":c++/etip.h",
        "c++/cursesapp.h",
        "c++/cursesf.h",
        "c++/cursesm.h",
        "c++/cursesp.h",
        "c++/cursesw.h",
        "c++/cursslk.h",

        "panel/panel.h",
        "menu/eti.h",
        "menu/menu.h",

        "form/form.h",

        ":include/term.h",
        ":include/curses.h",
        ":include/ncurses.h",
        "include/unctrl.h",
        "include/termcap.h",
        "include/ncurses_dll.h",
        "include/term_entry.h",
        "include/tic.h",
                ]
pkg_outs(
            libs = [
                    "libpanel.so",
                    "libncurses.so",
                    "libform.so",
                    "libmenu.so",
                    "libncurses++.so",
                    ],
            hdrs = EXTERNAL_HDRS,
)

cc_binary(
linkshared = 1,
  name = "libncurses++.so",
  srcs = ALL_HDRS + [
        ":include/ncurses_def.h",
        ":include/curses.h",

        "c++/cursesf.cc",
        "c++/cursesm.cc",
        "c++/cursesp.cc",
        "c++/cursesw.cc",
        "c++/cursespad.cc",
        "c++/cursslk.cc",
        "c++/cursesapp.cc",
        "c++/cursesmain.cc",
        "c++/demo.cc",
        ],

  includes = ["include", "ncurses", "c++", "menu", "panel", "form"],
  copts = [
           "-DHAVE_CONFIG_H",
           "-D_GNU_SOURCE",
           "-DNDEBUG",
           "-fPIC",
          ],
  # hdrs = [
  #       ":c++/etip.h",
  #       "c++/cursesapp.h",
  #       "c++/cursesf.h",
  #       "c++/cursesm.h",
  #       "c++/cursesp.h",
  #       "c++/cursesw.h",
  #       "c++/cursslk.h",
  #       ],
)

genrule(
    name = "etip.h",
    srcs = ["c++/etip.h.in", "c++/edit_cfg.sh", "include/ncurses_cfg.h",],
    outs = ["c++/etip.h"],
    cmd = """
        cp $(location c++/etip.h.in) $@
        sh $(location c++/edit_cfg.sh) $(location include/ncurses_cfg.h) $@ &> /dev/null
          """,
)

cc_binary(
linkshared = 1,
  name = "libmenu.so",
  srcs = ALL_HDRS + [
            
        "gen_include_hdr",

        "menu/m_attribs.c",
        "menu/m_cursor.c",
        "menu/m_driver.c",
        "menu/m_format.c",
        "menu/m_global.c",
        "menu/m_hook.c",
        "menu/m_item_cur.c",
        "menu/m_item_nam.c",
        "menu/m_item_new.c",
        "menu/m_item_opt.c",
        "menu/m_item_top.c",
        "menu/m_item_use.c",
        "menu/m_item_val.c",
        "menu/m_item_vis.c",
        "menu/m_items.c",
        "menu/m_new.c",
        "menu/m_opts.c",
        "menu/m_pad.c",
        "menu/m_pattern.c",
        "menu/m_post.c",
        "menu/m_req_name.c",
        "menu/m_scale.c",
        "menu/m_spacing.c",
        "menu/m_sub.c",
        "menu/m_trace.c",
        "menu/m_userptr.c",
        "menu/m_win.c",
         ],
  copts = [
           "-DHAVE_CONFIG_H",
           "-D_GNU_SOURCE",
           "-DNDEBUG",
          ],
  includes = ["include", "ncurses", "menu"],
  # hdrs = ["menu/eti.h", "menu/menu.h"],

)

cc_binary(
linkshared = 1,
  name = "libform.so",
  srcs = ALL_HDRS + [
        ":include/ncurses_def.h",
        ":include/term.h",
        ":include/curses.h",

        "form/f_trace.c",
        "form/fld_arg.c",
        "form/fld_attr.c",
        "form/fld_current.c",
        "form/fld_def.c",
        "form/fld_dup.c",
        "form/fld_ftchoice.c",
        "form/fld_ftlink.c",
        "form/fld_info.c",
        "form/fld_just.c",
        "form/fld_link.c",
        "form/fld_max.c",
        "form/fld_move.c",
        "form/fld_newftyp.c",
        "form/fld_opts.c",
        "form/fld_pad.c",
        "form/fld_page.c",
        "form/fld_stat.c",
        "form/fld_type.c",
        "form/fld_user.c",
        "form/frm_cursor.c",
        "form/frm_data.c",
        "form/frm_def.c",
        "form/frm_driver.c",
        "form/frm_hook.c",
        "form/frm_opts.c",
        "form/frm_page.c",
        "form/frm_post.c",
        "form/frm_req_name.c",
        "form/frm_scale.c",
        "form/frm_sub.c",
        "form/frm_user.c",
        "form/frm_win.c",
        "form/fty_alnum.c",
        "form/fty_alpha.c",
        "form/fty_enum.c",
        "form/fty_int.c",
        "form/fty_ipv4.c",
        "form/fty_num.c",
        "form/fty_regex.c",

        ],
  copts = [
           "-DHAVE_CONFIG_H",
           "-D_GNU_SOURCE",
           "-DNDEBUG",
          ],
  includes = ["include", "ncurses", "menu"],
  # hdrs = ["form/form.h"],
)

cc_binary(
linkshared = 1,
  name = "libpanel.so",
  srcs = ALL_HDRS + [
        "panel/panel.c",
        "panel/p_above.c",
        "panel/p_below.c",
        "panel/p_bottom.c",
        "panel/p_delete.c",
        "panel/p_hide.c",
        "panel/p_hidden.c",
        "panel/p_move.c",
        "panel/p_new.c",
        "panel/p_replace.c",
        "panel/p_show.c",
        "panel/p_top.c",
        "panel/p_update.c",
        "panel/p_user.c",
        "panel/p_win.c",
        # "panel/panel.priv.h",
        # "ncurses/curses.priv.h",
        # "include/ncurses_cfg.h",
        # "include/ncurses_dll.h",
        # "include/nc_panel.h",
        # ":gen_include_hdr",
        # "include/unctrl.h",
        # "include/term_entry.h",
        # "include/nc_alloc.h",
        ],
  copts = ["-DHAVE_CONFIG_H"],
  includes = ["include", "ncurses"],
  # hdrs = ["panel/panel.h"],
)

genrule(
    name = "ncurses_def.h",
    srcs = ["include/ncurses_defs", "include/MKncurses_def.sh"],
    outs = ["include/ncurses_def.h"],
    cmd = "AWK=mawk sh $(location include/MKncurses_def.sh) $(location include/ncurses_defs) > $@",
)

genrule(
    name = "curses.h",
    srcs = ["include/Caps", "include/curses.head", "include/curses.tail", "include/MKkey_defs.sh"],
    outs = ["include/curses.h"],
    cmd = "cat $(location include/curses.head) > $@;" +
          "AWK=mawk sh $(location include/MKkey_defs.sh) $(location include/Caps) >> $@;" +
          'sh -c \'if test \\"chtype\\" = \\"cchar_t\\"; then cat curses.wide >> $@ ; fi\';' +
          "cat $(location include/curses.tail) >> $@;",
)

genrule(
    name = "term.h",
    srcs = ["include/Caps", "include/MKterm.h.awk", "include/edit_cfg.sh", "include/ncurses_cfg.h"],
    outs = ["include/term.h"],
    cmd = "mawk -f $(location include/MKterm.h.awk) $(location include/Caps) > $@;" +
          "sh $(location include/edit_cfg.sh) $(location include/ncurses_cfg.h) $@ &> /dev/null;",
)

genrule(
    name = "parametrized.h",
    srcs = ["include/Caps", "include/MKparametrized.sh"],
    outs = ["include/parametrized.h"],
    cmd = " AWK=mawk sh $(location include/MKparametrized.sh) $(location include/Caps) > $@",
)

genrule(
    name = "hashsize.h",
    srcs = ["include/Caps", "include/MKhashsize.sh"],
    outs = ["include/hashsize.h"],
    cmd = "sh $(location include/MKhashsize.sh) $(location include/Caps) > $@",
)

genrule(
    name = "init_keytry.h",
    srcs = [":ncurses/keys.list"],
    tools = [":make_keys"],
    outs = ["ncurses/init_keytry.h"],
    cmd = "$(location :make_keys) $(location :ncurses/keys.list) > $@",
)

genrule(
    name = "keys.list",
    srcs = ["ncurses/tinfo/MKkeys_list.sh", "include/Caps"],
    outs = ["ncurses/keys.list"],
    cmd = "AWK=mawk sh $(location ncurses/tinfo/MKkeys_list.sh) $(location include/Caps) | sort > $@",
)

genrule(
    name = "names_codes",
    srcs = ["ncurses/tinfo/MKnames.awk", "include/Caps"],
    outs = ["ncurses/names.c", "ncurses/codes.c"],
    cmd = """
          TMPDIR=$$(mktemp -d)
          cp $(location ncurses/tinfo/MKnames.awk) $(location include/Caps) $$TMPDIR/
          (cd $$TMPDIR &&\
          mawk -f MKnames.awk Caps &&\
          cat namehdr boolnames boolfnames numnames numfnames strnames strfnames nameftr > names_tmp &&\
          cat namehdr boolcodes numcodes strcodes codeftr > codes_tmp)
          cp $$TMPDIR/names_tmp $(location ncurses/names.c)
          cp $$TMPDIR/codes_tmp $(location ncurses/codes.c)
          rm -fr $$TMPDIR
          """,
)


cc_binary(
    name = "make_keys",
    srcs = ["ncurses/tinfo/make_keys.c",
            ":gen_include_hdr",
            "ncurses/curses.priv.h", 
            "include/ncurses_dll.h",
            "include/ncurses_cfg.h",
            "include/nc_panel.h",
            "include/unctrl.h",
            "include/term_entry.h",
            "include/nc_alloc.h",
            "include/tic.h",
        ],
    includes = ["ncurses", "include"],
    deps = [":names_c_inc"],
    copts = [
             "-DHAVE_CONFIG_H",
             "-D_GNU_SOURCE",
             "-DNDEBUG",
            ],
)

cc_library(
    name = "names_c_inc",
    hdrs = [":ncurses/names.c"],
) 
filegroup(
    name = "gen_include_hdr",
    srcs = [
        ":include/ncurses_def.h",
        ":include/curses.h",
        ":include/term.h",
        ":include/hashsize.h",
        ":include/parametrized.h",
    ]
)

filegroup(
    name = "gen_ncurses_hdr",
    srcs = [
        ":include/nomacros.h",
        ":ncurses/codes.c",
        ":ncurses/comp_captab.c",
        ":ncurses/expanded.c",
        ":ncurses/fallback.c",
        ":ncurses/init_keytry.h",
        ":ncurses/lib_gen.c",
        ":ncurses/lib_keyname.c",
        ":ncurses/names.c",
        ":ncurses/unctrl.c",
           ]
)

genrule(
    name = "nomacros.h",
    srcs = ["ncurses/base/MKlib_gen.sh", ":include/curses.h"],
    outs = ["include/nomacros.h"],
    # cmd = "sh $(location ncurses/base/MKlib_gen.sh) \"gcc -E -DHAVE_CONFIG_H -D_GNU_SOURCE -DNDEBUG\" \"mawk\" generated < $(location :include/curses.h) | fgrep undef  > $@",
    cmd = "echo > $@",
)

genrule(
    name = "lib_gen.c",
    srcs = ["ncurses/base/MKlib_gen.sh", ":include/curses.h"],
    outs = ["ncurses/lib_gen.c"],
    cmd = "sh $(location ncurses/base/MKlib_gen.sh) \"gcc -E -DHAVE_CONFIG_H -D_GNU_SOURCE -DNDEBUG\" \"mawk\" generated < $(location :include/curses.h) > $@",
)

genrule(
    name = "fallback.c",
    srcs = ["ncurses/tinfo/MKfallback.sh", "misc/terminfo.src"],
    outs = ["ncurses/fallback.c"],
    cmd = "sh $(location ncurses/tinfo/MKfallback.sh) /usr/share/terminfo $(location misc/terminfo.src) > $@",
)

genrule(
    name = "unctrl.c",
    srcs = ["ncurses/base/MKunctrl.awk"],
    outs = ["ncurses/unctrl.c"],
    cmd = "echo | mawk -f $(location ncurses/base/MKunctrl.awk) > $@",
)

genrule(
    name = "lib_keyname.c",
    srcs = [":ncurses/keys.list", "ncurses/base/MKkeyname.awk"],
    outs = ["ncurses/lib_keyname.c"],
    cmd = "mawk -f $(location ncurses/base/MKkeyname.awk) $(location ncurses/keys.list) > $@",
)

genrule(
    name = "expanded.c",
    srcs = ["ncurses/tty/MKexpanded.sh"],
    outs = ["ncurses/expanded.c"],
    cmd = "sh $(location ncurses/tty/MKexpanded.sh) \"gcc -E\" -DHAVE_CONFIG_H -D_GNU_SOURCE -DNDEBUG  > $@",
)

genrule(
    name = "comp_captab.c",
    srcs = ["ncurses/tinfo/MKcaptab.awk", ":include/hashsize.h", "include/Caps"],
    outs = ["ncurses/comp_captab.c"],
    tools = [":make_hash"],
    cmd = """
          TMPDIR=$$(mktemp -d)
          cp $(location :make_hash) $(location ncurses/tinfo/MKcaptab.awk) $(location include/hashsize.h) $(location include/Caps) $$TMPDIR/
          (cd $$TMPDIR && sh ./MKcaptab.awk mawk Caps > tmp_out)
          cp $$TMPDIR/tmp_out $(location ncurses/comp_captab.c)
          rm -fr $$TMPDIR
          """,
)

cc_binary(
    name = "make_hash",
    srcs = [ 
        "ncurses/tinfo/comp_hash.c",
        ":gen_include_hdr",
        "ncurses/curses.priv.h", 
        "include/ncurses_dll.h",
        "include/ncurses_cfg.h",
        "include/nc_panel.h",
        "include/unctrl.h",
        "include/term_entry.h",
        "include/nc_alloc.h",
        "include/tic.h",
        ],
    includes = ["ncurses", "include"],
    copts = [
             "-DMAIN_PROGRAM",
             "-DHAVE_CONFIG_H",
             "-D_GNU_SOURCE",
             "-DNDEBUG",
            ],
    deps = [":doalloc_c"],
)

cc_library(
    name = "doalloc_c",
    hdrs = ["ncurses/tinfo/doalloc.c"],
    includes = ["ncurses"],
)

cc_binary(
linkshared = 1,
  name = "ncurses",
  srcs = [
        "gen_ncurses_hdr",
        "gen_include_hdr",

        "ncurses/tty/hardscroll.c",
        "ncurses/tty/hashmap.c",
        "ncurses/tty/lib_mvcur.c",
        "ncurses/tty/lib_twait.c",
        "ncurses/tty/lib_tstp.c",
        "ncurses/tty/lib_vidattr.c",
        "ncurses/tty/tty_update.c",
        "ncurses/base/lib_addch.c",
        "ncurses/base/lib_addstr.c",
        "ncurses/base/lib_beep.c",
        "ncurses/base/lib_bkgd.c",
        "ncurses/base/lib_box.c",
        "ncurses/base/lib_chgat.c",
        "ncurses/base/lib_clear.c",
        "ncurses/base/lib_clearok.c",
        "ncurses/base/lib_clrbot.c",
        "ncurses/base/lib_clreol.c",
        "ncurses/base/lib_color.c",
        "ncurses/base/lib_colorset.c",
        "ncurses/base/lib_delch.c",
        "ncurses/base/lib_delwin.c",
        "ncurses/base/lib_echo.c",
        "ncurses/base/lib_endwin.c",
        "ncurses/base/lib_erase.c",
        "ncurses/base/lib_flash.c",
        "ncurses/base/lib_getch.c",
        "ncurses/base/lib_getstr.c",
        "ncurses/base/lib_hline.c",
        "ncurses/base/lib_immedok.c",
        "ncurses/base/lib_inchstr.c",
        "ncurses/base/lib_initscr.c",
        "ncurses/base/lib_insch.c",
        "ncurses/base/lib_insdel.c",
        "ncurses/base/lib_insnstr.c",
        "ncurses/base/lib_instr.c",
        "ncurses/base/lib_isendwin.c",
        "ncurses/base/lib_leaveok.c",
        "ncurses/base/lib_mouse.c",
        "ncurses/base/lib_move.c",
        "ncurses/base/lib_mvwin.c",
        "ncurses/base/lib_newterm.c",
        "ncurses/base/lib_newwin.c",
        "ncurses/base/lib_nl.c",
        "ncurses/base/lib_overlay.c",
        "ncurses/base/lib_pad.c",
        "ncurses/base/lib_printw.c",
        "ncurses/base/lib_redrawln.c",
        "ncurses/base/lib_refresh.c",
        "ncurses/base/lib_restart.c",
        "ncurses/base/lib_scanw.c",
        "ncurses/base/lib_screen.c",
        "ncurses/base/lib_scroll.c",
        "ncurses/base/lib_scrollok.c",
        "ncurses/base/lib_scrreg.c",
        "ncurses/base/lib_set_term.c",
        "ncurses/base/lib_slk.c",
        "ncurses/base/lib_slkatr_set.c",
        "ncurses/base/lib_slkatrof.c",
        "ncurses/base/lib_slkatron.c",
        "ncurses/base/lib_slkatrset.c",
        "ncurses/base/lib_slkattr.c",
        "ncurses/base/lib_slkclear.c",
        "ncurses/base/lib_slkcolor.c",
        "ncurses/base/lib_slkinit.c",
        "ncurses/base/lib_slklab.c",
        "ncurses/base/lib_slkrefr.c",
        "ncurses/base/lib_slkset.c",
        "ncurses/base/lib_slktouch.c",
        "ncurses/base/lib_touch.c",
        "ncurses/base/lib_ungetch.c",
        "ncurses/base/lib_vline.c",
        "ncurses/base/lib_wattroff.c",
        "ncurses/base/lib_wattron.c",
        "ncurses/base/lib_winch.c",
        "ncurses/base/define_key.c",
        "ncurses/base/key_defined.c",
        "ncurses/base/keybound.c",
        "ncurses/base/keyok.c",
        "ncurses/base/version.c",
        "ncurses/base/lib_window.c",
        "ncurses/base/nc_panel.c",
        "ncurses/base/safe_sprintf.c",
        "ncurses/base/memmove.c",
        "ncurses/base/vsscanf.c",
        "ncurses/base/tries.c",
        "ncurses/base/lib_freeall.c",
        "ncurses/base/wresize.c",
        "ncurses/base/lib_dft_fgbg.c",
        "ncurses/base/resizeterm.c",
        "ncurses/trace/varargs.c",
        "ncurses/trace/trace_xnames.c",
        "ncurses/trace/lib_trace.c",
        "ncurses/trace/lib_tracedmp.c",
        "ncurses/trace/lib_tracemse.c",
        "ncurses/trace/lib_traceatr.c",
        "ncurses/trace/lib_tracebits.c",
        "ncurses/trace/lib_tracechr.c",
        "ncurses/trace/trace_buf.c",
        "ncurses/trace/trace_tries.c",
        "ncurses/trace/visbuf.c",
        "ncurses/tinfo/access.c",
        "ncurses/tinfo/add_tries.c",
        "ncurses/tinfo/lib_print.c",
        "ncurses/tinfo/alloc_entry.c",
        "ncurses/tinfo/alloc_ttype.c",
        "ncurses/tinfo/captoinfo.c",
        "ncurses/tinfo/comp_error.c",
        "ncurses/tinfo/comp_expand.c",
        "ncurses/tinfo/comp_hash.c",
        "ncurses/tinfo/comp_parse.c",
        "ncurses/tinfo/comp_scan.c",
        "ncurses/tinfo/doalloc.c",
        "ncurses/tinfo/free_ttype.c",
        "ncurses/tinfo/getenv_num.c",
        "ncurses/tinfo/home_terminfo.c",
        "ncurses/tinfo/init_keytry.c",
        "ncurses/tinfo/lib_acs.c",
        "ncurses/tinfo/lib_baudrate.c",
        "ncurses/tinfo/lib_cur_term.c",
        "ncurses/tinfo/lib_data.c",
        "ncurses/tinfo/lib_has_cap.c",
        "ncurses/tinfo/lib_kernel.c",
        "ncurses/tinfo/lib_longname.c",
        "ncurses/tinfo/lib_napms.c",
        "ncurses/tinfo/lib_options.c",
        "ncurses/tinfo/lib_raw.c",
        "ncurses/tinfo/lib_setup.c",
        "ncurses/tinfo/lib_termcap.c",
        "ncurses/tinfo/lib_termname.c",
        "ncurses/tinfo/lib_tgoto.c",
        "ncurses/tinfo/lib_ti.c",
        "ncurses/tinfo/lib_tparm.c",
        "ncurses/tinfo/lib_tputs.c",
        "ncurses/tinfo/lib_ttyflags.c",
        "ncurses/tinfo/name_match.c",
        "ncurses/tinfo/parse_entry.c",
        "ncurses/tinfo/read_entry.c",
        "ncurses/tinfo/read_termcap.c",
        "ncurses/tinfo/setbuf.c",
        "ncurses/tinfo/strings.c",
        "ncurses/tinfo/trim_sgr0.c",
        "ncurses/tinfo/write_entry.c",

        "ncurses/curses.priv.h",
        "include/ncurses_dll.h",
        "include/ncurses_cfg.h",
        "include/nc_panel.h",
        "include/nc_alloc.h",
        "ncurses/SigAction.h",
        "ncurses/fifo_defs.h",

         ],
  includes = ["ncurses", "include", "ncurses/tinfo"],
  copts = ["-DTRACE"],
  hdrs = [
        ":include/term.h",
        ":include/curses.h",
        ":include/ncurses.h",
        "include/unctrl.h",
        "include/termcap.h",
        "include/ncurses_dll.h",
        "include/term_entry.h",
        "include/tic.h",
        "include/capdefaults.c",
         ],
)



genrule(
    name = "symlink_curses.h",
    srcs = [":include/curses.h"],
    outs = [":include/ncurses.h"],
    cmd = "cat $< > $@",
)
