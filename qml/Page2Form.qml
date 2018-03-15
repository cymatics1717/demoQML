import QtQuick 2.9
import QtQuick.Controls 2.2
import QtCharts 2.2
import QtQuick.Layouts 1.0

Page {
//    width: 600
//    height: 400
    anchors.fill: parent

//    leftPadding: -2

    title: qsTr("Page 2")

        Button {
            id: btn
            width: parent.width/3
            anchors.centerIn: parent
            z:1
            text: qsTr("You are on Page 2.")
        }

        Image {
            id: image
            anchors.fill: parent
            anchors.centerIn: parent
            height: parent.height
//            antialiasing: true
            fillMode: Image.PreserveAspectFit
//            clip: true
//            z: 0
            rotation: 30
            scale: 1
//            transformOrigin: Item.Center
            source: "qrc:/img/1.png"

            state: "NORMAL"

            states: [
                    State {
                        name: "NORMAL"
                        PropertyChanges { target: btn; text: "green"}
                    },
                    State {
                        name: "CRITICAL"
                        PropertyChanges { target: btn; text: "red"}
                    }
                ]
        }

    Connections {
        target: btn
        onClicked: {
            console.log("bb")
            if (image.state == "NORMAL")
            {
                image.state = "CRITICAL"
                image.source = "qrc:/img/1.png"
            }
            else{
                image.state = "NORMAL"
                image.source = ""
            }

        }
    }
}
