include(CMakeFindDependencyMacro)

add_library(hello_lib STATIC IMPORTED)

if(WIN32)

set_target_properties(hello_lib PROPERTIES
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/public/Debug/hello_lib.lib"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/public"
)

else()

set_target_properties(hello_lib PROPERTIES
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/public/hello_lib.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/public"
)

endif()

