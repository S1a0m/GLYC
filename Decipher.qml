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

                Text {
                    text: "Entrez le texte à déchiffrer ici..."
                    color: "gray"
                    visible: cipherInput.text.length === 0
                    font.pixelSize: 16
                    padding: 15
                    topPadding: 20
                }
            }
        }

        Rectangle {
            width: cipherInput.width
            height: 39
            Row {
                anchors.fill: parent
                Rectangle {
                    anchors.verticalCenter: parent.verticalCenter
                    height: parent.height
                    width: parent.width - x.width
                    TextInput {
                        id: a
                        leftPadding: 10
                        topPadding: 10
                        font.pixelSize: 14
                        anchors.fill: parent
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter

                        Text {
                            text: "Entrez la clé de chiffrement ici..."
                            color: "gray"
                            visible: a.text.length === 0
                            leftPadding: 10
                            topPadding: 10
                            font.pixelSize: 14
                            anchors.fill: parent
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }
                }

                ButtonGlyc {
                    id: x
                    textb: qsTr("Deciphe")
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
            Row {
                anchors.fill: parent
                Rectangle {
                    anchors.verticalCenter: parent.verticalCenter
                    height: parent.height
                    width: parent.width - y.width
                    color: "transparent"
                    TextInput {
                        id: c
                        //text: qsTr("Entrez la clé de chiffrement")
                        leftPadding: 10
                        topPadding: 10
                        font.pixelSize: 14
                        anchors.fill: parent
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter

                        Text {
                            text: "Entrez la clé de chiffrement ici..."
                            color: "gray"
                            visible: c.text.length === 0
                            leftPadding: 10
                            topPadding: 10
                            font.pixelSize: 14
                            anchors.fill: parent
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }
                }

                ButtonGlyc {
                    id: y
                    textb: qsTr("Deciphe")
                    radbord: 54
                    anchors.right: parent.right
                }
            }
        }
    }

    Column {
        CheckBox {
            text: qsTr("Afficher le texte déchiffré dans l’app")
            font.bold: true
        }
        Text {
            id: z
            text: qsTr("Vos données de déchiffrements seront conservées.
Accédez au journal pour les modifier.")
            font.pixelSize: 12
            color: "#EE1C1C"
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
