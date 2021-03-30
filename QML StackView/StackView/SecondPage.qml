import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
Item {
    ListView{
        anchors.fill: parent
        width: parent.width
        height: parent.height
        spacing: 20
        model: ListModel{
            ListElement{
                name: 'okan'
                age:30
            }
            ListElement{
                name: 'mehmet'
                age: 23

            }
            ListElement{
                 name:'kevser'
                 age: 5

            }
            ListElement{
                name:'ömer'
                age: 8

            }
        }
        delegate: Rectangle{
            width: parent.width
            height: 30
            color: 'blue'
            Text {
                anchors.centerIn:  parent
                color: 'white'
                text: 'Name: ' + name + '       Age : ' + age
                font.pointSize: 16

            }
        }
    }
}
