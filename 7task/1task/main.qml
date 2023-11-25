import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 350
    height: 500
    title: "Login Page"

    Rectangle {
        width: parent.width
        height: parent.height

        ColumnLayout {
            anchors.centerIn: parent

            TextField {
                id: usernameInput
                placeholderText: "Username"
                width: 200
                height: 30
            }

            TextField {
                id: passwordInput
                placeholderText: "Password"
                width: 200
                height: 30
                echoMode: TextInput.Password
            }

            RowLayout {
                Button {
                    text: "Login"
                    onClicked: {

                        console.log("Username:", usernameInput.text);
                        console.log("Password:", passwordInput.text);
                    }
                }

                Button {
                    text: "Clear"
                    onClicked: {
                        usernameInput.text = "";
                        passwordInput.text = "";
                    }
                }
            }
        }
    }
}
