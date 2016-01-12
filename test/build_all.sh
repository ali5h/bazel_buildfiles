rm -fr /root/sandbox
mkdir /root/sandbox
# libnl & xmlrpc-c is sanboxed-built but will failt due to dcoker layer, so we need to copy it to local
cp -r /root/NasX86/SysLib/libnl-1.1.4 /root/sandbox
cp -r /root/NasX86/SysLib/xmlrpc-c-1.25.28 /root/sandbox
cp -r /root/NasX86/SysLib/krb5-1.13 /root/sandbox
cp -r /root/NasX86/SysLib/ffmpeg /root/sandbox
cp -r /root/NasX86/SysLib/openssl-1.0.2e /root/sandbox
cp -r /root/NasX86/SysLib/graphviz-2.38.0 /root/sandbox
cp -r /root/NasX86/SysLib/imap-2007e /root/sandbox

bazel clean

# --linkopt=-Wl,--strip-all: to strip all shared library
# --dynamic_mode=fully: to compile all shared library
# --spawn_strategy=standalone --genrule_strategy=standalone : disable sandbox completely(docker container may cause some permission deny)
# Or, 
# -DQNAPNAS can be pass by --copt
# --experimental_skip_static_outputs : will cause some problem
# --define block_size=4096

bazel build --copt="-w" --define block_size=4096 --config=x86_64 --linkopt=-Wl,--strip-all,--allow-shlib-undefined //repo:SysLib



# @libstdcxx-v3//:stdc++ \
