import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    Column {
        anchors.centerIn: parent
        spacing: 50

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Прикрепить страницу"
            onClicked: pageStack.pushAttached(Qt.resolvedUrl(qsTr("Page02_2.qml")))
        }
        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Открепить страницу"
            onClicked: pageStack.popAttached()
        }
    }
    Button {
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        width: 100
        text: "<"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Pages.qml")))
    }
}
