

set(US_LogService_LIBRARIES usLogService)
set(US_LogService_RUNTIME_LIBRARY_DIRS "/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/bin")

if(NOT TARGET usLogService)
  include("${CMAKE_CURRENT_LIST_DIR}/usLogServiceTargets.cmake")
endif()
