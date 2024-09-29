import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Column {
        anchors.centerIn: parent

        Switch {
            id: mute
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Label {
            text: mute.checked ? "Включен" : "Выключен"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: mute.bottom
            anchors.topMargin: 10
        }
    }

    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        text: "Задания"
        onClicked: pageStack.push(Qt.resolvedUrl("Pages.qml"))
    }
}
