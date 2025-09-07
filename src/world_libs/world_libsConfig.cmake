include(CMakeFindDependencyMacro)

add_library(world_libs STATIC IMPORTED)

if(WIN32)
set(lib_loc "${CMAKE_CURRENT_LIST_DIR}/public/Debug/world_lib.lib")
else()
set(lib_loc "${CMAKE_CURRENT_LIST_DIR}/public/libworld_lib.a")
endif()

set_target_properties(world_libs PROPERTIES
    IMPORTED_LOCATION ${lib_loc}
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/public"
)
