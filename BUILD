licenses(['notice'])

load(':bazel/boost.bzl', 'boost_library')


boost_library(
    name = 'algorithm',
    deps = [
        ':function',
        ':range',
    ]
)

boost_library(name = 'align')
boost_library(name = 'assert')

boost_library(
    name = 'asio',
    deps = [
        ':throw_exception',
    ],
)

boost_library(name = 'atomic')
boost_library(name = 'array')
boost_library(name = 'bind')

boost_library(
    name = 'chrono',
    deps = [
        ':ratio'
    ],
)

boost_library(name = 'concept_check')

boost_library(
    name = 'config',
)

boost_library(name = 'container')

boost_library(
    name = 'context',
    srcs = [
        'libs/context/src/execution_context.cpp',
    ] + [
        'libs/context/src/asm/jump_x86_64_sysv_elf_gas.S',
        'libs/context/src/asm/make_x86_64_sysv_elf_gas.S',
    ],
    deps = [
        ':assert',
        ':config',
        ':smart_ptr',
    ],
    copts = [
        '-fsplit-stack',
        '-DBOOST_USE_SEGMENTED_STACKS',
    ],
)

boost_library(name = 'conversion')
boost_library(name = 'core')
boost_library(name = 'crc')
boost_library(
    name = 'date_time',
    deps = [
        ':smart_ptr',
    ],
)
boost_library(name = 'detail')

boost_library(
    name = 'exception',
    defines = [
        'BOOST_NO_CXX11_RVALUE_REFERENCES',
    ],
)

boost_library(
    name = 'filesystem',
    srcs = glob([
        'filesystem/src/*.cpp',
    ]),
    deps = [
        ':config',
        ':functional',
        ':io',
        ':iterator',
        ':range',
        ':smart_ptr',
        ':system',
        ':type_traits',
    ],
)

boost_library(name = 'foreach')

boost_library(
    name = 'function',
    deps = [
        ':bind',
    ],
)

boost_library(name = 'function_types')

boost_library(
  name = 'functional',
  deps = [
    ':detail',
  ],
)

boost_library(
  name = 'heap',
  deps = [
    ':parameter',
  ],
)

boost_library(
  name = 'integer',
  deps = [
    ':static_assert'
  ],
)

boost_library(
  name = 'iterator',
  deps = [
    ':detail',
    ':static_assert',
  ],
)

boost_library(
  name = 'intrusive',
  deps = [
    ':assert',
    ':static_assert'
  ],
)

boost_library(name = 'io')

boost_library(
    name = 'lexical_cast',
    deps = [
        ':array',
        ':container',
        ':numeric',
        ':range',
    ],
)

boost_library(name = 'math')
boost_library(name = 'move')

boost_library(
    name = 'mpl',
    deps = [
        ':move',
        ':preprocessor',
    ]
)

boost_library(
    name = 'multi_index',
    deps = [
        ':foreach',
        ':serialization',
        ':static_assert',
        ':tuple',
    ],
)

boost_library(
    name = 'multiprecision',
    deps = [
        ':rational',
    ],
)

boost_library(
    name = 'numeric',
    hdrs = glob([
        'libs/numeric/conversion/include/**/*.hpp',
        'libs/numeric/odeint/include/**/*.hpp',
        'libs/numeric/ublas/include/**/*.hpp',
    ]),
    includes = [
        'libs/numeric/conversion/include',
        'libs/numeric/odeint/include',
        'libs/numeric/ublas/include',
    ],
)

boost_library(name = 'optional')
boost_library(name = 'parameter')

boost_library(
    name = 'pool',
    deps = [
        ':integer',
    ],
)

boost_library(name = 'predef')
boost_library(name = 'preprocessor')

boost_library(
    name = 'range',
    deps = [
        ':concept_check',
        ':optional',
        ':iterator',
    ]
)

boost_library(name = 'ratio')
boost_library(name = 'rational')

boost_library(
    name = 'regex',
    defines = [
        'BOOST_FALLTHROUGH',
    ],
    srcs = glob([
        'regex/src/*.cpp',
        'regex/src/*.hpp',
    ]),
    deps = [
        ':assert',
        ':config',
        ':functional',
        ':integer',
        ':mpl',
        ':smart_ptr',
        ':throw_exception',
        ':type_traits',
    ]
)

boost_library(name = 'serialization')

boost_library(
  name = 'smart_ptr',
  deps = [
    ':align',
    ':core',
    ':predef',
    ':throw_exception',
    ':utility',
  ],
)

boost_library(name = 'static_assert')

boost_library(
  name = 'system',
  srcs = glob([
    'system/src/*.cpp',
  ]),
  deps = [
    ':assert',
    ':config',
    ':core',
    ':predef',
  ],
)

boost_library(
  name = 'thread',
  defines = [
    'BOOST_NO_CXX11_RVALUE_REFERENCES',
    'BOOST_NO_CXX11_SMART_PTR',
  ],
  deps = [
    ':atomic',
    ':chrono',
    ':core',
    ':date_time',
    ':exception',
    ':io',
    ':system',
  ]
)

boost_library(name = 'throw_exception')

boost_library(
  name = 'type_index',
  deps = [
    ':core',
  ]
)

boost_library(
  name = 'type_traits',
  deps = [
    ':core',
    ':mpl',
    ':static_assert',
  ]
)

boost_library(name = 'tuple')

boost_library(
  name = 'tr1',
  defines = [
    'BOOST_FALLTHROUGH'
  ],
  deps = [
    ':config',
  ]
)

boost_library(name = 'utility')

boost_library(
  name = 'variant',
  deps = [
    ':functional',
    ':math',
    ':throw_exception',
    ':type_index',
  ]
)
