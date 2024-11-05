import QtQuick
import QtQuick.Controls

Column {
    spacing: 30
    Rectangle {
        width: 336
        height: 39
        radius: 54
        gradient: Gradient {
                // Définition du dégradé de gauche à droite
                GradientStop { position: 0.0; color: "#606060" }  // Couleur à 0%
                GradientStop { position: 1.0; color: "#000000" }  // Couleur à 100%
        }
        Row {
            anchors.fill: parent
            Text {
                id: v
                text: qsTr("Créez un réseau")
                color: "#FEFEFE"
                font.bold: true
                leftPadding: 70
                topPadding: 11
                anchors.fill: parent
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }

            ButtonGlyc {
                textb: qsTr("Submit")
                radbord: 54
                anchors.right: parent.right
            }
        }
    }

    Rectangle {
        width: 336
        height: 39
        radius: 54
        gradient: Gradient {
                // Définition du dégradé de gauche à droite
                GradientStop { position: 0.0; color: "#606060" }  // Couleur à 0%
                GradientStop { position: 1.0; color: "#000000" }  // Couleur à 100%
        }
        Row {
            anchors.fill: parent
            Text {
                id: c
                text: qsTr("Rejoindre un réseau")
                color: "#FEFEFE"
                font.bold: true
                leftPadding: 70
                topPadding: 11
                anchors.fill: parent
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }

            ButtonGlyc {
                textb: qsTr("Submit")
                radbord: 54
                anchors.right: parent.right
            }
        }
    }
}
