# flecs-cs

Automatically updated C# bindings for https://github.com/SanderMertens/flecs with native dynamic link libraries.

## How to use

### From source

1. Download and install [.NET 6](https://dotnet.microsoft.com/download).
2. Fork the repository using GitHub or clone the repository manually with submodules: `git clone --recurse-submodules https://github.com/bottlenoselabs/flecs-cs`.

3. Build the native library by running `library.sh`. (Use Git BASH on Windows https://git-scm.com/download/win). Requires C/C++ toolchain and CMake to be installed.
4. Import the MSBuild `flecs.props` file which is located in the root of this directory to your `.csproj` file to setup everything you need. See the [hello world sample](src\cs\samples\flecs-01_hello_world\flecs-01_hello_world.csproj) for an example of how to do this.
```xml
<!-- C# project references -->
<Import Project="$([System.IO.Path]::GetFullPath('$(MSBuildThisFileDirectory)/path/to/flecs.props'))" />
```

#### Bindgen

If you wish to re-generate the bindings, run [`c2cs`](https://github.com/lithiumtoast/c2cs) from this directory.

## Developers: Documentation

For more information on how C# bindings work, see [`C2CS`](https://github.com/lithiumtoast/c2cs), the tool that generates the bindings for `flecs` and other C libraries.

To learn how to use `flecs`, check out the https://github.com/SanderMertens/flecs#documentation.

## License

`flecs-cs` is licensed under the MIT License (`MIT`) - see the [LICENSE file](LICENSE) for details.

`flecs` itself is licensed under MIT (`MIT`) - see https://github.com/SanderMertens/flecs/blob/master/LICENSE for more details.
