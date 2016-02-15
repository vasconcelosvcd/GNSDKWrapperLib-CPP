SET( TARGET_BASE_NAME "gnsdkwrapperlib" )

SET(BASE_SOURCE_PATH ".")

# sources
SET ( LIB_SRCS
	${BASE_SOURCE_PATH}/gnsdk_base.cpp	${BASE_SOURCE_PATH}/gnsdk_dsp.cpp
	${BASE_SOURCE_PATH}/gnsdk_error.cpp	${BASE_SOURCE_PATH}/gnsdk_link.cpp
	${BASE_SOURCE_PATH}/gnsdk_list.cpp	${BASE_SOURCE_PATH}/gnsdk_locale.cpp
	${BASE_SOURCE_PATH}/gnsdk_log.cpp	${BASE_SOURCE_PATH}/gnsdk_lookup_local.cpp
	${BASE_SOURCE_PATH}/gnsdk_lookup_localstream.cpp	${BASE_SOURCE_PATH}/gnsdk_manager.cpp
	${BASE_SOURCE_PATH}/gnsdk_moodgrid.cpp	${BASE_SOURCE_PATH}/gnsdk_musicid.cpp
	${BASE_SOURCE_PATH}/gnsdk_musicidfile.cpp	${BASE_SOURCE_PATH}/gnsdk_musicidstream.cpp
	${BASE_SOURCE_PATH}/gnsdk_playlist.cpp	${BASE_SOURCE_PATH}/gnsdk_rhythm.cpp
	${BASE_SOURCE_PATH}/gnsdk_std.cpp	${BASE_SOURCE_PATH}/gnsdk_storage_sqlite.cpp
	#${BASE_SOURCE_PATH}/gnsdk_taste.cpp
	${BASE_SOURCE_PATH}/gnsdk_video.cpp
)	
SET ( LIB_INCS
  ${BASE_INCLUDE_PATH}/gn_audiosource.hpp	${BASE_INCLUDE_PATH}/gn_bundlesource.hpp
  ${BASE_INCLUDE_PATH}/gn_userstore.hpp	${BASE_INCLUDE_PATH}/gnsdk.hpp
  ${BASE_INCLUDE_PATH}/gnsdk_base.hpp	${BASE_INCLUDE_PATH}/gnsdk_convert.hpp
  ${BASE_INCLUDE_PATH}/gnsdk_dsp.hpp	${BASE_INCLUDE_PATH}/gnsdk_error.hpp	
  ${BASE_INCLUDE_PATH}/gnsdk_link.hpp	${BASE_INCLUDE_PATH}/gnsdk_list.hpp
  ${BASE_INCLUDE_PATH}/gnsdk_locale.hpp	${BASE_INCLUDE_PATH}/gnsdk_log.hpp
  ${BASE_INCLUDE_PATH}/gnsdk_lookup_local.hpp	${BASE_INCLUDE_PATH}/gnsdk_lookup_localstream.hpp	
  ${BASE_INCLUDE_PATH}/gnsdk_manager.hpp	${BASE_INCLUDE_PATH}/gnsdk_moodgrid.hpp
  ${BASE_INCLUDE_PATH}/gnsdk_musicid.hpp	${BASE_INCLUDE_PATH}/gnsdk_musicidfile.hpp
  ${BASE_INCLUDE_PATH}/gnsdk_musicidstream.hpp	${BASE_INCLUDE_PATH}/gnsdk_playlist.hpp
  ${BASE_INCLUDE_PATH}/gnsdk_rhythm.hpp	${BASE_INCLUDE_PATH}/gnsdk_std.hpp
  ${BASE_INCLUDE_PATH}/gnsdk_storage_qnx.hpp	${BASE_INCLUDE_PATH}/gnsdk_storage_sqlite.hpp
  #${BASE_INCLUDE_PATH}/gnsdk_taste.hpp
  ${BASE_INCLUDE_PATH}/gnsdk_video.hpp
  ${BASE_INCLUDE_PATH}/metadata.hpp	${BASE_INCLUDE_PATH}/metadata_acr.hpp
  ${BASE_INCLUDE_PATH}/metadata_match.hpp	${BASE_INCLUDE_PATH}/metadata_music.hpp
  ${BASE_INCLUDE_PATH}/metadata_video.hpp
)

ADD_LIBRARY(${TARGET_BASE_NAME} STATIC ${LIB_SRCS} ${LIB_INCS})
#SET_TARGET_PROPERTIES(${TARGET_BASE_NAME} PROPERTIES LINKER_LANGUAGE CXX)
