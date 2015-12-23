package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

pkg_outs(
            exes = ["pdata_tools", "thintools_bsadapt"],
            )

cc_binary(
  name = "pdata_tools",
  srcs = [
	"base/application.cc",
	"base/base64.cc",
	"base/endian_utils.cc",
	"base/error_state.cc",
	"base/progress_monitor.cc",
	"base/xml_utils.cc",
	"block-cache/block_cache.cc",
	"caching/cache_check.cc",
	"caching/cache_dump.cc",
	"caching/cache_metadata_size.cc",
	"caching/cache_repair.cc",
	"caching/cache_restore.cc",
	"caching/hint_array.cc",
	"caching/mapping_array.cc",
	"caching/metadata.cc",
	"caching/metadata_dump.cc",
	"caching/restore_emitter.cc",
	"caching/superblock.cc",
	"caching/xml_format.cc",
	"era/era_array.cc",
	"era/era_check.cc",
	"era/era_detail.cc",
	"era/era_dump.cc",
	"era/era_invalidate.cc",
	"era/era_restore.cc",
	"era/metadata.cc",
	"era/metadata_dump.cc",
	"era/restore_emitter.cc",
	"era/superblock.cc",
	"era/writeset_tree.cc",
	"era/xml_format.cc",
	"main.cc",
	"persistent-data/checksum.cc",
	"persistent-data/data-structures/bitset.cc",
	"persistent-data/data-structures/bloom_filter.cc",
	"persistent-data/data-structures/btree.cc",
	"persistent-data/error_set.cc",
	"persistent-data/file_utils.cc",
	"persistent-data/hex_dump.cc",
	"persistent-data/space-maps/careful_alloc.cc",
	"persistent-data/space-maps/disk.cc",
	"persistent-data/space-maps/recursive.cc",
	"persistent-data/space_map.cc",
	"persistent-data/transaction_manager.cc",
	"thin-provisioning/device_tree.cc",
	"thin-provisioning/human_readable_format.cc",
	"thin-provisioning/mapping_tree.cc",
	"thin-provisioning/metadata.cc",
	"thin-provisioning/metadata_checker.cc",
	"thin-provisioning/metadata_dumper.cc",
	"thin-provisioning/restore_emitter.cc",
	"thin-provisioning/rmap_visitor.cc",
	"thin-provisioning/superblock.cc",
	"thin-provisioning/thin_check.cc",
	"thin-provisioning/thin_debug.cc",
	"thin-provisioning/thin_delta.cc",
	"thin-provisioning/thin_dump.cc",
	"thin-provisioning/thin_metadata_size.cc",
	"thin-provisioning/thin_pool.cc",
	"thin-provisioning/thin_repair.cc",
	"thin-provisioning/thin_restore.cc",
	"thin-provisioning/thin_rmap.cc",
	"thin-provisioning/xml_format.cc",

    "//external:libaio-so-latest",
    "//external:expat-so-latest",
    "//external:boost-so-latest",
  ] + glob(["**/*.h"]),
  includes = ["."] + select ({
                              ":bs_4096": ["bsize_4096"],
                              ":bs_8192": ["bsize_8192"],
  }),
  deps = [
            ":tcc_lib",
            "//external:libaio-hdr-latest",
            "//external:expat-hdr-latest",
            "//external:boost-hdr-latest",
         ],
  linkopts = ["-lstdc++", "-lm"],
)

cc_library(
    name = "tcc_lib",
    hdrs = glob(["**/*.tcc"]),
    includes = ["persistent-data"],
)

# bazel build --config=arm --define block_size=4096 @thin-prov.......
config_setting(
    name = "bs_4096",
    values = { "define": "block_size=4096", },
)
config_setting(
    name = "bs_8192",
    values = {"define": "block_size=8192",},
)

cc_binary(
    name = "thintools_bsadapt",
    srcs = ["wrapper/thintools_bsadapt.c"],
)

