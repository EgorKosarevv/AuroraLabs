TARGET = ru.template.laba7

CONFIG += \
    sailfishapp

PKGCONFIG += \

SOURCES += \
    src/counter.cpp \
    src/main.cpp \
    src/stringlist.cpp

HEADERS += \
    src/counter.h \
    src/stringlist.h

DISTFILES += \
    qml/pages/Page1.qml \
    qml/pages/Page2.qml \
    rpm/ru.template.laba7.spec \

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

CONFIG += sailfishapp_i18n

TRANSLATIONS += \
    translations/ru.template.laba7.ts \
    translations/ru.template.laba7-ru.ts \
