licenses(["notice"])

cc_library(
  name = "algorithm",
  visibility = ["//visibility:public"],
  includes = [
    "libs/algorithm/include",
  ],
  hdrs = glob([
    "libs/algorithm/include/boost/*.h",
  ]),
  srcs = [
  ],
  deps = [
    ":function",
    ":range",
  ]
)

cc_library(
  name = "assert",
  visibility = ["//visibility:public"],
  includes = [
    "libs/assert/include",
  ],
  hdrs = glob([
    "libs/assert/include/boost/*.h",
  ]),
  srcs = [
  ],
)

cc_library(
  name = "bind",
  visibility = ["//visibility:public"],
  includes = [
    "libs/bind/include",
  ],
  hdrs = glob([
    "libs/bind/include/boost/*.h",
  ]),
  srcs = [
  ],
)

cc_library(
  name = "concept_check",
  visibility = ["//visibility:public"],
  includes = [
    "libs/concept_check/include",
  ],
  hdrs = glob([
    "libs/concept_check/include/boost/*.h",
  ]),
  srcs = [
  ],
)

cc_library(
  name = "config",
  visibility = ["//visibility:public"],
  includes = [
    "libs/config/include",
  ],
  hdrs = glob([
    "libs/config/include/boost/*.h",
  ]),
  srcs = [
  ],
)

cc_library(
  name = "container",
  visibility = ["//visibility:public"],
  includes = [
    "libs/container/include",
  ],
  hdrs = glob([
    "libs/container/include/boost/*.h",
  ]),
  srcs = [
  ],
)

CONTEXT_K8_LINUX_ASM = [
  "libs/context/src/asm/jump_x86_64_sysv_elf_gas.S",
  "libs/context/src/asm/make_x86_64_sysv_elf_gas.S",
]

cc_library(
  name = "context",
  visibility = ["//visibility:public"],
  includes = [
    "libs/context/include",
  ],
  hdrs = glob([
    "libs/context/include/boost/*.h",
  ]),
  srcs = [
    "libs/context/src/execution_context.cpp",
  ] + CONTEXT_K8_LINUX_ASM,
  deps = [
    ":config"
  ],
  copts = [
    "-fsplit-stack",
    "-DBOOST_USE_SEGMENTED_STACKS",
  ],
)

cc_library(
  name = "conversion",
  visibility = ["//visibility:public"],
  includes = [
    "libs/conversion/include",
  ],
  hdrs = glob([
    "libs/conversion/include/boost/*.h",
  ]),
  srcs = [
  ],
)

cc_library(
  name = "core",
  visibility = ["//visibility:public"],
  includes = [
    "libs/core/include",
  ],
  hdrs = glob([
    "libs/core/include/boost/*.h",
  ]),
  srcs = [
  ],
)

cc_library(
  name = "detail",
  visibility = ["//visibility:public"],
  includes = [
    "libs/detail/include",
  ],
  hdrs = glob([
    "libs/detail/include/boost/*.h",
  ]),
  srcs = [
  ],
)

cc_library(
  name = "filesystem",
  visibility = ["//visibility:public"],
  includes = [
    "libs/filesystem/include",
  ],
  hdrs = glob([
    "libs/filesystem/include/boost/*.h",
  ]),
  srcs = glob([
    "libs/filesystem/src/*.cpp",
  ]),
  deps = [
    ":config",
    ":functional",
    ":io",
    ":iterator",
    ":range",
    ":smart_ptr",
    ":system",
    ":type_traits",
  ],
)

cc_library(
  name = "foreach",
  visibility = ["//visibility:public"],
  includes = [
    "libs/foreach/include",
  ],
  hdrs = glob([
    "libs/foreach/include/boost/*.h",
  ]),
  srcs = [
  ],
  deps = [
  ],
)

cc_library(
  name = "function",
  visibility = ["//visibility:public"],
  includes = [
    "libs/function/include",
  ],
  hdrs = glob([
    "libs/function/include/boost/*.h",
  ]),
  srcs = [
  ],
  deps = [
    ":bind",
  ],
)

