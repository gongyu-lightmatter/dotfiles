" :source {this file} to have the settings loaded and then :CMakeSelectKit clang-10 should work
let g:cmake_kits = {
            \  "clang": {
            \    "compilers": {
            \      "C": "/usr/bin/clang",
            \      "CXX": "/usr/bin/clang++"
            \    },
            \    "cmake_usr_args": {
            \        "CMAKE_C_COMPILER_LAUNCHER": "ccache",
            \        "CMAKE_CXX_COMPILER_LAUNCHER": "ccache",
            \        "BUILD_ZEUS_EXEC": "Off",
            \        "FETCHCONTENT_SOURCE_DIR_ZEUS": "/workspaces/zeus"
            \    },
            \    "generator": "Ninja"
            \  },
            \  "clang-13": {
            \    "compilers": {
            \      "C": "/usr/local/opt/llvm/bin/clang",
            \      "CXX": "/usr/local/opt/llvm/bin/clang++"
            \    },
            \    "cmake_usr_args": {
            \        "CMAKE_C_COMPILER_LAUNCHER": "ccache",
            \        "CMAKE_CXX_COMPILER_LAUNCHER": "ccache",
            \        "BUILD_ZEUS_EXEC": "Off"
            \    },
            \    "generator": "Ninja"
            \  }
            \  }
let g:cmake_build_dir = 'build'
let g:cmake_compile_commands = '1'
let g:cmake_compile_commands_link = './'

" staging area
	    " \        "FETCHCONTENT_FULLY_DISCONNECTED": "On"
