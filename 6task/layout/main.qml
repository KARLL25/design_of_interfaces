import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: "Page Switching Example"

    // Header
    header: ToolBar {
        id: page_header

        height: 40


        Row {
            spacing: 10

            Button {
                id: backButton
                text: "Back"
                visible: stackView.depth > 1
                onClicked: stackView.pop()


            }

            Label {
                id: header_page_text

                text: stackView.currentItem ? stackView.currentItem.itemName : "Home"
                anchors.centerIn: verticalCenter
            }
        }
    }

    // StackView
    StackView {
        id: stackView
        initialItem: redPage
        anchors.fill: parent

        onCurrentItemChanged: {
            console.log("StackView Depth:", stackView.depth);
            backButton.visible = stackView.depth > 1;
            console.log("Back Button Visibility:", backButton.visible);
            header_page_text.text = stackView.currentItem ? stackView.currentItem.itemName : "Home";
        }

        // Страница красного цвета
        Component {
            id: redPage
            Rectangle {
                width: stackView.width
                height: stackView.height
                color: "red"

                property string itemName: "Page Red"

                Text {
                    anchors.centerIn: parent
                    text: itemName
                    color: "white"
                    font.pixelSize: 20
                }

                Row {
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter

                    Button {
                        text: "Green"
                        onClicked: stackView.push(greenPage)
                    }
                    Button {
                        text: "Yellow"
                        onClicked: stackView.push(yellowPage)
                    }
                }
            }
        }

        // Страница зеленого цвета
        Component {
            id: greenPage
            Rectangle {
                width: stackView.width
                height: stackView.height

                color: "green"

                property string itemName: "Page Green"

                Text {
                    anchors.centerIn: parent
                    text: itemName
                    color: "white"
                    font.pixelSize: 20
                }

                Row {
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter

                    Button {
                        text: "Red"
                        onClicked: stackView.push(redPage)
                    }
                    Button {
                        text: "Yellow"
                        onClicked: stackView.push(yellowPage)
                    }
                }
            }
        }

        // Страница желтого цвета
        Component {
            id: yellowPage
            Rectangle {
                width: stackView.width
                height: stackView.height

                color: "yellow"

                property string itemName: "Page Yellow"

                Text {
                    anchors.centerIn: parent
                    text: itemName
                    color: "black"
                    font.pixelSize: 20
                }

                Row {
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter

                    Button {
                        text: "Red"
                        onClicked: stackView.push(redPage)
                    }
                    Button {
                        text: "Green"
                        onClicked: stackView.push(greenPage)
                    }
                }
            }
        }
    }
}
