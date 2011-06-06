CMAKE_MINIMUM_REQUIRED(VERSION 2.6)
PROJECT(libexpat)
INCLUDE_REGULAR_EXPRESSION("^(expat|xml|ascii|utf|name|iascii|latin|itk).*$")

INCLUDE(${CMAKE_ROOT}/Modules/CMakeBackwardCompatibilityC.cmake)
INCLUDE(${CMAKE_ROOT}/Modules/CMakeBackwardCompatibilityCXX.cmake)

SET(libexpat_SRCS
  xmlparse.c
  xmltok.c
  xmlrole.c
)

INCLUDE_DIRECTORIES(${libexpat_SOURCE_DIR})
INCLUDE_DIRECTORIES(${libexpat_BINARY_DIR})

IF(WIN32)
  IF(NOT BUILD_SHARED_LIBS)
    SET (ITK_EXPAT_STATIC 1)
  ENDIF(NOT BUILD_SHARED_LIBS)
ENDIF(WIN32)

CONFIGURE_FILE(${libexpat_SOURCE_DIR}/expatConfig.h.in
               ${libexpat_BINARY_DIR}/expatConfig.h)
CONFIGURE_FILE(${libexpat_SOURCE_DIR}/expatDllConfig.h.in
               ${libexpat_BINARY_DIR}/expatDllConfig.h)
CONFIGURE_FILE(${libexpat_SOURCE_DIR}/.NoDartCoverage
               ${libexpat_BINARY_DIR}/.NoDartCoverage)

ADD_LIBRARY(libexpat ${libexpat_SRCS})

INCLUDE(GenerateLibExpatConfig.cmake)


