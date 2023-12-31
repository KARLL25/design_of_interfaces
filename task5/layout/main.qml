import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Window 2.15

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: "Task_for_signals"

    property int selectedButton: 0

    Column {
        anchors.fill: parent
        spacing: 10

        // Header
        Item {
            width: parent.width
            height: 50

            Rectangle {
                width: parent.width
                height: parent.height
                color: "gray"

                // Back arrow for the second and third states
                Rectangle {
                    width: 50
                    height: parent.height
                    color: "transparent"
                    visible: selectedButton > 0 // Only visible for the second and third states
                    anchors.left: parent.left

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            selectedButton = selectedButton - 1;
                        }

                        Text {
                            anchors.centerIn: parent
                            text: "Назад"
                            color: "white"
                        }
                    }
                }

                // Header text
                Text {
                    anchors.centerIn: parent
                    text: selectedButton === 0 ? "Header" :
                          selectedButton === 1 ? "Header 1" :
                          selectedButton === 2 ? "Header 2" :
                          "Header 3"
                }
            }
        }

        // Content and Footer Container
        Item {
            width: parent.width
            height: parent.height - 50 - 3

            // Content
            Rectangle {
                width: parent.width
                height: parent.height - 50 - 3 * 20
                color: "lightgray"

                Text {
                    id: contentText
                    anchors.centerIn: parent
                    text: selectedButton === 0 ? "Some content" :
                          selectedButton === 1 ? "Content 1" :
                          selectedButton === 2 ? "Content 2" :
                          "Content 3"
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
                    color: selectedButton === 1 ? "#696969" : "gray"
                    opacity: selectedButton === 1 ? 1 : 0.5

                    Behavior on opacity {
                        NumberAnimation {
                            duration: 500
                            easing.type: Easing.InOutQuad
                        }
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            selectedButton = 1;
                        }
                        Text {
                            anchors.centerIn: parent
                            text: "item 1"
                            color: selectedButton === 1 ? "white" : "black"
                        }
                    }
                }

                Rectangle {
                    width: parent.width / 3
                    height: parent.height
                    color: selectedButton === 2 ? "#696969" : "gray"
                    opacity: selectedButton === 2 ? 1 : 0.5

                    Behavior on opacity {
                        NumberAnimation {
                            duration: 500
                            easing.type: Easing.InOutQuad
                        }
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            selectedButton = 2;
                        }
                        Text {
                            anchors.centerIn: parent
                            text: "item 2"
                            color: selectedButton === 2 ? "white" : "black"
                        }
                    }
                }

                Rectangle {
                    width: parent.width / 3
                    height: parent.height
                    color: selectedButton === 3 ? "#696969" : "gray"
                    opacity: selectedButton === 3 ? 1 : 0.5

                    Behavior on opacity {
                        NumberAnimation {
                            duration: 500
                            easing.type: Easing.InOutQuad
                        }
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            selectedButton = 3;
                        }
                        Text {
                            anchors.centerIn: parent
                            text: "item 3"
                            color: selectedButton === 3 ? "white" : "black"
                        }
                    }
                }
            }
        }
    }
}
