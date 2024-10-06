
import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Grid {
        columns: 2
        property int btnWidth: 250
        anchors.centerIn: parent
        spacing: 20

        Button {
            text: "Задание 1"
            onClicked: pageStack.replace(Qt.resolvedUrl("Page01_1.qml"))
            width: parent.btnWidth
        }
        Button {
            text: "Задание 2"
            onClicked: pageStack.replace(Qt.resolvedUrl("Page02_1.qml"))
            width: parent.btnWidth
        }
        Button {
            text: "Задание 3"
            onClicked: pageStack.replace(Qt.resolvedUrl("Page03.qml"))
            width: parent.btnWidth
        }
        Button {
            text: "Задание 4"
            onClicked: pageStack.replace(Qt.resolvedUrl("Page04.qml"))
            width: parent.btnWidth
        }
        Button {
            text: "Задание 5"
            onClicked: pageStack.replace(Qt.resolvedUrl("Page05.qml"))
            width: parent.btnWidth
        }
        Button {
            text: "Задание 6"
            onClicked: pageStack.replace(Qt.resolvedUrl("Page06.qml"))
            width: parent.btnWidth
        }
        Button {
            text: "Задание 7"
            onClicked: pageStack.replace(Qt.resolvedUrl("Page07.qml"))
            width: parent.btnWidth
        }
        Button {
            text: "Задание 8"
            onClicked: pageStack.replace(Qt.resolvedUrl("Page08.qml"))
            width: parent.btnWidth
        }
        Button {
            text: "Задание 9"
            onClicked: pageStack.replace(Qt.resolvedUrl("Page09.qml"))
            width: parent.btnWidth
        }
        Button {
            text: "Задание 10"
            onClicked: pageStack.replace(Qt.resolvedUrl("Page10.qml"))
            width: parent.btnWidth
        }
        Button {
            text: "Задание 11"
            onClicked: pageStack.replace(Qt.resolvedUrl("Page11.qml"))
            width: parent.btnWidth
        }
    }
}
