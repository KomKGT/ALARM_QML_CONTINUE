import QtQuick 2.0
import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.11
import QtQuick.Window 2.11

import Qt.labs.calendar 1.0

Dialog {
    id: alarmDialog
    title: "Add new alarm"
    modal: true
    standardButtons: DialogButtonBox.Ok | DialogButtonBox.Cancel

    property AlarmListElement alarmModel

    function formatNumber(number) {
        return number < 10 && number >= 0 ? "0" + number : number.toString()
    }

    onAccepted: {
        alarmModel.append({
            "hour": hoursSlider.value,
            "minute": minutesSlider.value-17,
            "activated": true,
        })
    }
    onRejected: alarmDialog.close()

    contentItem: RowLayout {
        spacing: 5
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        RowLayout {
            id: rowTumbler

            Slider {
                id: hoursSlider
                orientation: Qt.Vertical
                wheelEnabled: true
                stepSize: 1
                to: 23

            }
            Slider {
                id: minutesSlider
                stepSize: 1
                orientation: Qt.Vertical
                wheelEnabled: true
                enabled: true
                to: 59

            }
        }


    }

    Text {
        id: hours_text
        x: 171
        y: 97
        width: 32
        height: 26
        text: {
            if(hoursSlider.value<10)
            {
                if(hoursSlider.value===0)
                    return "00"
                else if(hoursSlider.value===1)
                    return "01"
                else if(hoursSlider.value===2)
                    return "02"
                else if(hoursSlider.value===3)
                    return "03"
                else if(hoursSlider.value===4)
                    return "04"
                else if(hoursSlider.value===5)
                    return "05"
                else if(hoursSlider.value===6)
                    return "06"
                else if(hoursSlider.value===7)
                    return "07"
                else if(hoursSlider.value===8)
                    return "08"
                else if(hoursSlider.value===9)
                    return "09"
            }
            else
                return hoursSlider.value
        }
        font.pixelSize: 45
    }

    Text {
        id: minute_text
        x: 416
        y: 97
        width: 32
        height: 26
        text:if(minutesSlider.value<10)
             {
                 if(minutesSlider.value===0)
                     return "00"
                 else if(minutesSlider.value===1)
                     return "01"
                 else if(minutesSlider.value===2)
                     return "02"
                 else if(minutesSlider.value===3)
                     return "03"
                 else if(minutesSlider.value===4)
                     return "04"
                 else if(minutesSlider.value===5)
                     return "05"
                 else if(minutesSlider.value===6)
                     return "06"
                 else if(minutesSlider.value===7)
                     return "07"
                 else if(minutesSlider.value===8)
                     return "08"
                 else if(minutesSlider.value===9)
                     return "09"
             }
             else
                 return minutesSlider.value
        font.pixelSize: 45
    }
}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
