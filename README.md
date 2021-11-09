# flecs-cs

Automatically updated C# bindings for https://github.com/SanderMertens/flecs with native dynamic link libraries.

## How to use

### From source

1. Download and install [.NET 6](https://dotnet.microsoft.com/download).
2. Fork the repository using GitHub or clone the repository manually with submodules: `git clone --recurse-submodules git@github.com:lithiumtoast/flecs-cs.git`.
3. Build the native library by running `./library.sh` on macOS or Linux and `.\library.sh` on Windows.
4. Add the C# project `./src/cs/production/flecs-cs/flecs-cs.csproj` to your solution:
```xml
<ItemGroup>
    <ProjectReference Include="path/to/flecs-cs/src/cs/production/flecs-cs/flecs-cs.csproj" />
</ItemGroup>
```

#### Bindgen

If you wish to re-generate the bindings, simple run `./bindgen.sh` on macOS or Linux and `.\bindgen.cmd` on Windows.

## Developers: Documentation

For more information on how C# bindings work, see [`C2CS`](https://github.com/lithiumtoast/c2cs), the tool that generates the bindings for `SDL` and other C libraries.

To learn how to use `flecs`, check out the https://github.com/SanderMertens/flecs#documentation.

## License

`flecs-cs` is licensed under the MIT License (`MIT`) - see the [LICENSE file](LICENSE) for details.

`flecs` itself is licensed under MIT (`MIT`) - see https://github.com/SanderMertens/flecs/blob/master/LICENSE for more details.
