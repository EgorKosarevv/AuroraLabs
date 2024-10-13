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
        key: "/apps/app_name/setting_1"
        defaultValue: "Menu Default"
    }

    ConfigurationValue {
        id: setting_2
        key: "/apps/app_name/setting_2"
        defaultValue: false
    }

    anchors.fill: parent

    Column {
        anchors.centerIn: parent


        TextField {
            width: 300
            text: setting_1.value
            onTextChanged: {
                setting_1.value = text
                console.log(setting_1.value)
            }
        }


        TextSwitch {
            text: checked ? qsTr("Active") : qsTr("Inactive")
            description: qsTr("Переключатель")
            checked: setting_2.value
            onCheckedChanged: {
                setting_2.value = checked
                console.log(setting_2.value)
            }
        }
    }


    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        text: "Задания"
        onClicked: pageStack.push(Qt.resolvedUrl(qsTr("Pages.qml")))
    }
}
