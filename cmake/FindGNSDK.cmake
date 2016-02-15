FIND_PATH(GNSDK_ROOT_DIR NAMES include/gnsdk.hpp HINTS $ENV{GNSDK_ROOT})

SET(GNSDK_FOUND 0)

IF(GNSDK_ROOT_DIR)
  IF(EXISTS "${GNSDK_ROOT_DIR}/include/gnsdk.hpp")
        SET(GNSDK_INCLUDE_DIR "${GNSDK_ROOT_DIR}/include")
		SET(GNSDK_EXTERNAL_DIR "${GNSDK_ROOT_DIR}/external")
		if(WIN32)
			if(CMAKE_SIZEOF_VOID_P EQUAL 8)
				SET(GNSDK_PLATFORM_DIR "${GNSDK_EXTERNAL_DIR}/win_x86-64")
			else()
				SET(GNSDK_PLATFORM_DIR "${GNSDK_EXTERNAL_DIR}/win_x86-32")
			endif()

		endif()
		
		
		
        SET(GNSDK_FOUND 1)
  ELSE()
      MESSAGE(FATAL_ERROR "GNSDK was not found.")
  ENDIF()
  
  IF(GNSDK_FOUND)
        FIND_LIBRARY(GNSDK_LIBRARY_DEBUG NAMES gnsdkwrapperlibd gnsdkwrapperlib HINTS ${GNSDK_ROOT_DIR}/../build/lib)
        FIND_LIBRARY(GNSDK_LIBRARY_RELEASE NAMES gnsdkwrapperlib HINTS ${GNSDK_ROOT_DIR}/../build/lib)
        
        SET(GNSDK_LIBRARY
          debug ${GNSDK_LIBRARY_DEBUG}
          optimized ${GNSDK_LIBRARY_RELEASE}
        ) 
		
		if(WIN32)
			set(GNSK_LIB_DIR "")
			if(CMAKE_SIZEOF_VOID_P EQUAL 8)
				SET(GNSK_LIB_DIR ${GNSDK_ROOT_DIR}/lib/win_x86-64)
			else()
				SET(GNSK_LIB_DIR ${GNSDK_ROOT_DIR}/lib/win_x86-32)
			endif()
			
			set(GNSDK_LIBRARY ${GNSDK_LIBRARY}
			${GNSK_LIB_DIR}/gnsdk_dsp.lib
			${GNSK_LIB_DIR}/gnsdk_link.lib
			${GNSK_LIB_DIR}/gnsdk_lookup_local.lib
			${GNSK_LIB_DIR}/gnsdk_lookup_localstream.lib
			${GNSK_LIB_DIR}/gnsdk_manager.lib
			${GNSK_LIB_DIR}/gnsdk_moodgrid.lib
			${GNSK_LIB_DIR}/gnsdk_musicid.lib
			${GNSK_LIB_DIR}/gnsdk_musicid_file.lib
			${GNSK_LIB_DIR}/gnsdk_musicid_stream.lib
			${GNSK_LIB_DIR}/gnsdk_playlist.lib
			${GNSK_LIB_DIR}/gnsdk_storage_sqlite.lib
			${GNSK_LIB_DIR}/gnsdk_video.lib
			)
			
		endif()
		
  ENDIF()
ELSE()
MESSAGE(FATAL_ERROR "GNSDK was not found.")
ENDIF()
