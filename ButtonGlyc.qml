import QtQuick
// import QtQuick.Controls



    /**/


    Rectangle {
        property real sizew: 108
        property string textb: "Button"
        property real radbord: 0

        // id: buttonGlyc
        height: 39
        width: sizew
        radius: radbord
        gradient: Gradient {
                // Définition du dégradé de gauche à droite
                GradientStop { position: 0.0; color: "#02B1A3"/*"#014B45"/*"#00FFEA" */}  // Couleur à 0%
                GradientStop { position: 1.0; color: "#014B45"/*"#00998C"*/ }  // Couleur à 100%
        }

        Text {
            // id: textbb
            text: qsTr(textb)
            font.pixelSize: 14
            font.bold: true
            anchors.centerIn: parent
        }
    }
