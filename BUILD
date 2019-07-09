cc_library(
    name = "pegtl",
    visibility = ["//visibility:public"],
    hdrs = glob(["include/**/*.h*"]),
    includes = ["include"],
)

load(":macros.bzl", "pegtl_tests")

pegtl_tests(glob(["src/test/**/*.cpp"]))
