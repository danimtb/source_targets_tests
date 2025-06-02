project('tutorial', 'cpp')
mylib = dependency('mylib', version: '1.0.0')

mylib_srcs = mylib.get_variable('sources').split()

executable('app',
    ['app.cpp'] + mylib_srcs,
    dependencies: mylib
)
