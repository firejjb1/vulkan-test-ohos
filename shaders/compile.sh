path=$(dirname "$0")

glslc $path/triangle.vert -o $path/triangle.vert.spv
glslc $path/triangle.frag -o $path/triangle.frag.spv
glslc $path/composition.vert -o $path/composition.vert.spv
glslc $path/composition.frag -o $path/composition.frag.spv

cp -r $path/ $(pwd -W)/src

