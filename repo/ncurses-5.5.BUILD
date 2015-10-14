package(default_visibility = ["//visibility:public"])

COPT_MACRO = ["-DHAVE_CONFIG_H"]

filegroup(
  name = "libncurses",
  srcs = [":panel", ":ncurses", ":curses", "form", "menu"],
)

cc_library(
  name = "panel",
  srcs = [
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
        "include/ncurses_cfg.h",
        ":include/ncurses_def.h",
        ":include/curses.h",
        ":include/term.h",
        ],
  copts = COPT_MACRO,
  includes = ["include", "ncurses"],
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
          "sh $(location include/edit_cfg.sh) $(location include/ncurses_cfg.h) $@;",
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
    tools = ["make_keys"],
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
    name = "names.c",
    srcs = ["ncurses/tinfo/MKnames.awk", "include/Caps"],
    outs = ["ncurses/names.c"],
    cmd = """
          TMPDIR=$$(mktemp -d)
          cp $(location ncurses/tinfo/MKnames.awk) $$TMPDIR/
          (cd $$TMPDIR && mawk -f MKnames.awk $(location include/Caps) &&\
          cat namehdr boolnames boolfnames numnames numfnames strnames strfnames nameftr >$@) 
          """,
)

cc_binary(
    name = "make_keys",
    srcs = [":ncurses/names.c", "ncurses/tinfo/make_keys.c"],
)

cc_library(
  name = "ncurses",
  srcs = [

        # ":include/nomacros.h",
        # ":ncurses/codes.c",
        # ":ncurses/comp_captab.c",
        # ":ncurses/expanded.c",
        # ":ncurses/fallback.c",
        # ":ncurses/init_keytry.h",
        # ":ncurses/lib_gen.c",
        # ":ncurses/lib_keyname.c",
        # ":ncurses/link_test.c",
        # ":ncurses/names.c",
        # ":ncurses/unctrl.c",

        ":include/ncurses_def.h",
        ":include/curses.h",
        ":include/term.h",
        ":include/hashsize.h",

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

         ],
  includes = ["ncurses", "include", "ncurses/tinfo"],
  copts = ["-DTRACE"],
)

cc_library(
  name = "pam_misc",
  srcs = [
          "libpam_misc/help_env.c",
          "libpam_misc/misc_conv.c",
          "config.h",
         ],
  copts = ["-Wno-address"],
  includes = [".", "libpamc/include", "libpam/include", "libpam_misc/include"],
)
