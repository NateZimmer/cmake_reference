include(CMakeFindDependencyMacro)

add_library(world_lib STATIC IMPORTED)

if(WIN32)

set_target_properties(world_lib PROPERTIES
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/public/Debug/world_lib.lib"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/public"
)

else()

set_target_properties(world_lib PROPERTIES
    IMPORTED_LOCATION "${CMAKE_CURRENT_LIST_DIR}/public/world_lib.a"
    INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_CURRENT_LIST_DIR}/public"
)

endif()

