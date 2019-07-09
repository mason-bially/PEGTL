cc_library(
    name = "pegtl",
    visibility = ["//visibility:public"],
    hdrs = glob(["include/**/*.h*"]),
    includes = ["include"],
)

load("@io_github_taocpp_pegtl//:macros.bzl", "pegtl_tests")

pegtl_tests(glob(["src/test/**/*.cpp"]))