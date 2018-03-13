import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.0

Page {
    id: page
    width: 600
    height: 400
    header: label.children

    title: qsTr("Home")

    background: Rectangle {
        color: backGroundColor
    }

    Rectangle {
        id: iconRect
        x: 0
        y: 41
        width: parent.width
        height: parent.height / 3
        color: backGroundColor

    }


}
