import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: "Task_for_signals"

    Rectangle {
        id: mainRect
        width: parent.width
        height: parent.height

        // Header
        Rectangle {
            id: header
            width: parent.width
            height: 50
            color: "gray"
            Text {
                anchors.centerIn: parent
                text: "Header"
            }
        }

        // Content
        Rectangle {
                id: content
                width: parent.width
                height: parent.height - header.height - 3 * footerRow.height - 20
                color: "lightgray"
                anchors.top: header.bottom
                anchors.margins: 10
                anchors.bottom: footerRow.top
                Text{
                    anchors.centerIn: parent
                    text:"Content"
                }

        }


        // Footer
        Row {
            id: footerRow
            width: parent.width
            height: 100 // Высоту подвала можно настроить на свой вкус
            anchors.bottom: parent.bottom
            spacing: 10

            Rectangle {
                width: parent.width / 3
                height: parent.height
                color: "gray"
                Text {
                    anchors.centerIn: parent
                    text: "item 1"
                }
            }

            Rectangle {
                width: parent.width / 3
                height: parent.height
                color: "gray"
                Text {
                    anchors.centerIn: parent
                    text: "item 2"
                }
            }

            Rectangle {
                width: parent.width / 3
                height: parent.height
                color: "gray"
                Text {
                    anchors.centerIn: parent
                    text: "item 3"
                }
            }
        }
    }
}
