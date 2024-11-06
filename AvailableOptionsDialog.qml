import QtQuick
import QtQuick.Controls

Rectangle {
    Column {
        spacing: 50
        Column {
            //spacing: 10
            RadioButton {
                checked: true
                text: qsTr("Générer une clé")
                font.bold: true
            }

            Column {
                RadioButton {
                    text: qsTr("Créer sa propre clé")
                    font.bold: true
                }
                Text {
                    id: r
                    text: qsTr("Écrire de préférence des phrases de 26 caractères
minimum.")
                    font.pixelSize: 12
                    color: "#EE1C1C"
                }
            }

            Column {
                spacing: 10
                Rectangle {
                    // anchors.fill: parent
                    width: 300
                    height: 39
                    border.color: "gray"
                    TextInput {
                        id: a
                        leftPadding: 10
                        topPadding: 10
                        font.pixelSize: 14
                        anchors.fill: parent
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter

                        Text {
                            text: "Premier paramètre de la clé ici..."
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

                Rectangle {
                    // anchors.fill: parent
                    width: 300
                    height: 39
                    border.color: "gray"
                    TextInput {
                        id: f
                        leftPadding: 10
                        topPadding: 10
                        font.pixelSize: 14
                        anchors.fill: parent
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter

                        Text {
                            text: "Second paramètre de la clé ici..."
                            color: "gray"
                            visible: f.text.length === 0
                            leftPadding: 10
                            topPadding: 10
                            font.pixelSize: 14
                            anchors.fill: parent
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
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
}
