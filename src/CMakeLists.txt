SET(LIBHELLO_SRC hello.cpp VulkanTools.cpp)

SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O0")   

ADD_EXECUTABLE(Hello ${LIBHELLO_SRC})

TARGET_INCLUDE_DIRECTORIES(Hello PUBLIC ../include)

find_library(VULKANLIB libvulkan.so PATHS lib/)
find_library(ACELIB libace_ndk.z.so PATHS lib/)
find_library(NATIVEWINDOWLIB libnative_window.so PATHS lib/)

TARGET_LINK_LIBRARIES(Hello PUBLIC ${VULKANLIB} ${ACELIB} ${NATIVEWINDOWLIB} )
