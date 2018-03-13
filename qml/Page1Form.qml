import QtQuick 2.9
import QtQuick.Controls 2.2
import QtCharts 2.2

Page {
    width: 600
    height: 400

    title: qsTr("Page 1")

    Label {
        text: qsTr("You are on Page 1.")
        anchors.centerIn: parent
    }

    Image {
        id: image
        x: 93
        y: 73
        width: 147
        height: 153
        source: "qrc:/img/1.png"
    }

    Dial {
        id: dial
        x: 422
        y: 94
    }

    ProgressBar {
        id: progressBar
        x: 246
        y: 261
        value: 0.5
    }
}
