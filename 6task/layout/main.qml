import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: "Page Switching Example"

    StackView {
        id: stackView
        initialItem: redPage

        anchors.fill: parent

        // Страница красного цвета
        Component {
            id: redPage
            Rectangle {
                width: stackView.width
                height: stackView.height

                color: "red"

                Text {
                    anchors.centerIn: parent
                    text: "Page Red"
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

                Text {
                    anchors.centerIn: parent
                    text: "Page Green"
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

                Text {
                    anchors.centerIn: parent
                    text: "Page Yellow"
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
