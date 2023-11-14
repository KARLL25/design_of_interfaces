import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 800
    height: 400

    RowLayout {
        anchors.fill: parent

        RectanglesComponent {}

        Item {
            Layout.fillHeight: true
            Layout.preferredHeight: 10
        }

        RectanglesComponent {}

        Item {
            Layout.fillHeight: true
            Layout.preferredHeight: 10
        }

        RectanglesComponent {}
    }
}
