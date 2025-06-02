#!lua

include "conanutils.premake5.lua"

t_conandeps = {}
t_conandeps["release_x86_64"] = {}
t_conandeps["release_x86_64"]["mylib"] = {}
t_conandeps["release_x86_64"]["mylib"]["includedirs"] = {"C:/Users/danielm/source_targets_tests/premake/mylib"}
t_conandeps["release_x86_64"]["mylib"]["libdirs"] = {"C:/Users/danielm/source_targets_tests/premake/mylib"}
t_conandeps["release_x86_64"]["mylib"]["bindirs"] = {"C:/Users/danielm/source_targets_tests/premake/mylib"}
t_conandeps["release_x86_64"]["mylib"]["libs"] = {}
t_conandeps["release_x86_64"]["mylib"]["system_libs"] = {}
t_conandeps["release_x86_64"]["mylib"]["defines"] = {}
t_conandeps["release_x86_64"]["mylib"]["cxxflags"] = {}
t_conandeps["release_x86_64"]["mylib"]["cflags"] = {}
t_conandeps["release_x86_64"]["mylib"]["sharedlinkflags"] = {}
t_conandeps["release_x86_64"]["mylib"]["exelinkflags"] = {}
t_conandeps["release_x86_64"]["mylib"]["frameworks"] = {}
t_conandeps["release_x86_64"]["mylib"]["sources"] = {"mylib.h", "mylib.cpp"}  -- ADDED: is mylib.h neeed here?

if conandeps == nil then conandeps = {} end
conan_premake_tmerge(conandeps, t_conandeps)
