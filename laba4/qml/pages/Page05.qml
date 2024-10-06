import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    Column {
        anchors.centerIn: parent

        Button {
            text: "Ввести время"
            onClicked: dialog.open()
            anchors.horizontalCenter: parent.horizontalCenter
        }
        TextField {
            id: field
            anchors.horizontalCenter: parent.horizontalCenter
            width: 400
            text: "???"
        }
    }

    TimePickerDialog {
        id: dialog
        onAccepted: field.text = time.toTimeString()
    }

    Button {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Задания"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Pages.qml")))
    }
}
