rm -fr /root/sandbox
mkdir /root/sandbox
cp -r /root/NasX86/SysLib/krb5-1.13 /root/sandbox
cp -r /root/NasX86/SysLib/libnl-1.1.4 /root/sandbox
cp -r /root/NasX86/SysLib/xmlrpc-c-1.25.28 /root/sandbox

bazel clean

# --linkopt=-Wl,--strip-all: to strip all shared library
# --dynamic_mode=fully: to compile all shared library
# --spawn_strategy=standalone --genrule_strategy=standalone : disable sandbox completely(docker container may cause some permission deny)
# Or, 
# -DQNAPNAS can be pass by --copt
# --experimental_skip_static_outputs : will cause some problem
# --define block_size=4096

bazel build --copt="-w" --config=x86_64 --linkopt=-Wl,--strip-all //repo:SysLib



# @libstdcxx-v3//:stdc++ \

# Mount headers error
# @xmlrpc-c-1.25.28//:xmlrpc
