import QtQuick 2.5

Rectangle {
    width: 200
    height: containerMenu.height / 15
    color: "red"
    border.color: "black"
    property alias itemName: name.text

    Text {
        id: name
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        text: qsTr("Item Menu")
    }

}
