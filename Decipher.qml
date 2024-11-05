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
            Row {
                anchors.fill: parent
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

                ButtonGlyc {
                    id: butta
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
        }

        Rectangle {
            width: cipherInput.width
            height: 39
            radius: 54
            Row {
                anchors.fill: parent
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

                ButtonGlyc {
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
}
