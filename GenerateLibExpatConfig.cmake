CONFIGURE_FILE(
  ${libexpat_SOURCE_DIR}/Uselibexpat.cmake.in
  ${libexpat_BINARY_DIR}/Uselibexpat.cmake COPYONLY)

# Library directory
SET(libexpat_LIBRARY_DIRS_CONFIG ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})

# Include directories
SET(libexpat_INCLUDE_DIRS_CONFIG 
  ${libexpat_SOURCE_DIR}
  ${libexpat_BINARY_DIR}
  )

# Uselibexpat file
SET(libexpat_USE_FILE_CONFIG ${libexpat_BINARY_DIR}/Uselibexpat.cmake)

# Configure libexpatConfig.cmake
CONFIGURE_FILE(
  ${libexpat_SOURCE_DIR}/libexpatConfig.cmake.in
  ${libexpat_BINARY_DIR}/libexpatConfig.cmake @ONLY)
  