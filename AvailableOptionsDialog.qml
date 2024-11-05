import QtQuick
import QtQuick.Controls

Rectangle {
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
