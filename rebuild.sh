#!/bin/bash

./../shaders/compile.sh

cmake -G "Ninja" -D OHOS_STL=c++_shared -D OHOS_ARCH=arm64-v8a -D OHOS_PLATFORM=OHOS -D CMAKE_TOOLCHAIN_FILE=<path_to_sdk>/native/build/cmake/ohos.toolchain.cmake -DCMAKE_MAKE_PROGRAM=<path_to_sdk>native/build-tools/cmake/bin/ninja ..

cmake --build .

