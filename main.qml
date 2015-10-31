import QtQuick 2.5
import QtQuick.Controls 1.4

ApplicationWindow {
    visible: true
    width: 1280
    height: 720
    title: qsTr("Hello World")

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    Rectangle {
        id: containerMenu
        width: 200
        height: 720
        color: "#ffffff"
        visible: butVisMenu.checked ? true : false
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        anchors.top: parent.top


        ItemMenu {
            id: itemMenuTaula
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.left: parent.left
            itemName: "Taula Castellers"
        }

        ItemMenu {
            id: itemMenuPilar
            anchors.right: parent.right
            anchors.top: itemMenuTaula.bottom
            anchors.left: parent.left
            itemName: "Pilar"
        }

        ItemMenu {
            id: itemMenuTorre
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: itemMenuPilar.bottom
            itemName: "Torre"
        }

        ItemMenu {
            id: itemMenuTres
            anchors.top: itemMenuTorre.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            itemName: "Tres"
        }

        ItemMenu {
            id: itemMenuQuatre
            anchors.top: itemMenuTres.bottom
            anchors.right: parent.right
            anchors.left: parent.left
            itemName: "Quatre"
        }

        ItemMenu {
            id: itemMenuCinc
            anchors.right: parent.right
            anchors.top: itemMenuQuatre.bottom
            anchors.left: parent.left
            itemName: "Cinc"
        }

        ItemMenu {
            id: itemMenuSet
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: itemMenuCinc.bottom
            itemName: "Set"
        }

        ItemMenu {
            id: itemMenuSocaPilar
            anchors.top: itemMenuSet.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            itemName: "Soca Pilar"
        }

        ItemMenu {
            id: itemMenuFolrePilar
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: itemMenuSocaPilar.bottom
            itemName: "Folre Pilar"
        }

        ItemMenu {
            id: itemMenuSocaTorre8
            anchors.top: itemMenuFolrePilar.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            itemName: "Soca Torre"
        }

        ItemMenu {
            id: itemMenuFolreTorre8
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: itemMenuSocaTorre8.bottom
            itemName: "Folre Torre"
        }

        ItemMenu {
            id: itemMenuSocaTres
            anchors.top: itemMenuFolreTorre8.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            itemName: "Soca Tres"
        }

        ItemMenu {
            id: itemMenuFolreTres
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: itemMenuSocaTres.bottom
            itemName: "Folre Tres"
        }

        ItemMenu {
            id: itemMenuSocaQuatre
            anchors.top: itemMenuFolreTres.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            itemName: "Soca Quatre"
        }

        ItemMenu {
            id: itemMenuFolreQuatre
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: itemMenuSocaQuatre.bottom
            anchors.bottom: parent.bottom
            itemName: "Folre Quatre"
        }

    }




    Label {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }
}


