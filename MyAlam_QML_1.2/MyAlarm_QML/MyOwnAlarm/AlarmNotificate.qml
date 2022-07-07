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
        width: 200
        height: 200
        visible: false
        title: "WAKE UP"
        modal: true

        background: Rectangle{
            Text {
                id: al_text
                text: qsTr("WAKE UP")
                x: alarmNotification_dialog.width/2.0 - al_text.width/2.0
            }
            color: "#334E68"
        }

//        standardButtons: {
//            DialogButtonBox.Ok

//        }
        Button{
            id: btn
            text: "OK"
            x: alarmNotification_dialog.width/2.0 - btn.width/2.0 - 10
            y: alarmNotification_dialog.height/2.0 - 20
            onClicked: alarmNontification.close()

        }


        onAccepted: {
            alarmNontification.close()
        }
}

