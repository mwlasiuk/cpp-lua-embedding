workspace "cpp-lua-embeding"
    location"Solution"
    configurations{
        "Debug",
        "Release"
    }

    project "lua"
        kind"StaticLib"
        language "c"
        defines{
            "MAKE_LIB"
        }
        files{
            "extern/lua/onelua.c"
        }

    project "cpp-lua-embedding"
        kind"ConsoleApp"
        language "c++"
        cppdialect"c++17"

        includedirs{
            "extern/lua",
            "extern/sol/include"
        }

        files{
            "cpp/*.cpp",
            "cpp/*.hpp",
        }

        links{
            "lua"
        }