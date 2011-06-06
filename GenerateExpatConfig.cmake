CONFIGURE_FILE(
  ${expat_SOURCE_DIR}/Useexpat.cmake.in
  ${expat_BINARY_DIR}/Useexpat.cmake COPYONLY)

# Library directory
SET(expat_LIBRARY_DIRS_CONFIG ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})

# Include directories
SET(expat_INCLUDE_DIRS_CONFIG 
  ${expat_SOURCE_DIR}
  ${expat_BINARY_DIR}
  )

# Useexpat file
SET(expat_USE_FILE_CONFIG ${expat_BINARY_DIR}/Useexpat.cmake)

# Configure expatConfig.cmake
CONFIGURE_FILE(
  ${expat_SOURCE_DIR}/expatConfig.cmake.in
  ${expat_BINARY_DIR}/expatConfig.cmake @ONLY)
  