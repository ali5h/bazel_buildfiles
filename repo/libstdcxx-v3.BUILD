package(default_visibility = ["//visibility:public"])


cc_library(
  name = "stdc++",
  srcs = [

	"libsupc++/array_type_info.cc",
	"libsupc++/atexit_arm.cc",
	"libsupc++/atexit_thread.cc",
	"libsupc++/bad_alloc.cc",
	"libsupc++/bad_array_length.cc",
	"libsupc++/bad_array_new.cc",
	"libsupc++/bad_cast.cc",
	"libsupc++/bad_typeid.cc",
	"libsupc++/class_type_info.cc",
	"libsupc++/del_op.cc",
	"libsupc++/del_opnt.cc",
	"libsupc++/del_opv.cc",
	"libsupc++/del_opvnt.cc",
	"libsupc++/dyncast.cc",
	"libsupc++/eh_alloc.cc",
	"libsupc++/eh_arm.cc",
	"libsupc++/eh_aux_runtime.cc",
	"libsupc++/eh_call.cc",
	"libsupc++/eh_catch.cc",
	"libsupc++/eh_exception.cc",
	"libsupc++/eh_globals.cc",
	"libsupc++/eh_personality.cc",
	"libsupc++/eh_ptr.cc",
	"libsupc++/eh_term_handler.cc",
	"libsupc++/eh_terminate.cc",
	"libsupc++/eh_tm.cc",
	"libsupc++/eh_throw.cc",
	"libsupc++/eh_type.cc",
	"libsupc++/eh_unex_handler.cc",
	"libsupc++/enum_type_info.cc",
	"libsupc++/function_type_info.cc",
	"libsupc++/fundamental_type_info.cc",
	"libsupc++/guard.cc",
	"libsupc++/guard_error.cc",
	"libsupc++/hash_bytes.cc",
	"libsupc++/nested_exception.cc",
	"libsupc++/new_handler.cc",
	"libsupc++/new_op.cc",
	"libsupc++/new_opnt.cc",
	"libsupc++/new_opv.cc",
	"libsupc++/new_opvnt.cc",
	"libsupc++/pbase_type_info.cc",
	"libsupc++/pmem_type_info.cc",
	"libsupc++/pointer_type_info.cc",
	"libsupc++/pure.cc",
	"libsupc++/si_class_type_info.cc",
	"libsupc++/tinfo.cc",
	"libsupc++/tinfo2.cc",
	"libsupc++/vec.cc",
	"libsupc++/vmi_class_type_info.cc",
	"libsupc++/vterminate.cc",

	"libstdc++/vtv_stubs.cc",
	"libstdc++/cp-demangle.c",

#cxx98
    "src/c++98/compatibility-ldbl.cc",
    "src/c++98/compatibility.cc",
	"src/c++98/compatibility-debug_list.cc",
	"src/c++98/compatibility-debug_list-2.cc",
	"src/c++98/bitmap_allocator.cc",
	"src/c++98/pool_allocator.cc",
	"src/c++98/mt_allocator.cc",
	"src/c++98/codecvt.cc",
	"src/c++98/complex_io.cc",
	"src/c++98/ctype.cc",
	"src/c++98/globals_io.cc",
	"src/c++98/hash_tr1.cc",
	"src/c++98/hashtable_tr1.cc",
	"src/c++98/ios.cc",
	"src/c++98/ios_failure.cc",
	"src/c++98/ios_init.cc",
	"src/c++98/ios_locale.cc",
	"src/c++98/list.cc",
	"src/c++98/list-aux.cc",
	"src/c++98/list-aux-2.cc",
	"src/c++98/list_associated.cc",
	"src/c++98/list_associated-2.cc",
	"src/c++98/locale.cc",
	"src/c++98/locale_init.cc",
	"src/c++98/locale_facets.cc",
	"src/c++98/localename.cc",
	"src/c++98/math_stubs_float.cc",
	"src/c++98/math_stubs_long_double.cc",
	"src/c++98/stdexcept.cc",
	"src/c++98/strstream.cc",
	"src/c++98/tree.cc",
	"src/c++98/istream.cc",
	"src/c++98/streambuf.cc",
	"src/c++98/valarray.cc",
	"src/c++98/atomicity.cc",
	"src/c++98/codecvt_members.cc",
	"src/c++98/collate_members.cc",
	"src/c++98/ctype_configure_char.cc",
	"src/c++98/ctype_members.cc",
	"src/c++98/messages_members.cc",
	"src/c++98/monetary_members.cc",
	"src/c++98/numeric_members.cc",
	"src/c++98/time_members.cc",
	"src/c++98/basic_file.cc",
    "src/c++98/c++locale.cc",
    "src/c++98/parallel_settings.cc",
	"src/c++98/allocator-inst.cc",
	"src/c++98/concept-inst.cc",
	"src/c++98/ext-inst.cc",
	"src/c++98/ios-inst.cc",
	"src/c++98/iostream-inst.cc",
	"src/c++98/istream-inst.cc",
	"src/c++98/locale-inst.cc",
	"src/c++98/misc-inst.cc",
	"src/c++98/ostream-inst.cc",
	"src/c++98/sstream-inst.cc",
	"src/c++98/streambuf-inst.cc",
	"src/c++98/wlocale-inst.cc",

# cxx11
	"src/c++11/compatibility-c++0x.cc",
	"src/c++11/compatibility-atomic-c++0x.cc",
	"src/c++11/compatibility-thread-c++0x.cc",
	"src/c++11/compatibility-chrono.cc",
	"src/c++11/compatibility-condvar.cc",
	"src/c++11/chrono.cc",
	"src/c++11/condition_variable.cc",
	"src/c++11/debug.cc",
	"src/c++11/functexcept.cc",
	"src/c++11/functional.cc",
	"src/c++11/future.cc",
	"src/c++11/hash_c++0x.cc",
	"src/c++11/hashtable_c++0x.cc",
	"src/c++11/limits.cc",
	"src/c++11/mutex.cc",
	"src/c++11/placeholders.cc",
	"src/c++11/random.cc",
	"src/c++11/regex.cc",
	"src/c++11/shared_ptr.cc",
	"src/c++11/snprintf_lite.cc",
	"src/c++11/system_error.cc",
	"src/c++11/thread.cc",
	"src/c++11/fstream-inst.cc",
	"src/c++11/string-inst.cc",
	"src/c++11/wstring-inst.cc",

        ],
  hdrs = [
        ],
  # includes = ["libltdl/"],
  copts = [
    "-D_GLIBCXX_SHARED",
    "-DIN_GLIBCPP_V3",
    "-D_GLIBCXX_CONCEPT_CHECKS",
    "-D_GLIBCXX_PARALLEL",
  ],
)
