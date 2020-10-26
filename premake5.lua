project "assimp"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "Off"
	
    flags {
		"MultiProcessorCompile"
	}

	targetdir ("../../bin/" .. outputdir)
	objdir ("../../bin_int/" .. outputdir .. "/%{prj.name}")

	defines {
        "WIN32_LEAN_AND_MEAN",
        "UNICODE",
        "_UNICODE",
        "ASSIMP_BUILD_NO_C4D_IMPORTER",
        "MINIZ_USE_UNALIGNED_LOADS_AND_STORES=0",
        "ASSIMP_IMPORTER_GLTF_USE_OPEN3DGC=1",
        "RAPIDJSON_HAS_STDSTRING=1",
        "RAPIDJSON_NOMEMBERITERATORCLASS",
        "ASSIMP_BUILD_DLL_EXPORT",
        "_SCL_SECURE_NO_WARNINGS",
        "_CRT_SECURE_NO_WARNINGS",
        "OPENDDLPARSER_BUILD",

        "ASSIMP_BUILD_NO_3DS_IMPORTER",
        "ASSIMP_BUILD_NO_3MF_IMPORTER",
        "ASSIMP_BUILD_NO_AC_IMPORTER",
        "ASSIMP_BUILD_NO_AMF_IMPORTER",
        "ASSIMP_BUILD_NO_ASE_IMPORTER",
        "ASSIMP_BUILD_NO_B3D_IMPORTER",
        "ASSIMP_BUILD_NO_C4D_IMPORTER",
        "ASSIMP_BUILD_NO_COB_IMPORTER",
        "ASSIMP_BUILD_NO_CSM_IMPORTER",
        "ASSIMP_BUILD_NO_DXF_IMPORTER",
        "ASSIMP_BUILD_NO_GLTF_IMPORTER",
        "ASSIMP_BUILD_NO_GLTF1_IMPORTER",
        "ASSIMP_BUILD_NO_GLTF2_IMPORTER",
        "ASSIMP_BUILD_NO_GLTF2_IMPORTER",
        "ASSIMP_BUILD_NO_HMP_IMPORTER",
        "ASSIMP_BUILD_NO_IFC_IMPORTER",
        "ASSIMP_BUILD_NO_IRR_IMPORTER",
        "ASSIMP_BUILD_NO_LWO_IMPORTER",
        "ASSIMP_BUILD_NO_LWS_IMPORTER",
        "ASSIMP_BUILD_NO_M3D_IMPORTER",
        "ASSIMP_BUILD_NO_MD2_IMPORTER",
        "ASSIMP_BUILD_NO_MD3_IMPORTER",
        "ASSIMP_BUILD_NO_MD4_IMPORTER",
        "ASSIMP_BUILD_NO_MD5_IMPORTER",
        "ASSIMP_BUILD_NO_MDC_IMPORTER",
        "ASSIMP_BUILD_NO_MDL_IMPORTER",
        "ASSIMP_BUILD_NO_MMD_IMPORTER",
        "ASSIMP_BUILD_NO_MS3D_IMPORTER",
        "ASSIMP_BUILD_NO_NDO_IMPORTER",
        "ASSIMP_BUILD_NO_NFF_IMPORTER",
        "ASSIMP_BUILD_NO_OGRE_IMPORTER",
        "ASSIMP_BUILD_NO_OPENGEX_IMPORTER",
        "ASSIMP_BUILD_NO_Q3BSP_IMPORTER",
        "ASSIMP_BUILD_NO_Q3D_IMPORTER",
        "ASSIMP_BUILD_NO_SIB_IMPORTER",
        "ASSIMP_BUILD_NO_SMD_IMPORTER",
        "ASSIMP_BUILD_NO_TERRAGEN_IMPORTER",
        "ASSIMP_BUILD_NO_X_IMPORTER",
        "ASSIMP_BUILD_NO_X3D_IMPORTER",
        "ASSIMP_BUILD_NO_XGL_IMPORTER",

        "ASSIMP_BUILD_NO_3DS_EXPORTER",
        "ASSIMP_BUILD_NO_3MF_EXPORTER",
        "ASSIMP_BUILD_NO_AC_EXPORTER",
        "ASSIMP_BUILD_NO_AMF_EXPORTER",
        "ASSIMP_BUILD_NO_ASE_EXPORTER",
        "ASSIMP_BUILD_NO_B3D_EXPORTER",
        "ASSIMP_BUILD_NO_C4D_EXPORTER",
        "ASSIMP_BUILD_NO_COB_EXPORTER",
        "ASSIMP_BUILD_NO_CSM_EXPORTER",
        "ASSIMP_BUILD_NO_DXF_EXPORTER",
        "ASSIMP_BUILD_NO_GLTF_EXPORTER",
        "ASSIMP_BUILD_NO_GLTF1_EXPORTER",
        "ASSIMP_BUILD_NO_GLTF2_EXPORTER",
        "ASSIMP_BUILD_NO_GLTF2_EXPORTER",
        "ASSIMP_BUILD_NO_HMP_EXPORTER",
        "ASSIMP_BUILD_NO_IFC_EXPORTER",
        "ASSIMP_BUILD_NO_IRR_EXPORTER",
        "ASSIMP_BUILD_NO_LWO_EXPORTER",
        "ASSIMP_BUILD_NO_LWS_EXPORTER",
        "ASSIMP_BUILD_NO_M3D_EXPORTER",
        "ASSIMP_BUILD_NO_MD2_EXPORTER",
        "ASSIMP_BUILD_NO_MD3_EXPORTER",
        "ASSIMP_BUILD_NO_MD4_EXPORTER",
        "ASSIMP_BUILD_NO_MD5_EXPORTER",
        "ASSIMP_BUILD_NO_MDC_EXPORTER",
        "ASSIMP_BUILD_NO_MDL_EXPORTER",
        "ASSIMP_BUILD_NO_MMD_EXPORTER",
        "ASSIMP_BUILD_NO_MS3D_EXPORTER",
        "ASSIMP_BUILD_NO_NDO_EXPORTER",
        "ASSIMP_BUILD_NO_NFF_EXPORTER",
        "ASSIMP_BUILD_NO_OGRE_EXPORTER",
        "ASSIMP_BUILD_NO_OPENGEX_EXPORTER",
        "ASSIMP_BUILD_NO_Q3BSP_EXPORTER",
        "ASSIMP_BUILD_NO_Q3D_EXPORTER",
        "ASSIMP_BUILD_NO_SIB_EXPORTER",
        "ASSIMP_BUILD_NO_SMD_EXPORTER",
        "ASSIMP_BUILD_NO_TERRAGEN_EXPORTER",
        "ASSIMP_BUILD_NO_X_EXPORTER",
        "ASSIMP_BUILD_NO_X3D_EXPORTER",
        "ASSIMP_BUILD_NO_XGL_EXPORTER",
    }

    files {
        "code/AssetLib/**",
        "code/CApi/**",
        "code/Common/**",
        "code/Material/**",
        "code/PostProcessing/**",
        "contrib/unzip/*",
        "contrib/zlib/*",
    }

    sysincludedirs {
        ".",
        "contrib/pugixml/src",
        "contrib/unzip",
        "contrib/zlib",
    }

    includedirs {
        "include",
        "code"
    }
	

    filter "system:windows"
        systemversion "latest"

    filter  "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter  "configurations:Release"
        runtime "Release"
        optimize "on"

