

set(US_ServiceComponent_LIBRARIES usServiceComponent)
set(US_ServiceComponent_RUNTIME_LIBRARY_DIRS "/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/bin")

if(NOT TARGET usServiceComponent)
  include("${CMAKE_CURRENT_LIST_DIR}/usServiceComponentTargets.cmake")
endif()
