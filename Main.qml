import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Controls.Material

// import "uicomponents/ButtonGlyc.qml"

ApplicationWindow {
    id: window
    title: qsTr("GLYC")
    visible: true
    header: ToolBar {
        height: 72
        background: Rectangle {
            color: Control.palette.window// "#292929"
        }

        RowLayout {
            anchors.fill: parent // s'ajuste à la taille du ToolButton
            anchors.margins: 10
            Label {
                text: qsTr("GLYC")
                color: "#014B45"
                font.bold: true
                font.pixelSize: 36
                font.weight: 900
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }


            ToolButton {
                id: menub
                icon.source: "qrc:/assets/morev.svg"
                icon.color: "black"

                onClicked: {
                    panneau.open()
                }
            }
        }
    }

    footer: TabBar {
        id: bar
        // height: 66
        contentHeight: 66
        background: Rectangle {
            color: Control.palette.window // "#292929"
        }
        width: parent.width
        currentIndex: swipeView.currentIndex // Synchronisation avec le SwipeView

        TabButton {
            text: qsTr("Cipher")
            icon.source: "qrc:/assets/encrypted.svg"
            onClicked: {
                    swipeView.currentIndex = 0
                }
            }

        TabButton {
            text: qsTr("Decipher")
            icon.source: "qrc:/assets/dencrypted.svg"
            onClicked: swipeView.currentIndex = 1
        }

        TabButton {
            text: qsTr("Chat")
            icon.source: "qrc:/assets/chat.svg"
            onClicked: swipeView.currentIndex = 2
        }
    }

    Menu {
        id: panneau
        x: parent.width - width
        transformOrigin: Menu.TopRight

        MenuItem {
            id: manage
            text: qsTr("Data Management")
            icon.source: "qrc:/assets/manage.svg"
            onTriggered: {
            }
        }

        MenuItem {
            id: settings
            text: qsTr("Settings")
            icon.source: "qrc:/assets/settings.svg"
            onTriggered: {
            }
        }

        MenuItem {
            id: usages
            text: qsTr("Usages")
            icon.source: "qrc:/assets/usages.svg"
            onTriggered: {
            }
        }
    }

    // essai
    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: bar.currentIndex // Synchronisation avec le TabBar

        Rectangle {
            color: "#292929"
            Cipher {
                anchors.centerIn: parent
            }
        }

        Rectangle {
            color: "#292929"
            Decipher {
                anchors.centerIn: parent
            }
        }

        Rectangle {
            color: "#292929"
            Chat {
                anchors.centerIn: parent
            }
        }
    }
}


