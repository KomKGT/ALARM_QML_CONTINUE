import QtQuick 2.0
import QtQuick.Window 2.10
import QtQuick.Controls.Material 2.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.11
ItemDelegate {
    id: root
    width: window.width
    checkable: true

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
            onClicked: root.ListView.view.model.remove(root.ListView.view.currentIndex, 1)
        }
    }

}
