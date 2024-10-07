import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Задание 3")
    }

    Label {
        id: tgt
        anchors.horizontalCenter: parent.horizontalCenter
        y: 200
        text: "Кнопка"
        color: "red"
        font.pixelSize: 150
        horizontalAlignment: Text.AlignHCenter
    }

    state: {
        if (mouseArea.pressedButtons){
            "start"
        } else {
            "finish"
        }
    }

    states: [
        State {
            name: "start"
        },
        State {
            name: "finish"
        }
    ]

    transitions: [
        Transition {
            from: "finish"
            to: "start"
            ParallelAnimation {
                PropertyAnimation { target: tgt; properties: "y"; from: tgt.y; to: 800; duration: 900;}
                PropertyAnimation { target: tgt; properties: "color"; from: tgt.color; to: "white"; duration: 900;}
                RotationAnimation { target: tgt; from: 0; to: 180; duration: 900;}
                PropertyAnimation { target: tgt; properties: "scale"; from: 1; to: 0.5; duration: 900;}
            }
        },
        Transition {
            from: "start"
            to: "finish"
            PropertyAnimation { target: tgt; properties: "y"; from: tgt.y; to: 200; duration: 900}
            PropertyAnimation { target: tgt; properties: "color"; from: tgt.color; to: "red"; duration: 900;}
            RotationAnimation { target: tgt; from: tgt.rotation; to: 0; duration: 900;}
            PropertyAnimation { target: tgt; properties: "scale"; from: 0.5; to: 1; duration: 900;}

        }
    ]

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        text: "Задания"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Pages.qml")))
    }
}
