# The created file sets PACKAGE_VERSION_EXACT if the current version string and
# the requested version string are exactly the same and it sets
# PACKAGE_VERSION_COMPATIBLE if the current version major number == requested version major number
# and the current version minor number >= requested version minor number

set(PACKAGE_VERSION_MAJOR )
set(PACKAGE_VERSION_MINOR )
set(PACKAGE_VERSION_PATCH )
set(PACKAGE_VERSION "")

if(PACKAGE_VERSION VERSION_EQUAL PACKAGE_FIND_VERSION)
  set(PACKAGE_VERSION_EXACT TRUE)
else()
  set(PACKAGE_VERSION_EXACT FALSE)
  if(NOT PACKAGE_VERSION_MAJOR EQUAL PACKAGE_FIND_VERSION_MAJOR)
    set(PACKAGE_VERSION_COMPATIBLE FALSE)
  elseif(PACKAGE_VERSION_MINOR LESS PACKAGE_FIND_VERSION_MINOR)
    set(PACKAGE_VERSION_COMPATIBLE FALSE)
  else()
    set(PACKAGE_VERSION_COMPATIBLE TRUE)
  endif()
endif()

# if the installed or the using project don't have CMAKE_SIZEOF_VOID_P set, ignore it:
if("${CMAKE_SIZEOF_VOID_P}"  STREQUAL ""  OR "8" STREQUAL "")
   return()
endif()

# check that the installed version has the same 32/64bit-ness as the one which is currently searching:
if(NOT "${CMAKE_SIZEOF_VOID_P}"  STREQUAL  "8")
   math(EXPR installedBits "8 * 8")
   set(PACKAGE_VERSION "${PACKAGE_VERSION} (${installedBits}bit)")
   set(PACKAGE_VERSION_UNSUITABLE TRUE)
endif()