cc_library(
  name = "function_types",
  visibility = ["//visibility:public"],
  includes = [
    "libs/function_types/include",
  ],
  hdrs = glob([
    "libs/function_types/include/boost/*.h",
  ]),
  srcs = [
  ],
  deps = [
  ],
)

cc_library(
  name = "functional",
  visibility = ["//visibility:public"],
  includes = [
    "libs/functional/include",
  ],
  hdrs = glob([
    "libs/functional/include/boost/*.h",
  ]),
  srcs = [
  ],
  deps = [
    ":detail",
  ],
)

cc_library(
  name = "heap",
  visibility = ["//visibility:public"],
  includes = [
    "libs/heap/include",
  ],
  hdrs = glob([
    "libs/heap/include/boost/*.h",
  ]),
  srcs = [
  ],
  deps = [
    ":parameter",
  ],
)

cc_library(
  name = "integer",
  visibility = ["//visibility:public"],
  includes = [
    "libs/integer/include",
  ],
  hdrs = glob([
    "libs/integer/include/boost/*.h",
  ]),
  srcs = [
  ],
  deps = [
    ":static_assert"
  ],
)

cc_library(
  name = "iterator",
  visibility = ["//visibility:public"],
  includes = [
    "libs/iterator/include",
  ],
  hdrs = glob([
    "libs/iterator/include/boost/*.h",
  ]),
  srcs = [
  ],
  deps = [
    ":detail",
    ":static_assert",
  ],
)

cc_library(
  name = "intrusive",
  visibility = ["//visibility:public"],
  includes = [
    "libs/intrusive/include",
  ],
  hdrs = glob([
    "libs/intrusive/include/boost/*.h",
  ]),
  srcs = [
  ],
  deps = [
    ":assert",
    ":static_assert"
  ],
)

cc_library(
  name = "io",
  visibility = ["//visibility:public"],
  includes = [
    "libs/io/include",
  ],
  hdrs = glob([
    "libs/io/include/boost/*.h",
  ]),
  srcs = [
  ],
  deps = [
  ],
)

cc_library(
  name = "math",
  visibility = ["//visibility:public"],
  includes = [
    "libs/math/include",
  ],
  hdrs = glob([
    "libs/math/include/boost/*.h",
  ]),
  srcs = [
  ],
  deps = [
  ],
)

cc_library(
  name = "move",
  visibility = ["//visibility:public"],
  includes = [
    "libs/move/include",
  ],
  hdrs = glob([
    "libs/move/include/boost/*.h",
  ]),
  srcs = [
  ],
  deps = [
  ],
)

cc_library(
  name = "mpl",
  visibility = ["//visibility:public"],
  includes = [
    "libs/mpl/include",
  ],
  hdrs = glob([
    "libs/mpl/include/boost/*.h",
  ]),
  srcs = [
  ],
  deps = [
    ":preprocessor",
    ":move",
  ]
)

cc_library(
  name = "multi_index",
  visibility = ["//visibility:public"],
  includes = [
    "libs/multi_index/include",
  ],
  hdrs = glob([
    "libs/multi_index/include/boost/*.h",
  ]),
  srcs = [
  ],
  deps = [
    ":foreach",
    ":serialization",
    ":static_assert",
    ":tuple",
  ],
)

cc_library(
  name = "optional",
  visibility = ["//visibility:public"],
  includes = [
    "libs/optional/include",
  ],
  hdrs = glob([
    "libs/optional/include/boost/*.h",
  ]),
  srcs = [
  ],
)

cc_library(
  name = "parameter",
  visibility = ["//visibility:public"],
  includes = [
    "libs/parameter/include",
  ],
  hdrs = glob([
    "libs/parameter/include/boost/*.h",
  ]),
  srcs = [
  ],
  deps = [
  ],
)

cc_library(
  name = "predef",
  visibility = ["//visibility:public"],
  includes = [
    "libs/predef/include",
  ],
  hdrs = glob([
    "libs/predef/include/boost/*.h",
  ]),
  srcs = [
  ],
)

cc_library(
  name = "preprocessor",
  visibility = ["//visibility:public"],
  includes = [
    "libs/preprocessor/include",
  ],
  hdrs = glob([
    "libs/preprocessor/include/boost/*.h",
  ]),
  srcs = [
  ],
)

