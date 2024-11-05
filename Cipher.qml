import QtQuick
import QtQuick.Controls

Column {
    spacing: 40

    Column {
        spacing: 5
        TextArea {
            id: cipherInput
            // placeholderText: qsTr("Enter the text to enciphe here")
            height: 242
            width: 336
            wrapMode: Text.Wrap
            font.pixelSize: 16
            padding: 10
            background: Rectangle {
                color: "#FEFEFE"
            }
        }

        Rectangle {
            width: cipherInput.width
            height: 39
            gradient: Gradient {
                    // Définition du dégradé de gauche à droite
                    GradientStop { position: 0.0; color: "#606060" }  // Couleur à 0%
                    GradientStop { position: 1.0; color: "#000000" }  // Couleur à 100%
            }
            Row {
                anchors.fill: parent
                Rectangle {
                    Text {
                        anchors.fill: parent
                        id: a
                        text: qsTr("Voir les options disponibles")
                        color: "#FEFEFE"
                        font.bold: true
                        leftPadding: 30
                        topPadding: 12
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
                ButtonGlyc {
                    textb: qsTr("Enciphe")
                    anchors.right: parent.right
                }
            }
        }
    }

    Column {
        spacing: 5
        ButtonGlyc {
            sizew: cipherInput.width
            textb: qsTr("Select a file")
            radbord: 54
        }

        Rectangle {
            width: cipherInput.width
            height: 39
            radius: 54
            gradient: Gradient {
                    // Définition du dégradé de gauche à droite
                    GradientStop { position: 0.0; color: "#606060" }  // Couleur à 0%
                    GradientStop { position: 1.0; color: "#000000" }  // Couleur à 100%
            }
            Row {
                anchors.fill: parent


                Rectangle {
                    anchors.verticalCenter: parent.verticalCenter
                    height: parent.height
                    width: parent.width - r.width
                    color: "transparent"
                    radius: 54
                    Text {
                        id: c
                        text: qsTr("Voir les options disponibles")
                        color: "#FEFEFE"
                        font.bold: true
                        leftPadding: 35
                        topPadding: 11
                        anchors.fill: parent

                        MouseArea {
                            anchors.fill: parent
                            onClicked: aPropos.open()
                        }
                    }
                }

                ButtonGlyc {
                    id: r
                    textb: qsTr("Enciphe")
                    radbord: 54
                    anchors.right: parent.right
                }
            }
        }
    }

    Dialog {
        id: aPropos
        modal: true
        focus: true
        title: "Available Options"
        x: (window.width - width) / 2
        y: window.height / 6
        width: Math.min(window.width, window.height) / 3 * 2
        contentHeight: message.height
        AvailableOptionsDialog {
            height: parent.height
        }
    }
}
