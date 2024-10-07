import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Задание 4")
    }

    Column {
        anchors.centerIn: parent
        spacing: redCircle.width / 10
        property int delayCnt: 0

        MyLight {
            id: redCircle
            color: "red"
        }
        MyLight {
            id: yellowCircle
            color: "yellow"
        }
        MyLight {
            id: greenCircle
            color: "green"
        }

        Timer {
            interval: 150; running: true; repeat: true
            onTriggered: parent.delayCnt = (parent.delayCnt + 1) % 40
        }

        state: {
            if (delayCnt < 10){
                "red"
            } else if (delayCnt < 20) {
                "yellow_red"
            } else if (delayCnt < 30) {
                "green"
            } else {
                "yellow_green"
            }
        }

        states: [
            State {
                name: "red"
                StateChangeScript {
                    script: {
                        redCircle.opacity = 1
                        yellowCircle.opacity = 0.3
                        greenCircle.opacity = 0.3
                    }
                }
            },
            State {
                name: "yellow_red"
                StateChangeScript {
                    script: {
                        redCircle.opacity = 1
                        yellowCircle.opacity = 1
                        greenCircle.opacity = 0.3
                    }
                }
            },
            State {
                name: "green"
                StateChangeScript {
                    script: {
                        redCircle.opacity = 0.3
                        yellowCircle.opacity = 0.3
                        greenCircle.opacity = 1
                    }
                }
            },
            State {
                name: "yellow_green"
                StateChangeScript {
                    script: {
                        redCircle.opacity = 0.3
                        yellowCircle.opacity = 1
                        greenCircle.opacity = 1
                    }
                }
            }
        ]
    }


    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        text: "Задания"
        onClicked: pageStack.push(Qt.resolvedUrl(qsTr("Pages.qml")))
    }
}
