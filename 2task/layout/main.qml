import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: "Task_for_signals"

    Column {
        anchors.fill: parent
        spacing: 10

        // Header
        Rectangle {
            width: parent.width
            height: 50
            color: "gray"
            Text {
                anchors.centerIn: parent
                text: "Header"
            }
        }

        // Content and Footer Container
        Item {
            width: parent.width
            height: parent.height - 50 - 3  // Устанавливаем высоту блока Content и Footer

            // Content
            Rectangle {
                width: parent.width
                height: parent.height - 50 - 3 * 20
                color: "lightgray"
                Text {
                    anchors.centerIn: parent
                    text: "Content"
                }
            }

            // Footer
            Row {
                id: footerRow
                width: parent.width
                height: 100
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
}
