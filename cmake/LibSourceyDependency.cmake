#
### Macro: include_dependency
#
# Inclusion of 3rd party dependency into a LibSourcey project.
#
macro(include_dependency name)
  #message(STATUS "Including dependency: ${name}")
  
  find_package(${name} ${ARGN})  
    
  # Determine the variable scope
  set(var_root ${name})  
  set(lib_found 0)
  string(TOUPPER ${var_root} var_root_upper)
  if(${var_root}_FOUND)
    set(lib_found 1)
  else()
    # Try to use old style uppercase variable accessor
    if(${var_root_upper}_FOUND)
      set(var_root ${var_root_upper})  
      set(lib_found 1)
    endif()
  endif()  
  
  # Exit message on failure
  if (NOT ${var_root}_FOUND)
    message("Failed to include dependency: ${name}") 
    return()
  endif()
  
  # Set a HAVE_XXX variable at parent scope for our Config.h
  set(HAVE_${var_root_upper} TRUE PARENT_SCOPE)      
  # Expose to LibSourcey
  if(${var_root}_INCLUDE_DIR)
    #message(STATUS "- Found ${name} Inc Dir: ${${var_root}_INCLUDE_DIR}")
    #include_directories(${${var_root}_INCLUDE_DIR})
    list(APPEND LibSourcey_INCLUDE_DIRS ${${var_root}_INCLUDE_DIR})
  endif()
  if(${var_root}_INCLUDE_DIRS)
    #message(STATUS "- Found ${name} Inc Dirs: ${${var_root}_INCLUDE_DIRS}")
    #include_directories(${${var_root}_INCLUDE_DIRS})
    list(APPEND LibSourcey_INCLUDE_DIRS ${${var_root}_INCLUDE_DIRS})    
  endif()
  if(${var_root}_LIBRARY_DIR)
    #message(STATUS "- Found ${name} Lib Dir: ${${var_root}_LIBRARY_DIR}")
    #link_directories(${${var_root}_LIBRARY_DIR})
    list(APPEND LibSourcey_LIBRARY_DIRS ${${var_root}_LIBRARY_DIR})
    #list(REMOVE_DUPLICATES LibSourcey_LIBRARY_DIRS)
  endif()
  if(${var_root}_LIBRARY_DIRS)
    #message(STATUS "- Found ${name} Lib Dirs: ${${var_root}_LIBRARY_DIRS}")
    #link_directories(${${var_root}_LIBRARY_DIRS})
    list(APPEND LibSourcey_LIBRARY_DIRS ${${var_root}_LIBRARY_DIRS})
    #list(REMOVE_DUPLICATES LibSourcey_LIBRARY_DIRS)
  endif()
  if(${var_root}_LIBRARY)
    #message(STATUS "- Found ${name} Lib: ${${var_root}_LIBRARY}")
    list(APPEND LibSourcey_INCLUDE_LIBRARIES ${${var_root}_LIBRARY})
  endif()
  if(${var_root}_LIBRARIES)
    #message(STATUS "- Found ${name} Libs: ${${var_root}_LIBRARIES}")
    list(APPEND LibSourcey_INCLUDE_LIBRARIES ${${var_root}_LIBRARIES})
  endif()
endmacro()