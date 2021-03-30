import QtQuick 2.12

Item {
    width: 800
    height: 600
    Column {
        anchors.centerIn: parent
        Text {
            id: text1
            font {
                family: "Comic Sans MS"
                pixelSize: 80
            }
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text {
            id: text2
            font {
                family: "Comic Sans MS"
                pixelSize: 40
            }
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
    Timer {
        interval: 500
        running: true
        repeat: true

        onTriggered: {
            var date = new Date()
            text1.text = date.toLocaleTimeString(Qt.locale("en_US"), "hh:mm:ss ap")
            text2.text = date.toLocaleDateString(Qt.locale("en_US"))
        }
    }
}
