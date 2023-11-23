import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 300
    height: 400
    title: "Трехцветный светофор"

    Rectangle {
        id: rect
        width: parent.width
        height: parent.height
        color: "lightgrey"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (parent.state === "stop") {
                    parent.state = "caution";
                } else if (parent.state === "caution") {
                    parent.state = "go";
                } else {
                    parent.state = "stop";
                }
            }
        }

        Column {
            anchors.centerIn: parent
            spacing: 5

            Rectangle {
                id: rect_red
                width: 50
                height: 50
                color: "red"
                border.color: "black"
                border.width: 1

                Behavior on color {
                    ColorAnimation {
                        duration: 500
                    }
                }
            }

            Rectangle {
                id: rect_yellow
                width: 50
                height: 50
                color: "yellow"
                border.color: "black"
                border.width: 1

                Behavior on color {
                    ColorAnimation {
                        duration: 500
                    }
                }
            }

            Rectangle {
                id: rect_green
                width: 50
                height: 50
                color: "green"
                border.color: "black"
                border.width: 1

                Behavior on color {
                    ColorAnimation {
                        duration: 500
                    }
                }
            }
        }

        states: [
            State {
                name: "stop"
                PropertyChanges { target: rect_red; color: "red" }
                PropertyChanges { target: rect_yellow; color: "gray" }
                PropertyChanges { target: rect_green; color: "gray" }
            },
            State {
                name: "caution"
                PropertyChanges { target: rect_red; color: "gray" }
                PropertyChanges { target: rect_yellow; color: "yellow" }
                PropertyChanges { target: rect_green; color: "gray" }
            },
            State {
                name: "go"
                PropertyChanges { target: rect_red; color: "gray" }
                PropertyChanges { target: rect_yellow; color: "gray" }
                PropertyChanges { target: rect_green; color: "green" }
            }
        ]

        transitions: [
            Transition {
                from: "stop"
                to: "caution"
                ColorAnimation {
                    duration: 500
                }
            },
            Transition {
                from: "caution"
                to: "go"
                ColorAnimation {
                    duration: 500
                }
            },
            Transition {
                from: "go"
                to: "stop"
                ColorAnimation {
                    duration: 500
                }
            }
        ]
        state: "stop"
    }
}
