Build steps:

```bash
cd build
meson setup --native-file conan_meson_native.ini ..\app\ meson-src
meson compile -C meson-src
meson-src\app.exe
```