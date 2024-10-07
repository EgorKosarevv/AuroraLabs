import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Задание 7")
    }

    ConfigurationValue {
        id: setting_1
        key: "/sailfish/i18n/lc_timeformat24h"
       // defaultValue: false
    }


    Column {
        anchors.centerIn: parent
        Button {
            text: "Текст1"
            onClicked: setting_1.value = 1
        }
        Button {
            text: "Текст2"
            onClicked: setting_1.value = 2
        }
        Button {
            text: "Флаг"
            onClicked: console.log(setting_1.value)
        }
//        Button {
//            text: "24"
//            onClicked: setting_1.value = 24
//        }
    }

    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        text: "Задания"
        onClicked: pageStack.push(Qt.resolvedUrl(qsTr("Pages.qml")))
    }
}
