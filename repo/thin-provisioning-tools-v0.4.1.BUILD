package(default_visibility = ["//visibility:public"])

filegroup(
    name = "thintools",
    srcs = [ "pdata_tools", "thintools_bsadapt"],
)

cc_binary(
  name = "pdata_tools",
  srcs = glob(["base/*"]) +
         glob(["block-cache/*"]) + 
         glob(["caching/*"], exclude = ["caching/metadata_disk_structures.cc"]) + 
         glob(["era/*"]) + 
         glob(["persistent-data/*.cc"], exclude = ["persistent-data/*.tcc"]) + 
         glob(["thin-provisioning/*"], exclude = ["thin-provisioning/create_xml_data", "thin-provisioning/thin_metadata_size.rb"] ) + 
         ["main.cc"],
  includes = ["."],
  deps = [
            "//external:libaio-latest",
            "@boost_1_58_0//:crc",
            "@boost_1_58_0//:variant",
            "@boost_1_58_0//:smart_ptr",
            "@boost_1_58_0//:static_assert",
            "@boost_1_58_0//:algorithm",
            "@boost_1_58_0//:lexical_cast",
         ],
)

cc_binary(
    name = "thintools_bsadapt",
    srcs = ["wrapper/thintools_bsadapt.c"],
)

