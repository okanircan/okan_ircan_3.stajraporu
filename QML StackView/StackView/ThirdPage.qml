import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
Item {
    Rectangle{
        id: kare
        width: parent.width
        height: 50
        color: 'blue'
        Label {
            id : mytitle
            anchors.centerIn: parent
            color : 'white'
            font.pointSize: 20
        }
    }
    ColumnLayout {
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
            top: kare.bottom
        }
        spacing: 5
        Repeater {
           model :5
           RowLayout{
               Layout.fillHeight:true
               width: parent.width
               height: 10
               Repeater {
                   model : ListModel{
                       ListElement{
                           mytext:'Button 1'
                       }
                       ListElement{
                           mytext:'Button 2'
                       }
                       ListElement{
                           mytext:'Button 3'
                       }
                       ListElement{
                           mytext:'Button 4'
                       }
                       ListElement{
                           mytext:'Button 5'
                       }
                   }
                   Button{
                       Layout.fillWidth: true
                       text: mytext
                       onClicked: {
                           mytitle.text = text;
                       }
                   }
               }
           }
        }
    }
}
