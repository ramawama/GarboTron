

set(US_WebConsole_LIBRARIES usWebConsole)
set(US_WebConsole_RUNTIME_LIBRARY_DIRS "/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/bin")

if(NOT TARGET usWebConsole)
  include("${CMAKE_CURRENT_LIST_DIR}/usWebConsoleTargets.cmake")
endif()