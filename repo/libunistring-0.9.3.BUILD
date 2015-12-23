package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS = [
]

ALL_HDRS = pkg_outs(
        libs = ["libunistring.so"],
        hdrs = EXTERNAL_HDRS,
        )


cc_binary(
    linkshared = 1,
    name = "libunistring.so",
    srcs = [
    
                "lib/isnanl.c",
                "lib/c-ctype.c",
                "lib/c-strcasecmp.c",
                "lib/c-strncasecmp.c",
                "lib/fseterr.c",
                "lib/localcharset.c",
                "lib/localename.c",
                "lib/glthread/lock.c",
                "lib/malloca.c",
                "lib/mbchar.c",
                "lib/mbsnlen.c",
                "lib/memcmp2.c",
                "lib/memxfrm.c",
                "lib/printf-frexp.c",
                "lib/printf-frexpl.c",
                "lib/striconveh.c",
                "lib/striconveha.c",
                "lib/glthread/threadlib.c",
                "lib/unicase/cased.c",
                "lib/unicase/empty-prefix-context.c",
                "lib/unicase/empty-suffix-context.c",
                "lib/unicase/ignorable.c",
                "lib/unicase/locale-language.c",
                "lib/unicase/special-casing.c",
                "lib/unicase/tocasefold.c",
                "lib/unicase/tolower.c",
                "lib/unicase/totitle.c",
                "lib/unicase/toupper.c",
                "lib/unicase/u16-casecmp.c",
                "lib/unicase/u16-casecoll.c",
                "lib/unicase/u16-casefold.c",
                "lib/unicase/u16-casemap.c",
                "lib/unicase/u16-casexfrm.c",
                "lib/unicase/u16-ct-casefold.c",
                "lib/unicase/u16-ct-tolower.c",
                "lib/unicase/u16-ct-totitle.c",
                "lib/unicase/u16-ct-toupper.c",
                "lib/unicase/u16-is-cased.c",
                "lib/unicase/u16-is-casefolded.c",
                "lib/unicase/u16-is-invariant.c",
                "lib/unicase/u16-is-lowercase.c",
                "lib/unicase/u16-is-titlecase.c",
                "lib/unicase/u16-is-uppercase.c",
                "lib/unicase/u16-tolower.c",
                "lib/unicase/u16-totitle.c",
                "lib/unicase/u16-toupper.c",
                "lib/unicase/u32-casecmp.c",
                "lib/unicase/u32-casecoll.c",
                "lib/unicase/u32-casefold.c",
                "lib/unicase/u32-casemap.c",
                "lib/unicase/u32-casexfrm.c",
                "lib/unicase/u32-ct-casefold.c",
                "lib/unicase/u32-ct-tolower.c",
                "lib/unicase/u32-ct-totitle.c",
                "lib/unicase/u32-ct-toupper.c",
                "lib/unicase/u32-is-cased.c",
                "lib/unicase/u32-is-casefolded.c",
                "lib/unicase/u32-is-invariant.c",
                "lib/unicase/u32-is-lowercase.c",
                "lib/unicase/u32-is-titlecase.c",
                "lib/unicase/u32-is-uppercase.c",
                "lib/unicase/u32-tolower.c",
                "lib/unicase/u32-totitle.c",
                "lib/unicase/u32-toupper.c",
                "lib/unicase/u8-casecmp.c",
                "lib/unicase/u8-casecoll.c",
                "lib/unicase/u8-casefold.c",
                "lib/unicase/u8-casemap.c",
                "lib/unicase/u8-casexfrm.c",
                "lib/unicase/u8-ct-casefold.c",
                "lib/unicase/u8-ct-tolower.c",
                "lib/unicase/u8-ct-totitle.c",
                "lib/unicase/u8-ct-toupper.c",
                "lib/unicase/u8-is-cased.c",
                "lib/unicase/u8-is-casefolded.c",
                "lib/unicase/u8-is-invariant.c",
                "lib/unicase/u8-is-lowercase.c",
                "lib/unicase/u8-is-titlecase.c",
                "lib/unicase/u8-is-uppercase.c",
                "lib/unicase/u8-tolower.c",
                "lib/unicase/u8-totitle.c",
                "lib/unicase/u8-toupper.c",
                "lib/unicase/ulc-casecmp.c",
                "lib/unicase/ulc-casecoll.c",
                "lib/unicase/ulc-casexfrm.c",
                "lib/uniconv/u16-conv-from-enc.c",
                "lib/uniconv/u16-conv-to-enc.c",
                "lib/uniconv/u16-strconv-from-enc.c",
                "lib/uniconv/u16-strconv-from-locale.c",
                "lib/uniconv/u16-strconv-to-enc.c",
                "lib/uniconv/u16-strconv-to-locale.c",
                "lib/uniconv/u32-conv-from-enc.c",
                "lib/uniconv/u32-conv-to-enc.c",
                "lib/uniconv/u32-strconv-from-enc.c",
                "lib/uniconv/u32-strconv-from-locale.c",
                "lib/uniconv/u32-strconv-to-enc.c",
                "lib/uniconv/u32-strconv-to-locale.c",
                "lib/uniconv/u8-conv-from-enc.c",
                "lib/uniconv/u8-conv-to-enc.c",
                "lib/uniconv/u8-strconv-from-enc.c",
                "lib/uniconv/u8-strconv-from-locale.c",
                "lib/uniconv/u8-strconv-to-enc.c",
                "lib/uniconv/u8-strconv-to-locale.c",
                "lib/unictype/bidi_byname.c",
                "lib/unictype/bidi_name.c",
                "lib/unictype/bidi_of.c",
                "lib/unictype/bidi_test.c",
                "lib/unictype/blocks.c",
                "lib/unictype/block_test.c",
                "lib/unictype/categ_C.c",
                "lib/unictype/categ_Cc.c",
                "lib/unictype/categ_Cf.c",
                "lib/unictype/categ_Cn.c",
                "lib/unictype/categ_Co.c",
                "lib/unictype/categ_Cs.c",
                "lib/unictype/categ_L.c",
                "lib/unictype/categ_Ll.c",
                "lib/unictype/categ_Lm.c",
                "lib/unictype/categ_Lo.c",
                "lib/unictype/categ_Lt.c",
                "lib/unictype/categ_Lu.c",
                "lib/unictype/categ_M.c",
                "lib/unictype/categ_Mc.c",
                "lib/unictype/categ_Me.c",
                "lib/unictype/categ_Mn.c",
                "lib/unictype/categ_N.c",
                "lib/unictype/categ_Nd.c",
                "lib/unictype/categ_Nl.c",
                "lib/unictype/categ_No.c",
                "lib/unictype/categ_P.c",
                "lib/unictype/categ_Pc.c",
                "lib/unictype/categ_Pd.c",
                "lib/unictype/categ_Pe.c",
                "lib/unictype/categ_Pf.c",
                "lib/unictype/categ_Pi.c",
                "lib/unictype/categ_Po.c",
                "lib/unictype/categ_Ps.c",
                "lib/unictype/categ_S.c",
                "lib/unictype/categ_Sc.c",
                "lib/unictype/categ_Sk.c",
                "lib/unictype/categ_Sm.c",
                "lib/unictype/categ_So.c",
                "lib/unictype/categ_Z.c",
                "lib/unictype/categ_Zl.c",
                "lib/unictype/categ_Zp.c",
                "lib/unictype/categ_Zs.c",
                "lib/unictype/categ_and.c",
                "lib/unictype/categ_and_not.c",
                "lib/unictype/categ_byname.c",
                "lib/unictype/categ_name.c",
                "lib/unictype/categ_none.c",
                "lib/unictype/categ_of.c",
                "lib/unictype/categ_or.c",
                "lib/unictype/categ_test.c",
                "lib/unictype/combining.c",
                "lib/unictype/ctype_alnum.c",
                "lib/unictype/ctype_alpha.c",
                "lib/unictype/ctype_blank.c",
                "lib/unictype/ctype_cntrl.c",
                "lib/unictype/ctype_digit.c",
                "lib/unictype/ctype_graph.c",
                "lib/unictype/ctype_lower.c",
                "lib/unictype/ctype_print.c",
                "lib/unictype/ctype_punct.c",
                "lib/unictype/ctype_space.c",
                "lib/unictype/ctype_upper.c",
                "lib/unictype/ctype_xdigit.c",
                "lib/unictype/decdigit.c",
                "lib/unictype/digit.c",
                "lib/unictype/mirror.c",
                "lib/unictype/numeric.c",
                "lib/unictype/pr_alphabetic.c",
                "lib/unictype/pr_ascii_hex_digit.c",
                "lib/unictype/pr_bidi_arabic_digit.c",
                "lib/unictype/pr_bidi_arabic_right_to_left.c",
                "lib/unictype/pr_bidi_block_separator.c",
                "lib/unictype/pr_bidi_boundary_neutral.c",
                "lib/unictype/pr_bidi_common_separator.c",
                "lib/unictype/pr_bidi_control.c",
                "lib/unictype/pr_bidi_embedding_or_override.c",
                "lib/unictype/pr_bidi_eur_num_separator.c",
                "lib/unictype/pr_bidi_eur_num_terminator.c",
                "lib/unictype/pr_bidi_european_digit.c",
                "lib/unictype/pr_bidi_hebrew_right_to_left.c",
                "lib/unictype/pr_bidi_left_to_right.c",
                "lib/unictype/pr_bidi_non_spacing_mark.c",
                "lib/unictype/pr_bidi_other_neutral.c",
                "lib/unictype/pr_bidi_pdf.c",
                "lib/unictype/pr_bidi_segment_separator.c",
                "lib/unictype/pr_bidi_whitespace.c",
                "lib/unictype/pr_byname.c",
                "lib/unictype/pr_combining.c",
                "lib/unictype/pr_composite.c",
                "lib/unictype/pr_currency_symbol.c",
                "lib/unictype/pr_dash.c",
                "lib/unictype/pr_decimal_digit.c",
                "lib/unictype/pr_default_ignorable_code_point.c",
                "lib/unictype/pr_deprecated.c",
                "lib/unictype/pr_diacritic.c",
                "lib/unictype/pr_extender.c",
                "lib/unictype/pr_format_control.c",
                "lib/unictype/pr_grapheme_base.c",
                "lib/unictype/pr_grapheme_extend.c",
                "lib/unictype/pr_grapheme_link.c",
                "lib/unictype/pr_hex_digit.c",
                "lib/unictype/pr_hyphen.c",
                "lib/unictype/pr_id_continue.c",
                "lib/unictype/pr_id_start.c",
                "lib/unictype/pr_ideographic.c",
                "lib/unictype/pr_ids_binary_operator.c",
                "lib/unictype/pr_ids_trinary_operator.c",
                "lib/unictype/pr_ignorable_control.c",
                "lib/unictype/pr_iso_control.c",
                "lib/unictype/pr_join_control.c",
                "lib/unictype/pr_left_of_pair.c",
                "lib/unictype/pr_line_separator.c",
                "lib/unictype/pr_logical_order_exception.c",
                "lib/unictype/pr_lowercase.c",
                "lib/unictype/pr_math.c",
                "lib/unictype/pr_non_break.c",
                "lib/unictype/pr_not_a_character.c",
                "lib/unictype/pr_numeric.c",
                "lib/unictype/pr_other_alphabetic.c",
                "lib/unictype/pr_other_default_ignorable_code_point.c",
                "lib/unictype/pr_other_grapheme_extend.c",
                "lib/unictype/pr_other_id_continue.c",
                "lib/unictype/pr_other_id_start.c",
                "lib/unictype/pr_other_lowercase.c",
                "lib/unictype/pr_other_math.c",
                "lib/unictype/pr_other_uppercase.c",
                "lib/unictype/pr_paired_punctuation.c",
                "lib/unictype/pr_paragraph_separator.c",
                "lib/unictype/pr_pattern_syntax.c",
                "lib/unictype/pr_pattern_white_space.c",
                "lib/unictype/pr_private_use.c",
                "lib/unictype/pr_punctuation.c",
                "lib/unictype/pr_quotation_mark.c",
                "lib/unictype/pr_radical.c",
                "lib/unictype/pr_sentence_terminal.c",
                "lib/unictype/pr_soft_dotted.c",
                "lib/unictype/pr_space.c",
                "lib/unictype/pr_terminal_punctuation.c",
                "lib/unictype/pr_test.c",
                "lib/unictype/pr_titlecase.c",
                "lib/unictype/pr_unassigned_code_value.c",
                "lib/unictype/pr_unified_ideograph.c",
                "lib/unictype/pr_uppercase.c",
                "lib/unictype/pr_variation_selector.c",
                "lib/unictype/pr_white_space.c",
                "lib/unictype/pr_xid_continue.c",
                "lib/unictype/pr_xid_start.c",
                "lib/unictype/pr_zero_width.c",
                "lib/unictype/scripts.c",
                "lib/unictype/sy_c_ident.c",
                "lib/unictype/sy_c_whitespace.c",
                "lib/unictype/sy_java_ident.c",
                "lib/unictype/sy_java_whitespace.c",
                "lib/unilbrk/lbrktables.c",
                "lib/unilbrk/u16-possible-linebreaks.c",
                "lib/unilbrk/u16-width-linebreaks.c",
                "lib/unilbrk/u32-possible-linebreaks.c",
                "lib/unilbrk/u32-width-linebreaks.c",
                "lib/unilbrk/u8-possible-linebreaks.c",
                "lib/unilbrk/u8-width-linebreaks.c",
                "lib/unilbrk/ulc-common.c",
                "lib/unilbrk/ulc-possible-linebreaks.c",
                "lib/unilbrk/ulc-width-linebreaks.c",
                "lib/uniname/uniname.c",
                "lib/uninorm/canonical-decomposition.c",
                "lib/uninorm/compat-decomposition.c",
                "lib/uninorm/composition.c",
                "lib/uninorm/decompose-internal.c",
                "lib/uninorm/decomposing-form.c",
                "lib/uninorm/decomposition.c",
                "lib/uninorm/decomposition-table.c",
                "lib/uninorm/uninorm-filter.c",
                "lib/uninorm/nfc.c",
                "lib/uninorm/nfd.c",
                "lib/uninorm/nfkc.c",
                "lib/uninorm/nfkd.c",
                "lib/uninorm/u16-normalize.c",
                "lib/uninorm/u16-normcmp.c",
                "lib/uninorm/u16-normcoll.c",
                "lib/uninorm/u16-normxfrm.c",
                "lib/uninorm/u32-normalize.c",
                "lib/uninorm/u32-normcmp.c",
                "lib/uninorm/u32-normcoll.c",
                "lib/uninorm/u32-normxfrm.c",
                "lib/uninorm/u8-normalize.c",
                "lib/uninorm/u8-normcmp.c",
                "lib/uninorm/u8-normcoll.c",
                "lib/uninorm/u8-normxfrm.c",
                "lib/unistdio/u-printf-args.c",
                "lib/unistdio/u16-asnprintf.c",
                "lib/unistdio/u16-asprintf.c",
                "lib/unistdio/u16-printf-parse.c",
                "lib/unistdio/u16-snprintf.c",
                "lib/unistdio/u16-sprintf.c",
                "lib/unistdio/u16-u16-asnprintf.c",
                "lib/unistdio/u16-u16-asprintf.c",
                "lib/unistdio/u16-u16-snprintf.c",
                "lib/unistdio/u16-u16-sprintf.c",
                "lib/unistdio/u16-u16-vasnprintf.c",
                "lib/unistdio/u16-u16-vasprintf.c",
                "lib/unistdio/u16-u16-vsnprintf.c",
                "lib/unistdio/u16-u16-vsprintf.c",
                "lib/unistdio/u16-vasnprintf.c",
                "lib/unistdio/u16-vasprintf.c",
                "lib/unistdio/u16-vsnprintf.c",
                "lib/unistdio/u16-vsprintf.c",
                "lib/unistdio/u32-asnprintf.c",
                "lib/unistdio/u32-asprintf.c",
                "lib/unistdio/u32-printf-parse.c",
                "lib/unistdio/u32-snprintf.c",
                "lib/unistdio/u32-sprintf.c",
                "lib/unistdio/u32-u32-asnprintf.c",
                "lib/unistdio/u32-u32-asprintf.c",
                "lib/unistdio/u32-u32-snprintf.c",
                "lib/unistdio/u32-u32-sprintf.c",
                "lib/unistdio/u32-u32-vasnprintf.c",
                "lib/unistdio/u32-u32-vasprintf.c",
                "lib/unistdio/u32-u32-vsnprintf.c",
                "lib/unistdio/u32-u32-vsprintf.c",
                "lib/unistdio/u32-vasnprintf.c",
                "lib/unistdio/u32-vasprintf.c",
                "lib/unistdio/u32-vsnprintf.c",
                "lib/unistdio/u32-vsprintf.c",
                "lib/unistdio/u8-asnprintf.c",
                "lib/unistdio/u8-asprintf.c",
                "lib/unistdio/u8-printf-parse.c",
                "lib/unistdio/u8-snprintf.c",
                "lib/unistdio/u8-sprintf.c",
                "lib/unistdio/u8-u8-asnprintf.c",
                "lib/unistdio/u8-u8-asprintf.c",
                "lib/unistdio/u8-u8-snprintf.c",
                "lib/unistdio/u8-u8-sprintf.c",
                "lib/unistdio/u8-u8-vasnprintf.c",
                "lib/unistdio/u8-u8-vasprintf.c",
                "lib/unistdio/u8-u8-vsnprintf.c",
                "lib/unistdio/u8-u8-vsprintf.c",
                "lib/unistdio/u8-vasnprintf.c",
                "lib/unistdio/u8-vasprintf.c",
                "lib/unistdio/u8-vsnprintf.c",
                "lib/unistdio/u8-vsprintf.c",
                "lib/unistdio/ulc-asnprintf.c",
                "lib/unistdio/ulc-asprintf.c",
                "lib/unistdio/ulc-fprintf.c",
                "lib/unistdio/ulc-printf-parse.c",
                "lib/unistdio/ulc-snprintf.c",
                "lib/unistdio/ulc-sprintf.c",
                "lib/unistdio/ulc-vasnprintf.c",
                "lib/unistdio/ulc-vasprintf.c",
                "lib/unistdio/ulc-vfprintf.c",
                "lib/unistdio/ulc-vsnprintf.c",
                "lib/unistdio/ulc-vsprintf.c",
                "lib/unistr/u16-check.c",
                "lib/unistr/u16-chr.c",
                "lib/unistr/u16-cmp.c",
                "lib/unistr/u16-cmp2.c",
                "lib/unistr/u16-cpy.c",
                "lib/unistr/u16-cpy-alloc.c",
                "lib/unistr/u16-endswith.c",
                "lib/unistr/u16-mblen.c",
                "lib/unistr/u16-mbsnlen.c",
                "lib/unistr/u16-mbtouc.c",
                "lib/unistr/u16-mbtouc-aux.c",
                "lib/unistr/u16-mbtouc-unsafe.c",
                "lib/unistr/u16-mbtouc-unsafe-aux.c",
                "lib/unistr/u16-mbtoucr.c",
                "lib/unistr/u16-move.c",
                "lib/unistr/u16-next.c",
                "lib/unistr/u16-prev.c",
                "lib/unistr/u16-set.c",
                "lib/unistr/u16-startswith.c",
                "lib/unistr/u16-stpcpy.c",
                "lib/unistr/u16-stpncpy.c",
                "lib/unistr/u16-strcat.c",
                "lib/unistr/u16-strchr.c",
                "lib/unistr/u16-strcmp.c",
                "lib/unistr/u16-strcoll.c",
                "lib/unistr/u16-strcpy.c",
                "lib/unistr/u16-strcspn.c",
                "lib/unistr/u16-strdup.c",
                "lib/unistr/u16-strlen.c",
                "lib/unistr/u16-strmblen.c",
                "lib/unistr/u16-strmbtouc.c",
                "lib/unistr/u16-strncat.c",
                "lib/unistr/u16-strncmp.c",
                "lib/unistr/u16-strncpy.c",
                "lib/unistr/u16-strnlen.c",
                "lib/unistr/u16-strpbrk.c",
                "lib/unistr/u16-strrchr.c",
                "lib/unistr/u16-strspn.c",
                "lib/unistr/u16-strstr.c",
                "lib/unistr/u16-strtok.c",
                "lib/unistr/u16-to-u32.c",
                "lib/unistr/u16-to-u8.c",
                "lib/unistr/u16-uctomb.c",
                "lib/unistr/u16-uctomb-aux.c",
                "lib/unistr/u32-check.c",
                "lib/unistr/u32-chr.c",
                "lib/unistr/u32-cmp.c",
                "lib/unistr/u32-cmp2.c",
                "lib/unistr/u32-cpy.c",
                "lib/unistr/u32-cpy-alloc.c",
                "lib/unistr/u32-endswith.c",
                "lib/unistr/u32-mblen.c",
                "lib/unistr/u32-mbsnlen.c",
                "lib/unistr/u32-mbtouc.c",
                "lib/unistr/u32-mbtouc-unsafe.c",
                "lib/unistr/u32-mbtoucr.c",
                "lib/unistr/u32-move.c",
                "lib/unistr/u32-next.c",
                "lib/unistr/u32-prev.c",
                "lib/unistr/u32-set.c",
                "lib/unistr/u32-startswith.c",
                "lib/unistr/u32-stpcpy.c",
                "lib/unistr/u32-stpncpy.c",
                "lib/unistr/u32-strcat.c",
                "lib/unistr/u32-strchr.c",
                "lib/unistr/u32-strcmp.c",
                "lib/unistr/u32-strcoll.c",
                "lib/unistr/u32-strcpy.c",
                "lib/unistr/u32-strcspn.c",
                "lib/unistr/u32-strdup.c",
                "lib/unistr/u32-strlen.c",
                "lib/unistr/u32-strmblen.c",
                "lib/unistr/u32-strmbtouc.c",
                "lib/unistr/u32-strncat.c",
                "lib/unistr/u32-strncmp.c",
                "lib/unistr/u32-strncpy.c",
                "lib/unistr/u32-strnlen.c",
                "lib/unistr/u32-strpbrk.c",
                "lib/unistr/u32-strrchr.c",
                "lib/unistr/u32-strspn.c",
                "lib/unistr/u32-strstr.c",
                "lib/unistr/u32-strtok.c",
                "lib/unistr/u32-to-u16.c",
                "lib/unistr/u32-to-u8.c",
                "lib/unistr/u32-uctomb.c",
                "lib/unistr/u8-check.c",
                "lib/unistr/u8-chr.c",
                "lib/unistr/u8-cmp.c",
                "lib/unistr/u8-cmp2.c",
                "lib/unistr/u8-cpy.c",
                "lib/unistr/u8-cpy-alloc.c",
                "lib/unistr/u8-endswith.c",
                "lib/unistr/u8-mblen.c",
                "lib/unistr/u8-mbsnlen.c",
                "lib/unistr/u8-mbtouc.c",
                "lib/unistr/u8-mbtouc-aux.c",
                "lib/unistr/u8-mbtouc-unsafe.c",
                "lib/unistr/u8-mbtouc-unsafe-aux.c",
                "lib/unistr/u8-mbtoucr.c",
                "lib/unistr/u8-move.c",
                "lib/unistr/u8-next.c",
                "lib/unistr/u8-prev.c",
                "lib/unistr/u8-set.c",
                "lib/unistr/u8-startswith.c",
                "lib/unistr/u8-stpcpy.c",
                "lib/unistr/u8-stpncpy.c",
                "lib/unistr/u8-strcat.c",
                "lib/unistr/u8-strchr.c",
                "lib/unistr/u8-strcmp.c",
                "lib/unistr/u8-strcoll.c",
                "lib/unistr/u8-strcpy.c",
                "lib/unistr/u8-strcspn.c",
                "lib/unistr/u8-strdup.c",
                "lib/unistr/u8-strlen.c",
                "lib/unistr/u8-strmblen.c",
                "lib/unistr/u8-strmbtouc.c",
                "lib/unistr/u8-strncat.c",
                "lib/unistr/u8-strncmp.c",
                "lib/unistr/u8-strncpy.c",
                "lib/unistr/u8-strnlen.c",
                "lib/unistr/u8-strpbrk.c",
                "lib/unistr/u8-strrchr.c",
                "lib/unistr/u8-strspn.c",
                "lib/unistr/u8-strstr.c",
                "lib/unistr/u8-strtok.c",
                "lib/unistr/u8-to-u16.c",
                "lib/unistr/u8-to-u32.c",
                "lib/unistr/u8-uctomb.c",
                "lib/unistr/u8-uctomb-aux.c",
                "lib/uniwbrk/wbrktable.c",
                "lib/uniwbrk/u16-wordbreaks.c",
                "lib/uniwbrk/u32-wordbreaks.c",
                "lib/uniwbrk/u8-wordbreaks.c",
                "lib/uniwbrk/ulc-wordbreaks.c",
                "lib/uniwbrk/wordbreak-property.c",
                "lib/uniwidth/u16-strwidth.c",
                "lib/uniwidth/u16-width.c",
                "lib/uniwidth/u32-strwidth.c",
                "lib/uniwidth/u32-width.c",
                "lib/uniwidth/u8-strwidth.c",
                "lib/uniwidth/u8-width.c",
                "lib/uniwidth/width.c",
                "lib/version.c",

    ] + ALL_HDRS,
    includes = [],
    copts = [
                "-DHAVE_CONFIG_H",
                "-DNO_XMALLOC",
    ],
)

