import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: "Page Switching Example"

    Rectangle {
        width: parent.width
        height: 50
        color: "lightblue"

        Row {
            spacing: 10

            Button {
                id: backButton
                text: "Back"
                visible: stackView.depth > 1
                onClicked: stackView.pop()
            }

            Label {
                text: stackView.currentItem ? stackView.currentItem.itemName : "Home"
            }
        }
    }

    StackView {
        id: stackView
        initialItem: redPage
        anchors.fill: parent

        onCurrentItemChanged: {

            backButton.visible = stackView.depth > 1;
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
