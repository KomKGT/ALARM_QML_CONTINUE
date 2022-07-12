import QtQuick 2.0
import Qt.labs.calendar 1.0
import QtQuick.Controls.Material 2.0
import QtQuick.Extras 1.4
import QtQuick.Window 2.10
import QtQuick.Controls 2.3

Item {
    Slider {
        id: slider
        x: 203
        y: 197
        width: 40
        height: 252
        stepSize: 1
        to: 23
        orientation: Qt.Vertical
        value: 0
    }

    Slider {
        id: slider1
        x: 374
        y: 197
        width: 40
        height: 252
        stepSize: 1
        to: 59
        orientation: Qt.Vertical
        value: 0
    }

    Label {
        id: label
        x: 187
        y: 74
        width: 97
        height: 101
        text: qsTr("Hour")
    }

    Label {
        id: label1
        x: 351
        y: 74
        width: 97
        height: 101
        text: qsTr("Minute")
    }

}
