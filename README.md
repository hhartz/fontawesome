# fontawesome
FontAwesome wrapper for QML including button, text and icon enumerations

To use, install the module and add

    require(vendor/vendor.pri)

to your .pro file, and call `QPM_INIT(engine)` before loading your initial qml source.

To use an icon, import the package;

    import com.cutehacks.fontawesome 1.0

add a `FAText` element with the appropriate icon, like this;

    FAText {
            text: icons.ambulance
            anchors.centerIn: parent
            font.pixelSize: 72
            color: "steelblue"
        }

![](https://raw.github.com/hhartz/fontawesome/master/images/ambulance.png)

To see all available icons, create a `Gallery` element;

    Gallery {
            anchors.fill: parent
        }

![](https://raw.github.com/hhartz/fontawesome/master/images/gallery.png)