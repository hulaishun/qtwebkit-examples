QT += network \
    webkitwidgets \
    widgets
HEADERS += src/BrowserWindow.h \
    src/BrowserView.h \
    src/TitleBar.h \
    src/HomeView.h \
    src/AddressBar.h \
    src/BookmarksView.h \
    src/flickcharm.h \
    src/ZoomStrip.h \
    src/ControlStrip.h \
    src/webview.h
SOURCES += src/Main.cpp \
    src/BrowserWindow.cpp \
    src/BrowserView.cpp \
    src/TitleBar.cpp \
    src/HomeView.cpp \
    src/AddressBar.cpp \
    src/BookmarksView.cpp \
    src/flickcharm.cpp \
    src/ZoomStrip.cpp \
    src/ControlStrip.cpp \
    src/webview.cpp
RESOURCES += src/anomaly.qrc

symbian {
    TARGET.UID3 = 0xA000CF71
    CONFIG += qt_demo
    TARGET.CAPABILITY = NetworkServices
    TARGET.EPOCHEAPSIZE = 0x20000 0x2000000
}

target.path = $$[QT_INSTALL_EXAMPLES]/qtwebkit-examples-and-demos/embedded/anomaly
sources.files = $$SOURCES $$HEADERS $$RESOURCES *.pro src/images
sources.path = $$[QT_INSTALL_EXAMPLES]/qtwebkit-examples-and-demos/embedded/anomaly
INSTALLS += target sources
