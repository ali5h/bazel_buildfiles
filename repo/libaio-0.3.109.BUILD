package(default_visibility = ["//visibility:public"])

cc_binary(
  name = "libaio",
  srcs = glob(["src/*.c"]) +
         ["src/vsys_def.h"] + 
         glob(["persistent-data/*.cc"], exclude = ["persistent-data/*.tcc"]) + 
         glob(["thin-provisioning/*"], exclude = ["thin-provisioning/create_xml_data", "thin-provisioning/thin_metadata_size.rb"] ) + 
         ["main.cc"],
  includes = ["."],
)

cc_binary(
    name = "thintools_bsadapt",
    srcs = ["wrapper/thintools_bsadapt.c"],
)
