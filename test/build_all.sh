# REPO_ROOT & SANDBOX_ROOT should be sync with the value in extension.bzl
REPO_ROOT=/root/NasX86/
SANDBOX_ROOT=/root/sandbox/

rm -fr ${SANDBOX_ROOT}
mkdir ${SANDBOX_ROOT}

# libnl & xmlrpc-c is sanboxed-built but will failt due to dcoker layer, so we need to copy it to local
cp -r ${REPO_ROOT}SysLib/libnl-1.1.4 ${SANDBOX_ROOT}
cp -r ${REPO_ROOT}SysLib/xmlrpc-c-1.25.28 ${SANDBOX_ROOT}
cp -r ${REPO_ROOT}SysLib/krb5-1.13 ${SANDBOX_ROOT}
cp -r ${REPO_ROOT}SysLib/ffmpeg ${SANDBOX_ROOT}
cp -r ${REPO_ROOT}SysLib/openssl-1.0.2e ${SANDBOX_ROOT}
cp -r ${REPO_ROOT}SysLib/graphviz-2.38.0 ${SANDBOX_ROOT}
cp -r ${REPO_ROOT}SysLib/imap-2007e ${SANDBOX_ROOT}

bazel clean

# --linkopt=-Wl,--strip-all: to strip all shared library
# -Wl,--allow-shlib-undefined: to disable symbol cannot reslove in indirect symbol resolving
# --dynamic_mode=fully: to compile all shared library
# --spawn_strategy=standalone --genrule_strategy=standalone : disable sandbox completely(docker container may cause some permission deny)
# Or, 
# -DQNAPNAS can be pass by --copt
# --experimental_skip_static_outputs : will cause some problem
# --define block_size=4096

bazel build --copt="-w" --define block_size=4096 --config=x86_64 --linkopt=-Wl,--strip-all,--allow-shlib-undefined //repo:SysLib



# @libstdcxx-v3//:stdc++ \
