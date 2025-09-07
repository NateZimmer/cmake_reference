include(CMakeFindDependencyMacro)

add_library(hello_libs STATIC IMPORTED)

if(WIN32)
set(lib_loc "${CMAKE_CURRENT_LIST_DIR}/public/Debug/hello_lib.lib")
else()
set(lib_loc "${CMAKE_CURRENT_LIST_DIR}/public/libhello_lib.a")
endif()

set_target_properties(hello_libs PROPERTIES
    IMPORTED_LOCATION ${lib_loc}
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/public"
)
