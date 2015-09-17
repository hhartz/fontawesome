import QtQuick 2.0
import com.cutehacks.fontawesome 1.0

Rectangle {
    width: 640
    height: 800

    color: "#FFEEFF"

    Flickable {
        anchors.fill: parent
        contentHeight: gallery.childrenRect.height

        Flow {
            id: gallery
            width: parent.width

            spacing: 15

            Repeater {
                model: Object.keys(FAIcons.Icon).length

                delegate: Item {
                    width: 75
                    height: 75
                    FAText {
                        font.pointSize: 48
                        text: FAIcons.Icon[Object.keys(FAIcons.Icon)[index]]
anchors.centerIn: parent
                    }
                    Text {
                        anchors.bottom: parent.bottom
                        font.pixelSize: 16
                        text: Object.keys(FAIcons.Icon)[index]
                        horizontalAlignment: Text.AlignHCenter
                    }
                }
            }
        }
    }
}
