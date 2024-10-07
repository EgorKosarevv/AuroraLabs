import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.LocalStorage 2.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Задание 6")
    }

    property var db: LocalStorage.openDatabaseSync("QDeclarativeExampleDB", "1.0", "The Example QML SQL!", 1000000)

    Column {
        y: 100
        width: parent.width

        TextField {
            id: txtfield
            placeholderText: "Текст заметки"
        }

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Добавить"
            onClicked: {
                db.transaction(function(tx) {
                    tx.executeSql("INSERT INTO notes (note_text) VALUES(?);", [txtfield.text]);
                    var rs = tx.executeSql('SELECT * FROM notes');
                    var r = []
                    for (var i = 0; i < rs.rows.length; i++) {
                        r.push(rs.rows.item(i))
                    }
                    container.notesModel = r
                });
            }
        }
    }

    Item {
        id: container
        anchors {
            left: parent.left; right: parent.right;
            verticalCenter: parent.verticalCenter;
        }
        height: parent.height * 0.5

        property var notesModel: []

        SilicaListView {
            anchors.fill: parent
            model: container.notesModel
            delegate: Button {
                width: parent.width
                height: 100
                text: modelData.note_text
                onClicked: {
                    db.transaction(function(tx) {
                        tx.executeSql("DELETE FROM notes WHERE note_text = ?;", [modelData.note_text]);
                        var rs = tx.executeSql('SELECT * FROM notes');
                        var r = []
                        for (var i = 0; i < rs.rows.length; i++) {
                            r.push(rs.rows.item(i))
                        }
                        container.notesModel = r
                    });
                }
            }
            spacing: 5
        }

        function findGreetings() {
            db.transaction(function(tx) {
                tx.executeSql('CREATE TABLE IF NOT EXISTS notes(note_text TEXT)');
                var rs = tx.executeSql('SELECT * FROM notes');
                var r = [];
                for (var i = 0; i < rs.rows.length; i++) {
                    r.push(rs.rows.item(i));
                }
                container.notesModel = r;
            });
        }
        Component.onCompleted: findGreetings()
    }

    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        text: "Задания"
        onClicked: pageStack.push(Qt.resolvedUrl(qsTr("Pages.qml")))
    }
}
