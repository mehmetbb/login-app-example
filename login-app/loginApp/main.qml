import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.LocalStorage 2.0

//import "backend.js" as Backend

Window {
    id: mainWindow
    width: 540
    height: 360
    visible: true
    title: qsTr("Main Page")
    color: "#7fbf35"

    Text {
        id: textMain
        text: "Main Page"
        color: "beige"
        font { family:"Consolas" ; bold:true ; pointSize:35 }
        anchors.centerIn: parent
    }

    Rectangle {
        id: quitButton
        width: 100
        height: 40
        color: "beige"
        radius: 20
        border.color: "#202020"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: textMain.bottom
        anchors.topMargin: 20

        Text {
            id: quitText
            text: "Quit"
            color: "#202020"
            font.family: "Consolas"
            font.pointSize: 14
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                mainWindow.close()
            }
        }
    }

}
