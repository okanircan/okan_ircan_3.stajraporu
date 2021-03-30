import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    header: ToolBar {
         RowLayout {
                     anchors.fill: parent
                     ToolButton {
                         text: qsTr("‹")
                         onClicked: mystackview.pop()
                     }
                     Label {
                         text: "StackView Example"
                         elide: Label.ElideRight
                         horizontalAlignment: Qt.AlignHCenter
                         verticalAlignment: Qt.AlignVCenter
                         Layout.fillWidth: true
                     }
                 }
    }
    StackView {
        anchors{
            left: parent.left
            right: parent.right
            bottom: parent.bottom
            top: header.bottom
        }
        id: mystackview
        initialItem:starting_page

    }
    Component {
        id:starting_page
        StartingPage {}
    }
    Component {
        id:secong_page
        SecondPage{}
    }
    Component {
        id:third_page
         ThirdPage{}
    }
    Component {
        id:fourth_page
        FourthPage{}
    }
    function load_page(page){
        switch(page){
        case 'PAGE 1':
            mystackview.push(starting_page);
            break;
        case 'PAGE 2':
            mystackview.push(secong_page);
            break;
        case 'PAGE 3':
            mystackview.push(third_page);
            break;
        case 'PAGE 4':
            mystackview.push(fourth_page);
            break;
        }
    }
}
