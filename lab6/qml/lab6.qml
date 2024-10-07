import QtQuick 2.0
import Sailfish.Silica 1.0

ApplicationWindow {
    objectName: "applicationWindow"
    initialPage: Qt.resolvedUrl("pages/Pages.qml")
    cover: Qt.resolvedUrl("cover/DefaultCoverPage.qml")
    allowedOrientations: defaultAllowedOrientations

    Connections {
        property int pushed: 0
        property int popped: 0
        property int current: 0
        target: pageStack
        onDepthChanged: {
            if (current < pageStack.depth) pushed++
            if (current > pageStack.depth) popped++
            current = pageStack.depth;
            console.log("depth: " + current, "pushed: " + pushed, "popped: " + popped);
        }
    }
}
