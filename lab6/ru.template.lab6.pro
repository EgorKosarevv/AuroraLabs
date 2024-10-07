TARGET = ru.template.lab6

CONFIG += \
    auroraapp

PKGCONFIG += \

SOURCES += \
    src/main.cpp \

HEADERS += \

DISTFILES += \
    qml/pages/MyLight.qml \
    qml/pages/Page1.qml \
    qml/pages/Page2.qml \
    qml/pages/Page3.qml \
    qml/pages/Page4.qml \
    qml/pages/Page5.qml \
    qml/pages/Page6.qml \
    qml/pages/Pages.qml \
    rpm/ru.template.lab6.spec \

AURORAAPP_ICONS = 86x86 108x108 128x128 172x172

CONFIG += auroraapp_i18n

TRANSLATIONS += \
    translations/ru.template.lab6.ts \
    translations/ru.template.lab6-ru.ts \
