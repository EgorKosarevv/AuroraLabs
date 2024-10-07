import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Задание 2")
    }

    ListModel {
        id: rectanglesModel
        ListElement { idx: 1; name: "Белый"; bgcolor: "#ffffff"; txtcolor: "black" }
        ListElement { idx: 2; name: "Синий"; bgcolor: "#0000ff"; txtcolor: "white" }
        ListElement { idx: 3; name: "Черный"; bgcolor: "#000000"; txtcolor: "red" }
    }

    Item {
        anchors {
            left: parent.left; right: parent.right;
            verticalCenter: parent.verticalCenter;
        }
        height: parent.height * 0.7

        SilicaListView {
            anchors.fill: parent
            model: rectanglesModel
            delegate: Rectangle {
                color: bgcolor
                width: parent.width
                height: 200
                Text {
                    text: idx + " " + name
                    anchors.centerIn: parent
                    color: txtcolor
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        for (var i = 0; i < rectanglesModel.rowCount(); i++) {
                            if (rectanglesModel.get(i).idx === idx) {
                                rectanglesModel.remove(i)
                            }
                        }
                    }
                }
            }
            spacing: 5
        }

        Button {
            text: "Добавить"
            anchors {
                bottom: parent.bottom;
                horizontalCenter: parent.horizontalCenter;
            }
            onClicked: {
                rectanglesModel.append({
                                           idx: rectanglesModel.rowCount() + 1,
                                           name: "Красный",
                                           bgcolor: "green",
                                           txtcolor: "white"
                                       })
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
