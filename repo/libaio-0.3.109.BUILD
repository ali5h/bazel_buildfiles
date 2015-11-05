package(default_visibility = ["//visibility:public"])

cc_library(
  name = "aio",
  srcs = [
        "src/vsys_def.h",
        
        "src/io_queue_init.c",
        "src/io_queue_release.c",
        "src/io_queue_wait.c",
        "src/io_queue_run.c",
        "src/io_getevents.c",
        "src/io_submit.c",
        "src/io_cancel.c",
        "src/io_setup.c",
        "src/io_destroy.c",
        "src/raw_syscall.c",
        "src/compat-0_1.c",
        "src/syscall.h",
        "src/syscall-arm.h",
        "src/syscall-x86_64.h",
        "src/syscall-i386.h",

        ],
  hdrs = ["src/libaio.h", "src/libaio.map"],
  # FIX: need to remove this one probably by genrule
  linkopts = ["-Wl,--version-script=/root/NasX86/SysLib/libaio-0.3.109/src/libaio.map"],
  includes = ["src"],
  copts = ["-nostdlib", "-nostartfiles", "-fomit-frame-pointer", "-fPIC", "-shared"],
)


