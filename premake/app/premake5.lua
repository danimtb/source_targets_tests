-- premake5.lua

include('conandeps.premake5.lua')

workspace "HelloWorld"
    conan_setup()
    configurations { "Debug", "Release" }
    platforms { "x86_64" }