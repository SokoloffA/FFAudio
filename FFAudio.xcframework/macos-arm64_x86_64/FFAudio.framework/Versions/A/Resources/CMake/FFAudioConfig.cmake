get_filename_component(_FFAUDIO_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)

if (EXISTS "${_FFAUDIO_CMAKE_DIR}/../../FFAudio")
    get_filename_component(FFAUDIO_FRAMEWORK_DIR "${_FFAUDIO_CMAKE_DIR}/../.." ABSOLUTE)
elseif (EXISTS "${_FFAUDIO_CMAKE_DIR}/FFAudio.framework")
    get_filename_component(FFAUDIO_FRAMEWORK_DIR "${_FFAUDIO_CMAKE_DIR}/FFAudio.framework" ABSOLUTE)
elseif (EXISTS "${_FFAUDIO_CMAKE_DIR}/macos-arm64_x86_64/FFAudio.framework")
    get_filename_component(FFAUDIO_FRAMEWORK_DIR "${_FFAUDIO_CMAKE_DIR}/macos-arm64_x86_64/FFAudio.framework" ABSOLUTE)
else()
    message(FATAL_ERROR "Could not find FFAudio.framework relative to FFAudioConfig.cmake")
endif()

set(FFAUDIO_INCLUDE_DIR "${FFAUDIO_FRAMEWORK_DIR}/Headers")
set(FFAUDIO_LIBRARY "${FFAUDIO_FRAMEWORK_DIR}/FFAudio")

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(FFAudio DEFAULT_MSG FFAUDIO_LIBRARY FFAUDIO_INCLUDE_DIR)

if (FFAudio_FOUND AND NOT TARGET FFAudio::FFAudio)
    add_library(FFAudio::FFAudio UNKNOWN IMPORTED)
    set_target_properties(FFAudio::FFAudio PROPERTIES
        IMPORTED_LOCATION "${FFAUDIO_LIBRARY}"
        INTERFACE_INCLUDE_DIRECTORIES "${FFAUDIO_INCLUDE_DIR}"
    )
endif()