cc_library(
  name = "range",
  visibility = ["//visibility:public"],
  includes = [
    "libs/range/include",
  ],
  hdrs = glob([
    "libs/range/include/boost/*.h",
  ]),
  srcs = [
  ],
  deps = [
    ":concept_check",
    ":optional",
  ]
)

cc_library(
  name = "regex",
  visibility = ["//visibility:public"],
  includes = [
    "libs/regex/include",
  ],
  defines = [
    "BOOST_FALLTHROUGH"
  ],
  hdrs = glob([
    "libs/regex/include/*.h",
  ]),
  srcs = glob([
    "libs/regex/src/*.cpp",
  ]),
  deps = [
    ":assert",
    ":config",
    ":functional",
    ":integer",
    ":mpl",
    ":smart_ptr",
    ":throw_exception",
    ":type_traits",
  ]
)

cc_library(
  name = "serialization",
  visibility = ["//visibility:public"],
  includes = [
    "libs/serialization/include",
  ],
  hdrs = glob([
    "libs/serialization/include/boost/*.h",
  ]),
  srcs = [
  ],
  deps = [
  ],
)

cc_library(
  name = "smart_ptr",
  visibility = ["//visibility:public"],
  includes = [
    "libs/smart_ptr/include",
  ],
  hdrs = glob([
    "libs/smart_ptr/include/boost/*.h",
  ]),
  srcs = [
  ],
  deps = [
    ":core",
    ":predef",
    ":throw_exception",
    ":utility",
  ],
)

cc_library(
  name = "static_assert",
  visibility = ["//visibility:public"],
  includes = [
    "libs/static_assert/include",
  ],
  hdrs = glob([
    "libs/static_assert/include/boost/*.h",
  ]),
  srcs = [
  ],
)

cc_library(
  name = "system",
  visibility = ["//visibility:public"],
  includes = [
    "libs/system/include",
  ],
  hdrs = glob([
    "libs/system/include/boost/*.h",
  ]),
  srcs = glob([
    "libs/system/src/*.cpp",
  ]),
  deps = [
    ":assert",
    ":config",
    ":core",
    ":predef",
  ],
)

cc_library(
  name = "throw_exception",
  visibility = ["//visibility:public"],
  includes = [
    "libs/throw_exception/include",
  ],
  hdrs = glob([
    "libs/throw_exception/include/boost/*.h",
  ]),
  srcs = [
  ],
)

cc_library(
  name = "type_index",
  visibility = ["//visibility:public"],
  includes = [
    "libs/type_index/include",
  ],
  hdrs = glob([
    "libs/type_index/include/boost/*.h",
  ]),
  srcs = [
  ],
  deps = [
    ":core",
  ]
)

cc_library(
  name = "type_traits",
  visibility = ["//visibility:public"],
  includes = [
    "libs/type_traits/include",
  ],
  hdrs = glob([
    "libs/type_traits/include/boost/*.h",
  ]),
  srcs = [
  ],
  deps = [
    ":core",
    ":mpl",
    ":static_assert",
  ]
)

cc_library(
  name = "tuple",
  visibility = ["//visibility:public"],
  includes = [
    "libs/tuple/include",
  ],
  hdrs = glob([
    "libs/tuple/include/boost/*.h",
  ]),
  srcs = [
  ],
  deps = [
  ],
)

cc_library(
  name = "tr1",
  visibility = ["//visibility:public"],
  includes = [
    "libs/tr1/include",
  ],
  defines = [
    "BOOST_FALLTHROUGH"
  ],
  hdrs = glob([
    "libs/tr1/include/boost/tr1/*.h",
  ]),
  srcs = [
  ],
  deps = [
    ":config",
  ]
)

cc_library(
  name = "utility",
  visibility = ["//visibility:public"],
  includes = [
    "libs/utility/include",
  ],
  hdrs = glob([
    "libs/utility/include/boost/*.h",
  ]),
  srcs = [
  ],
)

cc_library(
  name = "variant",
  visibility = ["//visibility:public"],
  includes = [
    "libs/variant/include",
  ],
  hdrs = glob([
    "libs/variant/include/boost/*.h",
  ]),
  srcs = [
  ],
  deps = [
    ":math",
    ":type_index",
  ]
)
