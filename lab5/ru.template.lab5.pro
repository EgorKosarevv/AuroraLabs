TARGET = ru.template.lab5

CONFIG += \
    auroraapp

PKGCONFIG += \

SOURCES += \
    src/main.cpp \

HEADERS += \

DISTFILES += \
    qml/pages/Page2.qml \
    qml/pages/Page3.qml \
    qml/pages/Page4.qml \
    qml/pages/Page5.qml \
    qml/pages/Page6.qml \
    qml/pages/Page7.qml \
    qml/pages/Page8.qml \
    rpm/ru.template.lab5.spec \

AURORAAPP_ICONS = 86x86 108x108 128x128 172x172

CONFIG += auroraapp_i18n

TRANSLATIONS += \
    translations/ru.template.lab5.ts \
    translations/ru.template.lab5-ru.ts \
