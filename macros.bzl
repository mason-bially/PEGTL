def pegtl_tests(cpps):

    for cpp in cpps:
        native.cc_test(
            name = "test__" + cpp,
            size = "small",
            
            deps = [":pegtl"],
            
            data = ["src/test/pegtl/file_data.txt"],
            
            srcs = [cpp] + native.glob([
                "src/test/**/*.hpp"
            ]),
            
            copts = select({
                "@bazel_tools//src/conditions:windows": ["/std:c++17"],
                "//conditions:default": ["-std=c++17"],
            }),
        )
