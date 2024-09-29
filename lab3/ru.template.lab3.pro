TARGET = ru.template.lab3

CONFIG += \
    auroraapp

PKGCONFIG += \

SOURCES += \
    src/main.cpp \

HEADERS += \

DISTFILES += \
    qml/pages/Pages.qml \
    qml/pages/page3.qml \
    qml/pages/page4.qml \
    qml/pages/page5.qml \
    qml/pages/page6.qml \
    qml/pages/page7.qml \
    qml/pages/page8.qml \
    qml/pages/page9.qml \
    rpm/ru.template.lab3.spec \

AURORAAPP_ICONS = 86x86 108x108 128x128 172x172

CONFIG += auroraapp_i18n

TRANSLATIONS += \
    translations/ru.template.lab3.ts \
    translations/ru.template.lab3-ru.ts \
