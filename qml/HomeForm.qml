import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.0

Page {
    id: page
    //    width: 600
    //    height: 400
    header: label.children

    title: qsTr("Home")

    //    background: Rectangle {
    //        color: backGroundColor
    //    }

    function func(){
        return Qt.rgba(Math.random(),
                       Math.random(),Math.random(),Math.random());
    }

    Rectangle {
        id: www
        width: 200
        height: 200
        color: "blue"
        border.color: "green"
        border.width: 5
        radius: 10
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        MouseArea {
            hoverEnabled: true
            anchors.fill: parent
            onEntered: www.color = func()
            onExited: www.color = func()
        }

    }

}
