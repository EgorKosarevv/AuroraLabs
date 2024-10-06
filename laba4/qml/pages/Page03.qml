import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    Column {
        anchors.centerIn: parent

        Button {
            text: "Ввести текст"
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

    Dialog {
        id: dialog
        property alias firstTextFieldValue: firstTextField.text

        Column {
            width: parent.width
            spacing: Theme.paddingMedium
            DialogHeader { }
            TextField {
                id: firstTextField
                width: parent.width
            }
        }
        onAccepted: field.text = firstTextFieldValue
    }


    Button {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Задания"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Pages.qml")))
    }
}
