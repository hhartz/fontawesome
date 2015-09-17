import QtQuick 2.3
import "../js/FAIcons.js" as FAIcons

Text {
    font.family: fontLoader.name
    FontLoader {
        id: fontLoader
        source: "qrc:/com/cutehacks/fontawesome-qml/fontawesome-webfont.ttf"
    }
}
