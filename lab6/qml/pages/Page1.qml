import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Задание 1")
    }

    Column {
        anchors.centerIn: parent
        spacing: redCircle.width / 10

        property int delayCnt: 0

        Rectangle {
            id: redCircle
            width: 200
            height: width
            color: "red"
            radius: width*0.5
            opacity: 1
        }

        Rectangle {
            id: yellowCircle
            width: redCircle.width
            height: redCircle.width
            color: "yellow"
            radius: width*0.5
            opacity: 0.3
        }

        Rectangle {
            id: greenCircle
            width: redCircle.width
            height: redCircle.width
            color: "green"
            radius: width*0.5
            opacity: 0.3
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
                PropertyChanges { target: redCircle; opacity: 1}
                PropertyChanges { target: yellowCircle; opacity: 0.3}
                PropertyChanges { target: greenCircle; opacity: 0.3}
            },
            State {
                name: "yellow_red"
                PropertyChanges { target: redCircle; opacity: 1}
                PropertyChanges { target: yellowCircle; opacity: 1}
                PropertyChanges { target: greenCircle; opacity: 0.3}
            },
            State {
                name: "green"
                PropertyChanges { target: redCircle; opacity: 0.3}
                PropertyChanges { target: yellowCircle; opacity: 0.3}
                PropertyChanges { target: greenCircle; opacity: 1}
            },
            State {
                name: "yellow_green"
                PropertyChanges { target: redCircle; opacity: 0.3}
                PropertyChanges { target: yellowCircle; opacity: 1}
                PropertyChanges { target: greenCircle; opacity: 1}
            }
        ]
    }

    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        text: "Задания"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Pages.qml")))
    }
}
