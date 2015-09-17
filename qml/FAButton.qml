import QtQuick 2.3

FAText {
    id: buttonText
    signal clicked()
    MouseArea {
        anchors.fill: parent
        onClicked: {
            buttonText.clicked()
        }
    }
}
