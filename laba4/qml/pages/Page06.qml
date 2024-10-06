import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    Item {
        anchors.centerIn: parent
        width: 500
        height: 700
        SilicaListView {
            anchors.fill: parent
            model: ListModel {
                ListElement { desc: "Учиться1"; date: "06.10.24"; }
                ListElement { desc: "Учиться2"; date: "07.10.24"; }
                ListElement { desc: "Учиться3"; date: "08.10.24"; }
                ListElement { desc: "Учиться4"; date: "09.10.24"; }
            }
            header: PageHeader { title: "Список дел" }
            section {
                property: 'date'
                delegate: SectionHeader { text: section }
            }
            delegate: Text { text: desc }
            HorizontalScrollDecorator {}
        }

    }

    Button {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Задания"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Pages.qml")))
    }
}
