import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    SilicaListView {
        PullDownMenu {
            MenuItem {
                text: "Текст 1"
                onClicked: field.text = text
            }
            MenuItem {
                text: "Текст 2"
                onClicked: field.text = text
            }
            MenuLabel { text: "Надпись" }
        }
        anchors {
            left: parent.left; right: parent.right;
        }
        height: parent.height * 0.1
        y: parent.height * 0.1
        header: PageHeader { title: "Список 1" }
    }

    TextField {
        id: field
        text: "???"
        anchors.centerIn: parent
    }

    SilicaListView {
        PushUpMenu {
            MenuItem {
                text: "Текст 3"
                onClicked: field.text = text
            }
            MenuItem {
                text: "Текст 4"
                onClicked: field.text = text
            }
            MenuLabel { text: "Надпись" }
        }
        anchors {
            left: parent.left; right: parent.right;
        }
        height: parent.height * 0.1
        y: parent.height * 0.75
        header: PageHeader { title: "Список 2" }
    }

    Button {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Задания"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Pages.qml")))
    }
}
