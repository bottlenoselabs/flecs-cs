#!/bin/bash
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
echo "Started building native libraries... Directory: $script_dir"

build_dir="$script_dir/cmake-build-release"
lib_dir="$script_dir/lib/"

cmake -S $script_dir/ext/flecs -B $build_dir
cmake --build $build_dir --config Release
mkdir -p $lib_dir

for filepath in $build_dir/*.{a,dylib,so}; do
    if [[ -f $filepath ]]; then
        mv $filepath $lib_dir
        echo "Moved $filepath to directory $lib_dir"
    fi
done

rm -r $build_dir
echo "Finished building native libraries."