package(default_visibility = ["//visibility:public"])

filegroup(
    name = "thintools",
    srcs = [ "pdata_tools", "thintools_bsadapt"],
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
  ],
  includes = ["."],
  deps = [
            "//external:libaio-latest",
            "//external:expat-latest",
            "@boost_1_58_0//:crc",
            "@boost_1_58_0//:tuple",
            "@boost_1_58_0//:variant",
            "@boost_1_58_0//:smart_ptr",
            "@boost_1_58_0//:static_assert",
            "@boost_1_58_0//:algorithm",
            "@boost_1_58_0//:lexical_cast",
            "@boost_1_58_0//:core",
            "@boost_1_58_0//:bind",
            "@boost_1_58_0//:optional",
         ],
  copts = ["-DHAVE_CONFIG_H"],
  linkopts = ["-lstdc++", "-lm"],
)

cc_binary(
    name = "thintools_bsadapt",
    srcs = ["wrapper/thintools_bsadapt.c"],
    copts = ["-DHAVE_CONFIG_H"],
)

