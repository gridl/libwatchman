EXECUTE_PROCESS(COMMAND brew --prefix RESULT_VARIABLE DETECT_BREW OUTPUT_VARIABLE BREW_PREFIX ERROR_QUIET OUTPUT_STRIP_TRAILING_WHITESPACE)

IF (${DETECT_BREW} EQUAL 0)
    INCLUDE_DIRECTORIES(${BREW_PREFIX}/include)
    LINK_DIRECTORIES(${BREW_PREFIX}/lib)
ENDIF()