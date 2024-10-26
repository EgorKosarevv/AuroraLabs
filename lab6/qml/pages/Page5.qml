import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Задание 5")
    }

    Column {
        anchors.centerIn: parent


        MyButton {
            id: myButton;
            anchors.centerIn: parent.Center
            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                y: 150
                text: "Текст!"
                color: "white"
            }
            setColor: "red"
        }

    }

    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        text: "Задания"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Pages.qml")))
    }
}
