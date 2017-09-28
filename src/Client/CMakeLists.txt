set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

find_package(Qt5Widgets)
find_package(Qt5Core)
find_package(Qt5Gui)

add_executable (Catan
    main.cpp
    mainwindow.cpp
    mainwindow.h
    mainwindow.ui
)

if(WIN32)
    if(MSVC) # Check if we are using the Visual Studio compiler
        set_target_properties(Catan PROPERTIES
            WIN32_EXECUTABLE YES
            LINK_FLAGS "/ENTRY:mainCRTStartup"
    )
    elseif(CMAKE_COMPILER_IS_GNUCXX)
        # SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mwindows") # Not tested
    else()
        message(SEND_ERROR "You are using an unsupported Windows compiler! (Not MSVC or GCC)")
    endif(MSVC)
elseif(APPLE)
    set_target_properties(Catan PROPERTIES
        MACOSX_BUNDLE YES
    )
elseif(UNIX)
    # Nothing special required
else()
    message(SEND_ERROR "You are on an unsupported platform! (Not Win32, Mac OS X or Unix)")
endif(WIN32)

target_include_directories(Catan PUBLIC ${CMAKE_CURRENT_BINARY_DIR})
target_link_libraries(Catan
    Qt5::Widgets
    Qt5::Core
    Qt5::Gui)

