import QtQuick 2.0
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.0
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.3
import QtQuick.Extras 1.4
import Qt.labs.calendar 1.0
import QtQuick.Window 2.10

Rectangle{
    width: 1024
    height: 600
    color: "#627D98"
    Button {
        id: button
        x: 118
        y: 123
        width: 276
        height: 94
        text: qsTr("Button")
        spacing: 5
        background: Rectangle{
            implicitHeight: 94
            implicitWidth: 276
            radius: 10
            color: button.down ? "#d6d6d6" : "#f6f6f6"
        }

    }

}
