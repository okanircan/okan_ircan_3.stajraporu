import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Item {
    RowLayout {
        anchors.centerIn: parent
        width: parent.width
        Button{
            text: 'PAGE 1'
            Layout.fillWidth: true
            onClicked: {
                load_page(text);
            }
        }
        Button{
            text: 'PAGE 2'
            Layout.fillWidth: true
            onClicked: {
                load_page(text);
            }
        }
        Button{
            text: 'PAGE 3'
            Layout.fillWidth: true
            onClicked: {
                load_page(text);
            }
        }
        Button{
            text: 'PAGE 4'
            Layout.fillWidth: true
            onClicked: {
                load_page(text);
            }
        }

    }
}
