import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs

Column {
    spacing: 40

    Column {
        spacing: 5
        ScrollView {
            height: 242
            width: 336
            TextArea {
                id: cipherInput
                //placeholderText: qsTr("Enter the text to enciphe here")
                height: parent.height
                width: parent.width
                wrapMode: Text.Wrap
                font.pixelSize: 16
                padding: 10
                topPadding: 20
                background: Rectangle {
                    color: "#FEFEFE"
                }
            }

            Text {
                text: "Entrez le texte à chiffrer ici..."
                color: "gray"
                visible: cipherInput.text.length === 0
                font.pixelSize: 16
                padding: 15
                topPadding: 20
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
                    anchors.verticalCenter: parent.verticalCenter
                    height: parent.height
                    width: parent.width - x.width
                    color: "transparent"
                    Text {
                        anchors.fill: parent
                        id: a
                        text: qsTr("Voir les options disponibles")
                        color: "#FEFEFE"
                        font.bold: true
                        leftPadding: 30
                        topPadding: 12
                        anchors.verticalCenter: parent.verticalCenter

                        MouseArea {
                            anchors.fill: parent
                            onClicked: bPropos.open()
                        }
                    }
                }
                ButtonGlyc {
                    id: x
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

            MouseArea {
                anchors.fill: parent
                onClicked: fileDialog.open()
            }
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
        id: bPropos
        // modal: true
        focus: true
        title: "Available Options"
        // contentHeight: message.height
        height: window.height - 300
        width: window.width - 30
        standardButtons: Dialog.Ok | Dialog.Cancel
        anchors.centerIn: parent
        contentItem: AvailableOptionsDialog {
            id: message
        }
    }

    Dialog {
        id: aPropos
        // modal: true
        focus: true
        title: "Available Options"
        // contentHeight: message.height
        height: window.height - 300
        width: window.width - 30
        standardButtons: Dialog.Ok | Dialog.Cancel
        anchors.centerIn: parent
        contentItem: AvailableOptionsDialog {
            id: msg
        }
    }

    FileDialog {
        id: fileDialog
        title: "Sélectionnez un fichier"
        //folder: shortcuts.home
        nameFilters: ["Images (*.png *.jpg *.bmp)", "Tous les fichiers (*)"]
        //selectExisting: true
        fileMode: FileDialog.OpenFile

        onAccepted: {
            console.log("Fichier sélectionné:", fileDialog.selectedFile)
            // Utilise fileDialog.selectedFile pour obtenir le fichier choisi par l'utilisateur
        }

        onRejected: {
            console.log("Sélection annulée")
        }
    }
}
