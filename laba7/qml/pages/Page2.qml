import QtQuick 2.0
import Sailfish.Silica 1.0
import com.stringlist 1.0

Page {
    Column {
        anchors.fill: parent
        spacing: 0

        PageHeader {
            objectName: "Список"
        }

        StringList {
            id: stringList
        }

        Column {
            id: column
            width: parent.width
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 20

            PageHeader {
                title: qsTr("Список")
            }

            TextField {
                id: textField;
                placeholderText: "Введите слово"
            }

            Button {
                text: "Добавить слово"
                onClicked: {
                    stringList.add(textField.text)
                    label.text = stringList.getAll();
                }
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                text: "Удалить последнее"
                onClicked: {
                    stringList.popBack();
                    label.text = stringList.getAll();
                }
                anchors.horizontalCenter: parent.horizontalCenter
            }

            TextField {
                id: label;
                width: parent.width;
                x: Theme.horizontalPageMargin
                text: stringList.getAll()
                readOnly: true;
            }
        }
    }
}
