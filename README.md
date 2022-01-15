# flecs-cs

Automatically updated C# bindings for https://github.com/SanderMertens/flecs with native dynamic link libraries.

## How to use

### From source

1. Download and install [.NET 6](https://dotnet.microsoft.com/download).
2. Fork the repository using GitHub or clone the repository manually with submodules: `git clone --recurse-submodules https://github.com/bottlenoselabs/flecs-cs`.

3. Build the native library by running `library.sh`. (Use Git BASH on Windows https://git-scm.com/download/win). Requires C/C++ toolchain and CMake to be installed.
4. Add the C# project `./src/cs/production/flecs/flecs.csproj` to your solution:
```xml
<ItemGroup>
    <ProjectReference Include="path/to/flecs-cs/src/cs/production/flecs/flecs.csproj" />
</ItemGroup>
```

#### Bindgen

If you wish to re-generate the bindings, run [`c2cs`](https://github.com/lithiumtoast/c2cs) from this directory.

### NuGet packages

1. Install the `bottlenoselabs.flecs` NuGet package. This package contains only the C# bindings. To get the pre-release development packages, use the NuGet package feed: `https://www.myget.org/F/bottlenoselabs/api/v3/index.json`.
2. Install one of the following packages which contain the native library for the runtime identifier. More than one these packages can be installed at once if desired but is not strictly required and will waste disk space unnecessarily. 
   -  `bottlenoselabs.flecs.runtime.win-x64`: The `flecs.dll` native binary for Windows (64-bit).
   -  `bottlenoselabs.flecs.runtime.osx`: The `libflecs.dylib` for macOS Intel (`osx-x64`) + macOS Apple Silicon (`osx-arm64`).
   -  `bottlenoselabs.flecs.runtime.linux-x64`: The `libflecs.so` for Linux x64.

## Developers: Documentation

For more information on how C# bindings work, see [`C2CS`](https://github.com/lithiumtoast/c2cs), the tool that generates the bindings for `flecs` and other C libraries.

To learn how to use `flecs`, check out the https://github.com/SanderMertens/flecs#documentation.

## License

`flecs-cs` is licensed under the MIT License (`MIT`) - see the [LICENSE file](LICENSE) for details.

`flecs` itself is licensed under MIT (`MIT`) - see https://github.com/SanderMertens/flecs/blob/master/LICENSE for more details.
