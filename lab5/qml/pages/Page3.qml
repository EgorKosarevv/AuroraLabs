import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Задание 3")
    }

    Item {
        id: item
        anchors {
            left: parent.left; right: parent.right;
            verticalCenter: parent.verticalCenter;
        }
        height: parent.height * 0.8

        property var jsModel: [
            { idx: 1, name: "Белый", bgcolor: "purple", txtcolor: "black" },
            { idx: 2, name: "Красный", bgcolor: "#0000ff", txtcolor: "pink" },
            { idx: 3, name: "Фиолетовый", bgcolor: "#000000", txtcolor: "white" },
            { idx: 4, name: "Синий", bgcolor: "#ff0000", txtcolor: "gray" },
            { idx: 4, name: "черный", bgcolor: "#ffffff", txtcolor: "green" },
        ]

        SilicaListView {
            anchors.fill: parent
            model: item.jsModel
            delegate: Rectangle {
                color: modelData.bgcolor
                width: parent.width
                height: 200
                Text {
                    text: modelData.name
                    color: modelData.txtcolor
                    anchors.centerIn: parent
                }
            }
            spacing: 5
        }
    }

    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        text: "Задания"
        onClicked: pageStack.push(Qt.resolvedUrl(qsTr("Pages.qml")))
    }
}
