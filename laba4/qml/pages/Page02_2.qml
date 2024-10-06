import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    Button {
        anchors.centerIn: parent
        text: "Назад"
        onClicked: pageStack.navigateBack(1)
    }
}
