import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Задание 8")
    }

    ConfigurationGroup {
        id: settings
        path: "/apps/app_name/settings"
        property string tf: ""
        property bool sw: false
    }

    anchors.fill: parent

    Column {
        anchors.centerIn: parent



        TextField {
            width: 300
            text: settings.tf
            onTextChanged: {
                settings.tf = text
                console.log(settings.tf)
            }
        }

        TextSwitch {
            text: checked ? qsTr("Active") : qsTr("Inactive")
            description: qsTr("Переключатель")
            checked: settings.sw
            onCheckedChanged: {
                settings.sw = checked
                console.log(settings.sw)
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
