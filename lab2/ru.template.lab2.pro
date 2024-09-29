TARGET = ru.template.lab2

CONFIG += \
    auroraapp

PKGCONFIG += \

SOURCES += \
    src/main.cpp \

HEADERS += \

DISTFILES += \
    qml/pages/page1.qml \
    qml/pages/page2.qml \
    qml/pages/page3.qml \
    qml/pages/page4.qml \
    rpm/ru.template.lab2.spec \

AURORAAPP_ICONS = 86x86 108x108 128x128 172x172

CONFIG += auroraapp_i18n

TRANSLATIONS += \
    translations/ru.template.lab2.ts \
    translations/ru.template.lab2-ru.ts \
