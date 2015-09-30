def add_package(name, path, lib_name):
  native.new_local_repository(
    name = name;,
    path = path;,
    build_file = 'repo/' + name + '/BUILD',
  )
  native.bind(
    name = name + '-latest',
    actual = '@' + name + '//:' + lib_name,
  )
