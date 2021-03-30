import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
Item {
    Rectangle {
        anchors.fill: parent
        color: 'purple'
        Button{
            anchors.centerIn: parent
            text: 'Exit'

            onClicked: {
                Qt.quit();
            }
        }
    }
}
