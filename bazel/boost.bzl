def boost_library(name, defines=[], includes=[], hdrs=[], srcs=[], deps=[], copts=[]):
    includes_pattern = 'libs/%s/include'
    hdrs_pattern1 = includes_pattern + '/boost/**/*.h'
    hdrs_pattern2 = includes_pattern + '/boost/**/*pp'
    return native.cc_library(
        name = name,
        visibility = [
            '//visibility:public'
        ],
        defines = defines,
        includes = [
            includes_pattern % name,
        ] + includes,
        hdrs = native.glob([
            hdrs_pattern1 % name,
            hdrs_pattern2 % name,
        ]) + hdrs,
        srcs = srcs,
        deps = deps,
        copts = copts,
    )
