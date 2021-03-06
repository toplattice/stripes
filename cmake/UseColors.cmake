if(CMAKE_COMPILER_IS_GNUCXX)
	# If GCC >= 4.9, just activate the right option
	if(NOT CMAKE_CXX_COMPILER_VERSION VERSION_LESS 4.9)
		message(STATUS "GCC >= 4.9 detected, enabling colored diagnostics")
		set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fdiagnostics-color=auto")
		set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -fdiagnostics-color=auto")
		set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -fdiagnostics-color=auto")
		return()
	endif()
endif()
