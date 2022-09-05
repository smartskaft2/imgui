project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"
    staticruntime "on"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "imconfig.h",
        "imgui.h",
        "imgui_internal.h",
        "imgui_rectpack.h",
        "imgui_textedit.h",
        "imgui_truetype.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_widgets.cpp",
        "imgui_tables.cpp",
        "imgui_demo.cpp"
    }

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"
