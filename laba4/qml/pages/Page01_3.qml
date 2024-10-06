import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    Label {
        anchors.centerIn: parent
        text: qsTr("Глубина стека: %1").arg(pageStack.depth)
    }
}
