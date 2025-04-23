# Vulkan Starter

This is a Vulkan starter project for OpenHarmony 5 that contains basic Vulkan boilerplate to get an instance,
physical device, device, etc on a Huawei device and render a headless image using subpasses. 

This example follows  [OpenHarmony vulkan docs](https://docs.openharmony.cn/pages/v5.0/en/application-dev/reference/native-lib/vulkan-guidelines.md) and [Vulkan examples headless rendering](https://github.com/SaschaWillems/Vulkan/blob/master/examples/renderheadless/renderheadless.cpp)

## How to Build
You need CMake, ninja and OpenHarmony SDK.

First, generate the ninja build files using Cmake
```
mkdir build
cd build
cmake -G "Ninja" -D OHOS_STL=c++_shared -D OHOS_ARCH=arm64-v8a -D OHOS_PLATFORM=OHOS -D CMAKE_TOOLCHAIN_FILE=</path/to/sdk>/native/build/cmake/ohos.toolchain.cmake -DCMAKE_MAKE_PROGRAM=</path/to/sdk>/native/build-tools/cmake/bin/ninja.exe ..
```
Or, from build directory, modify and run recompile.sh
```
./../recompile.sh
```
The project should compile on Windows or Linux, assuming required executables and SDKs are used accordingly.

This example doesn't include automatic shader compilation. If modify shaders under shaders/, compile them and rerun
the cmake generation.

Then, build the executable
```
cmake --build .
```

## How to Run

First mount the device so that system/ and vendor/ are accessible (only need to do once)
```
hdc target mount
```

Send the built executable's folder to a path on the device. (look for src/Hello)
```
hdc file send </path/to/executable> </path/on/device>
```

Make sure to send the executable's directory to include the shaders


Finally, open a shell on the device and run the executable.
```
hdc shell
cd </path/on/device>
./Hello
```
There should be a rendered and saved image (headless.ppm)