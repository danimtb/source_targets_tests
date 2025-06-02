
For PkgConfigDeps:

```bash
export PKG_CONFIG_PATH=/home/danimtb/source_targets_tests/autotools
cd app
autoreconf -fi
./configure
make
```

For MakeDeps:

- Add CONAN_SOURCES_<name> = $(CONAN_ROOT_<name>)/*.cpp
- Add global variable CONAN_SOURCES

For AutotoolsDeps:

- Add SOURCES env var ???