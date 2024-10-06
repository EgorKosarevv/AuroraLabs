import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    property int score: 0

    Item {
        anchors {
            left: parent.left;
            right: parent.right;
            verticalCenter: parent.verticalCenter;
        }
        height: parent.height * 0.8


        Cover {

            id: cover
            anchors.fill: parent

            Rectangle {
                anchors.fill: parent
                color: "#2d5b8e"
            }

            Column {
                anchors.centerIn: parent
                spacing: 20

                Text {
                    text: "Текущий счёт: " + score
                    font.pixelSize: 24
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Row {
                    spacing: 10

                    Button {
                        text: "Добавить 1"
                        onClicked: {
                            score += 1;
                        }
                    }

                    Button {
                        text: "Сбросить счёт"
                        onClicked: {
                            score = 0;
                        }
                    }
                }
            }

            Button {
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Задания"
                onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Pages.qml")))
            }
        }
    }
}
