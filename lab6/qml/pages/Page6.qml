import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Задание 6")
    }

    Column {
        anchors.centerIn: parent
        Row {
            anchors.centerIn: parent.Center
            spacing: 5

            id: row
            property int count: 0

            MyCounter {
                num: parseInt(row.count / 360000) // Часы
            }
            MyCounter {
                num: parseInt(row.count / 6000) % 60 // Минуты
            }
            MyCounter {
                num: parseInt(row.count / 100) % 60 // Секунды
            }
        }

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            width: 200
            height: 100
            text: "Старт"
            onClicked: {
                var time = parseInt(row.count / 360000) + ":" + parseInt(row.count / 6000) % 60 + ":" + parseInt(row.count / 100) % 60
                timer.running = !timer.running
                console.log(text === "Старт" ? "Старт " + time : "Стоп " + time)
                timeModel.append({ time: text === "Старт" ? "Старт " + time : "Стоп " + time })
                text = text === "Старт" ? "Стоп" : "Старт"
            }
        }

        SilicaListView {
            width: parent.width
            height: 400
            model: timeModel

            delegate: Text {
                text: time
            }

            spacing: 5
        }

    }

    ListModel {
        id: timeModel
    }

    Timer {
        id: timer
        interval: 1000 // Установите интервал на 1000 миллисекунд (1 секунда)
        repeat: true
        running: false
        onTriggered: {
            row.count += 100; // Увеличиваем на 100 для каждой секунды
        }
    }

    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        text: "Задания"
        onClicked: pageStack.replace(Qt.resolvedUrl(qsTr("Pages.qml")))
    }
}
