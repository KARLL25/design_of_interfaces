import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: "Scrolling Pages with PageIndicator"

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: pageIndicator.currentIndex

        Page {
            Rectangle {
                width: swipeView.width
                height: swipeView.height
                color: "red"
                Text {
                    anchors.centerIn: parent
                    text: "Red Page"
                    font.pixelSize: 20
                    color: "white"
                }
            }
        }

        Page {
            Rectangle {
                width: swipeView.width
                height: swipeView.height
                color: "yellow"
                Text {
                    anchors.centerIn: parent
                    text: "Yellow Page"
                    font.pixelSize: 20
                    color: "black"
                }
            }
        }

        Page {
            Rectangle {
                width: swipeView.width
                height: swipeView.height
                color: "green"
                Text {
                    anchors.centerIn: parent
                    text: "Green Page"
                    font.pixelSize: 20
                    color: "white"
                }
            }
        }
    }

    PageIndicator {
        id: pageIndicator
        count: swipeView.count
        currentIndex: swipeView.currentIndex

        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
