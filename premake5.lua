project "ImGui"
    kind "StaticLib"
    language "C++"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
    postbuildcommands {
        	("{COPY} %{cfg.targetdir}/*.* %{wks.location}/bin/" .. outputdir .. "/Sandbox")
        }
    files
    {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp"
    }
    
    filter "system:windows"
        systemversion "10.0.17763.0"
        cppdialect "C++17"
        staticruntime "Off"
        
        
    filter { "system:windows", "configurations:Release" }
        runtime "Release"
    filter { "system:windows", "configurations:Debug" }
        runtime "Debug"