import QtQuick 2.0
import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.11
import QtQuick.Window 2.11
import QtQml 2.0
import Qt.labs.calendar 1.0

Dialog{
        id: alarmNotification_dialog
        x: window.width/2.0
        width: 100
        height: 100
        title: "WAKE UP"
        modal: true
        standardButtons: {
            DialogButtonBox.Ok

        }

        onAccepted: {
            alarmNontification.close()
        }
}

