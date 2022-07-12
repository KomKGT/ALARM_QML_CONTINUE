import QtQuick 2.0
import QtQuick.Window 2.10
import QtQuick.Controls.Material 2.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.11
ItemDelegate {
    id: root
    width: window.width
    checkable: true
    background: Rectangle{
        color: "#829AB1"
        border.color: "#334E68"
    }

    onClicked: ListView.view.currentIndex = index

    contentItem: ColumnLayout {
        spacing: 0

        RowLayout {
            ColumnLayout {
                id: dateColumn

                readonly property date alarmDate: new Date(model.year, model.month - 1, model.day, model.hour, model.minute)

                Label {
                    id: timeLabel

                    font.pixelSize: Qt.application.font.pixelSize * 2
                    text: dateColumn.alarmDate.toLocaleTimeString(window.locale, Locale.ShortFormat)
                }

            }
            Item {
                Layout.fillWidth: true
            }
            Switch {
                id: sw
                checked: model.activated
                x: window.width - sw.width - 10
                Layout.alignment: Qt.AlignTop
                indicator: Rectangle {
                        implicitWidth: 48
                        implicitHeight: 26
                        x: sw.leftPadding
                        y: parent.height / 2 - height / 2
                        radius: 13
                        color: sw.checked ? "#17a81a" : "#ffffff"
                        border.color: sw.checked ? "#17a81a" : "#cccccc"

                        Rectangle {
                            x: sw.checked ? parent.width - width : 0
                            width: 26
                            height: 26
                            radius: 13
                            color: sw.down ? "#cccccc" : "#ffffff"
                            border.color: sw.checked ? (sw.down ? "#17a81a" : "#21be2b") : "#999999"
                        }
                    }
                onClicked: {
                    model.activated = checked
                }
            }
        }

        Button {
            id: deleteAlarmButton
            text: qsTr("Delete")
            width: 40
            height: 40
            visible: root.checked
            background: Rectangle{
                color: "#00897B"
            }

            onClicked: root.ListView.view.model.remove(root.ListView.view.currentIndex, 1)
        }
    }

}
