import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.LocalStorage 2.0

//import "backend.js" as Backend

Window {
    id: passWindow
    width: 540
    height: 360
    visible: true
    title: qsTr("Reset Password")
    color: "#7fbf35"

    property int time: 36000000

    Text {
        id: mailMain
        text: "Please enter your mail address:"
        color: "white"
        font { family:"Consolas" ; pointSize:14 }
        anchors.horizontalCenter: parent.horizontalCenter
        topPadding: 50
    }

    TextField {
        id: mailHolder
        placeholderText: qsTr("Mail address")
        width: parent.width/1.5
        color: "#0e0e0e"
        font.pointSize: 14
        font.family: "Consolas"
        anchors {
            top: mailMain.bottom
            left: mailMain.left
            topMargin: 4
        }

        background: Rectangle {
            radius: 20
            color: "beige"
        }
    }

    Rectangle {
        id: sendButton
        width: 100
        height: 40
        color: "beige"
        radius: 20
        border.color: "#202020"
        anchors {
            top: mailHolder.bottom
            left: mailHolder.left
            topMargin: 10
        }

        Text {
            id: codeText
            text: "Send code"
            color: "#202020"
            font.family: "Consolas"
            font.pointSize: 12
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log(mailHolder.text)
                message.text = "Verification code sent to your e-mail address:\n>> " + mailHolder.text
                message.visible = true
            }
        }
    }

    Text {
        id: message
        text: ""
        color: "gold"
        font { family:"Consolas" ; pointSize:12 }
        visible: false
        anchors {
            top: sendButton.bottom
            left: sendButton.left
            topMargin: 15
        }
    }

}
