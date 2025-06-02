script_folder="/home/danimtb/source_targets_tests/autotools/conan"
echo "echo Restoring environment" > "$script_folder/deactivate_conanautotoolsdeps.sh"
for v in CPPFLAGS LIBS LDFLAGS CXXFLAGS CFLAGS
do
    is_defined="true"
    value=$(printenv $v) || is_defined="" || true
    if [ -n "$value" ] || [ -n "$is_defined" ]
    then
        echo export "$v='$value'" >> "$script_folder/deactivate_conanautotoolsdeps.sh"
    else
        echo unset $v >> "$script_folder/deactivate_conanautotoolsdeps.sh"
    fi
done


export CPPFLAGS="$CPPFLAGS -I/home/danimtb/.conan2/p/zlib183f497a7e6b0/p/include"
export LIBS="$LIBS -lz"
export LDFLAGS="$LDFLAGS -L/home/danimtb/.conan2/p/zlib183f497a7e6b0/p/lib"
export CXXFLAGS="$CXXFLAGS"
export CFLAGS="$CFLAGS"