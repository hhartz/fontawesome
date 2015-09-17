import QtQuick 2.3

Text {
    font.family: fontLoader.name
    FontLoader {
        id: fontLoader
        source: "qrc:/com/cutehacks/fontawesome/fontawesome-webfont.ttf"
    }
}
