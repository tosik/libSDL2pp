# - Try to locate SDL2_ttf
# This module defines:
#
#  SDL2_TTF_INCLUDE_DIR
#  SDL2_TTF_LIBRARY
#  SDL2_TTF_FOUND
#

if (MSYS)
  set(CMAKE_INCLUDE_PATH "/usr/local/cross-tools/x86_64-w64-mingw32/include")
  set(CMAKE_LIBRARY_PATH "/usr/local/cross-tools/x86_64-w64-mingw32/lib")
endif()

FIND_PATH(SDL2_TTF_INCLUDE_DIR NAMES SDL_ttf.h PATH_SUFFIXES SDL2)

FIND_LIBRARY(SDL2_TTF_LIBRARY NAMES SDL2_ttf)

INCLUDE(FindPackageHandleStandardArgs)

FIND_PACKAGE_HANDLE_STANDARD_ARGS(SDL2_ttf REQUIRED_VARS SDL2_TTF_LIBRARY SDL2_TTF_INCLUDE_DIR)

MARK_AS_ADVANCED(SDL2_TTF_INCLUDE_DIR SDL2_TTF_LIBRARY)
