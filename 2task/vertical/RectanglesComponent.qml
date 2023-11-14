import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ColumnLayout {
    spacing: 5

    Rectangle {
        id: rect1
        Layout.fillWidth: true
        Layout.preferredHeight: 120
        border.width: 1
        color: Qt.rgba(Math.random(), Math.random(), Math.random(), 0.7)
        Text {
            text: "My color:" +rect1.color
            anchors.centerIn: rect1
            font.pixelSize: 24
        }
    }


}
