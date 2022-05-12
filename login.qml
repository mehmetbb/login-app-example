import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.LocalStorage 2.0

import "jsonparser.js" as API
import "jsonpath.js" as JSONPath

Window {
    id: rootWindow
    //width: 640
    //height: 480

    width: 540
    height: 360

    visible: true
    title: qsTr("Login Page")
    color: "#7fbf35"

    property var loginUser: (function(username, password) {
        //console.log(username + " - " + password)
        //API.readJsonFile("db.json", rootWindow)

        loginUsername.text = ""
        loginPassword.text = ""

        if(username==="mehmet" && password==="123")
        {
            message1.text = "Login successful"
            message1.visible = true
            stackView.push("qrc:/main.qml")
        }
        else
        {
            message1.text = "Incorrect login!"
            message1.visible = true
        }

    })

            property var forgotPassword: (function() {
                stackView.push("qrc:/forgotPassword.qml")
            })

        StackView{
            id: stackView
            focus: true
            anchors.fill: parent
        }


        ColumnLayout {
            width: parent.width
            spacing: 15

            Text {
                id: text2
                text: "Welcome to login page!"
                color: "beige"
                font { family:"Consolas" ; bold:true ; pointSize:20 }
                anchors.horizontalCenter: parent.horizontalCenter
                topPadding: 30
                //anchors.centerIn: parent
            }

            TextField {
                id: loginUsername
                placeholderText: qsTr("Username")
                Layout.preferredWidth: parent.width/1.5
                Layout.alignment: Qt.AlignHCenter
                color: "#0e0e0e"
                font.pointSize: 14
                font.family: "Consolas"
                leftPadding: 30

                background: Rectangle {
                    radius: 20
                    color: "beige"
                }
            }

            TextField {
                id: loginPassword
                placeholderText: qsTr("Password")
                Layout.preferredWidth: parent.width/1.5
                Layout.alignment: Qt.AlignHCenter
                color: "#0e0e0e"
                font.pointSize: 14
                font.family: "Consolas"
                leftPadding: 30
                echoMode: TextField.Password

                background: Rectangle {
                    radius: 20
                    color: "beige"
                }
            }


            Rectangle {
                id: loginButton
                width: 100
                height: 40
                color: "beige"
                radius: 20
                border.color: "#202020"
                anchors.horizontalCenter: parent.horizontalCenter

                Text {
                    id: text3
                    text: "Login"
                    color: "#202020"
                    font.family: "Consolas"
                    font.pointSize: 14
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        loginUser(loginUsername.text, loginPassword.text)
                    }
                }
            }



            Text {
                id: forgotpass
                text: '<html><style type="text/css"></style><a href="http://google.com">Forgot password?</a></html>' //qsTr("Forgot password?")
                linkColor: "#f0f0f0"
                Layout.alignment: Qt.AlignHCenter
                font.pointSize: 14
                color: "#f0f0f0"
                Layout.margins: 10
                onLinkActivated: forgotPassword()
            }

            Text {
                id: message1
                text: ""
                color: "gold"
                font { family:"Consolas" ; pointSize:12 }
                visible: false
                anchors {
                    top: forgotpass.bottom
                    left: forgotpass.left
                    topMargin: 15
                }
            }
        }

    }
