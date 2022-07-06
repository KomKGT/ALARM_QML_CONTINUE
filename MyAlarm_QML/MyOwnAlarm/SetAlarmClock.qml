import QtQuick 2.0
import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.11
import QtQuick.Window 2.11

import Qt.labs.calendar 1.0

Dialog {
    id: alarmDialog
    title: "Add new alarm"
    width: window.width/2.0
    height: window.height/2.0
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


    Slider {
          id: hoursSlider
          focusPolicy: Qt.NoFocus
          orientation: Qt.Horizontal
          x: 0
          y: alarmDialog.height/2.0 - alarmDialog.height/10
          width: alarmDialog.width/2.0 - 10
          wheelEnabled: true
          stepSize: 1
          to: 23

     }
     Slider {
         id: minutesSlider
         stepSize: 1
         x: hoursSlider.width
         y: alarmDialog.height/2.0 - alarmDialog.height/10
         width: alarmDialog.width/2.0 - 10
         orientation: Qt.Horizontal
         wheelEnabled: true
         enabled: true
         to: 59
      }





    Text {
        id: hours_text
        x: alarmDialog.width/4.0 - hours_text.width
        y: alarmDialog.height/2.0 - 100
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
        id: semicolon
        x: alarmMainDialog.width/2.0
        y: alarmDialog.height/2.0 - 100
        width: 32
        height: 26
        text: qsTr(":")
        font.pixelSize: 45
    }

    Text {
        id: minute_text
        x: alarmDialog.width/2 + alarmDialog.width/4.0 - hours_text.width
        y: alarmDialog.height/2.0 - 100
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
