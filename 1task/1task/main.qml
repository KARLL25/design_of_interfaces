import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: "Hello World"

    Rectangle {
        id: mainRect
        width: parent.width
        height: parent.height

        RectangleComponent1 {
            id: rect1
            anchors.centerIn: parent
        }

        RectangleComponent2 {
            id: rect2
            anchors.top: rect1.bottom
            anchors.left: rect1.right
        }

        RectangleComponent3 {
            id: rect3
            anchors.top: rect2.bottom
            anchors.left: rect2.right
        }

        RectangleComponent4 {
            id: rect4
            anchors.top: rect1.bottom
            anchors.right: rect1.left
        }

        RectangleComponent5 {
            id: rect5
            anchors.top: rect4.bottom
            anchors.right: rect4.left
        }
    }
}
