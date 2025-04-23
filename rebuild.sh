#!/bin/bash

./../shaders/compile.sh

CLANG_PATH=/mnt/c/Users/j84394593/Code/command-line-tools/sdk/default/openharmony/native/llvm/bin/clang
CMAKE_TOOLCHAIN_PATH=/mnt/c/Users/j84394593/Code/command-line-tools/sdk/default/openharmony/native/build/cmake/ohos.toolchain.cmake
CMAKE_PATH=/mnt/c/Users/j84394593/Code/command-line-tools/sdk/default/openharmony/native/build-tools/cmake/bin

"$CMAKE_PATH/cmake" -G "Ninja" -D OHOS_STL=c++_shared -D OHOS_ARCH=arm64-v8a -D OHOS_PLATFORM=OHOS -D CMAKE_TOOLCHAIN_FILE=$CMAKE_TOOLCHAIN_PATH -DCMAKE_MAKE_PROGRAM="$CMAKE_PATH/ninja" ..

"$CMAKE_PATH/cmake" --build .

