project("HedgeLib")
    language("C")

    targetdir("bin/%{cfg.platform}/%{cfg.buildcfg}")
    runpathdirs("bin/%{cfg.platform}/%{cfg.buildcfg}")
    
    includedirs({ "include", "depends" })
    files({ "include/**.h", "src/**.c", "src/**.h" })

    -- Options
    if LibType == "static" then
        kind("StaticLib")
    else
        kind("SharedLib")
        defines({ "HL_IS_DLL", "HL_IS_BUILDING_DLL" })
    end
    
    -- Platform-Specifics
    --[[if Target == "windows" then
        defines("NOMINMAX")
        buildoptions("/Zc:externConstexpr")
    end--]]

    -- LZ4
    --files({ "depends/lz4/**.h", "depends/lz4/**.c" })

    -- zlib
    --files({ "depends/zlib/**.h", "depends/zlib/**.c", "depends/zlib/**.cc" })
    
    -- MSC Optimization
    filter("toolset:msc")
        flags("MultiProcessorCompile")

    -- Debug Configuration
    filter("configurations:Debug*")
        defines("DEBUG")
        symbols("On")

    -- Release Configuration
    filter("configurations:Release*")
        defines("NDEBUG")
        optimize("Speed")
        flags("LinkTimeOptimization")
        
    -- x86
    filter("platforms:x86")
        architecture("x86")
        defines("x86")
        
    -- x64
    filter("platforms:x64")
        architecture("x86_64")
        defines("x64")
