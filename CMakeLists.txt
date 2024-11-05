cmake_minimum_required(VERSION 3.16)

project(glyc VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appglyc
    main.cpp
)

qt_add_resources(appglyc "assets"
    PREFIX "/"
    FILES
        assets/chat.svg
        assets/encrypted.svg
        assets/dencrypted.svg
        assets/morev.svg
        assets/manage.svg
        assets/settings.svg
        assets/usages.svg
        assets/input-cipher-dial.gif
)

qt_add_qml_module(appglyc
    URI glyc
    VERSION 1.0
    QML_FILES
        Main.qml
        AvailableOptionsDialog.qml
        ButtonGlyc.qml
        Chat.qml
        #uicomponents/ChatList.qml
        #uicomponents/ChatUser.qml
        Cipher.qml
        #uicomponents/DataManagement.qml
        Decipher.qml
        #uicomponents/Settings.qml
        #uicomponents/Usages.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appglyc PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appglyc
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
    QT_ANDROID_PACKAGE_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/android
)

target_link_libraries(appglyc
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appglyc
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
