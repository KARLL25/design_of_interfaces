import Felgo
import QtQuick
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 2.15

Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("Task_for_ListView_Model")
    property int defMargin: 8




    Page {
        id: page
        anchors.fill: parent

        Rectangle {
                width: parent.width
                height: parent.height
                gradient: Gradient {
                    GradientStop { position: 0; color: "green" }
                    GradientStop { position: 1; color: "lightgreen" }
                }
                z: -1
            }


        footer: PageFooter {
            onNewMessage: {

                var newMsg = {};
                newMsg.name = msg;
                newMsg.time = Qt.formatTime(new Date(), "hh:mm");
                my_model.append(newMsg);
            }
        }



        ListModel {
            id: my_model

             ListElement{ name:"Egor"; time:"15:25"}
             ListElement{ name:"Kreed"; time:"17:47"}
             ListElement{ name:"Bober"; time:"0:25"}
        }



        Component {
            id: my_delegate
            MyDelegate {
                name: model.name
                surname: model.surname
                phoneNumber: model.phone
                time: model.time
                width: parent.width
                height: 40

            }
        }




        ListView {
            id: my_list
            anchors.margins: defMargin
            spacing: 5
            anchors.fill: parent
            model: my_model
            delegate: my_delegate
        }




    }



}
