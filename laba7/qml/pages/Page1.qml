import QtQuick 2.0
import Sailfish.Silica 1.0
import com.counter 1.0

Page {

    PageHeader {
        objectName: "Счетчик"
    }

    Counter {
        id: counter
        count: 5;
    }

    Column {
        id: column
        width: parent.width
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 20

        PageHeader {
            title: qsTr("Счетчик")
        }

        Label {
            id: label;
            anchors.horizontalCenter: parent.horizontalCenter
            text: counter.getCount();
            color: Theme.secondaryHighlightColor
            font.pixelSize: Theme.fontSizeExtraLarge
        }

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Увеличить"
            onClicked: {
                counter.inc();
                label.text = counter.getCount();
                console.log("Счетчик увеличен. Текущее значение:", counter.getCount());
            }
        }

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Обнулить"
            onClicked: {
                counter.reset();
                label.text = counter.getCount();
                console.log("Счетчик обнулен. Текущее значение:", counter.getCount());
            }
        }
    }

    IconButton {
        icon.source: "image://theme/icon-m-enter-next"
        onClicked: pageStack.push(Qt.resolvedUrl("Page2.qml"))
        x: parent.width - 100
        y: parent.height - 100
    }
}
