-- premake5.lua

include('conandeps.premake5.lua')

workspace "HelloWorld"
   conan_setup()
   configurations { "Debug", "Release" }
   platforms { "x86_64" }

project "HelloWorld"
   kind "ConsoleApp"
   language "C++"
   targetdir "bin/%{cfg.buildcfg}"

   files { "**.h", "**.cpp" }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"