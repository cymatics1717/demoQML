import QtQuick 2.9
import QtQuick.Controls 2.2
import QtCharts 2.2

Page {
    id: page
//    width: 600
//    height: 400

    title: qsTr("Page 1")

    Image {
        id: image
        x: -158
        width: 690
        anchors.rightMargin: 108
        anchors.bottomMargin: -45
        anchors.topMargin: -32
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top
//        anchors.rightMargin: 110
//        anchors.bottomMargin: -7
//        anchors.leftMargin: 7
//        anchors.topMargin: 16
        scale: 1/2
        source: "qrc:/img/1.png"
    }

    Dial {
        id: dial
        anchors.rightMargin: 5
        anchors.bottomMargin: 71
        anchors.leftMargin: 375
        anchors.topMargin: 107
        anchors.fill: parent
        z: 1
        transformOrigin: Item.Center
    }

    ProgressBar {
        id: progressBar
        x: 255
        y: 72
        value: 0.5
    }
}
