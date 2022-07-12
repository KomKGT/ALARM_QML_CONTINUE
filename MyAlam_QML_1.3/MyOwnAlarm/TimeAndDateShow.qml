import QtQuick 2.0
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.3
import QtQuick.Window 2.10
import QtQuick.Controls 2.3
Item{
    id: rectangle
    width: 1024
    height: 600

    function find_Alarm_Element(a)
    {
        for(var i=0;i<a;i++)
        {
            if(i>=0)
            {
                var hour = new Date()
                var min = new Date()
                var hour_Alarm = alarm_was_set.get(i).hour
                var minute_Alarm = alarm_was_set.get(i).minute
                var hour_Time = hour.toLocaleTimeString(Qt.locale("en_US"), "hh")
                var minute_Time = min.toLocaleTimeString(Qt.locale("en_US"), "mm")
                if(alarm_was_set.get(i).activated)
                {
                    console.log(alarm_was_set.get(i).hour)
                    //console.log(hour.toLocaleTimeString(Qt.locale("en_US"), "hh"))
                    if(hour.toLocaleTimeString(Qt.locale("en_US"), "hh")<10)
                    {
                        if("0"+hour_Alarm=== ""+hour_Time)
                        {
                            if(min.toLocaleTimeString(Qt.locale("en_US"), "mm")<10)
                            {
                                if("0"+minute_Alarm=== ""+(minute_Time-17))
                                {
                                    alarmNontification.open()

                                    alarm_was_set.get(i).activated=false
                                }
                            }
                            else
                            {
                                if(""+minute_Alarm=== ""+(minute_Time-17))
                                {
                                    alarmNontification.open()

                                    alarm_was_set.get(i).activated=false
                                }
                            }
                        }

                    }

                    else if(""+hour_Alarm=== ""+hour_Time)
                    {
                        console.log("Ho")
                        if(""+minute_Alarm=== ""+(minute_Time-17))
                        {
                            console.log("WAKE")
                            alarmNontification.open()

                            alarm_was_set.get(i).activated=false
                        }
                    }
                }
            }
        }
    }

    Text {
        id: showDate
        x: window.width/2.0 - showDate.width/2.0
        y: window.height/2.0 - showDate.height/2.0 + showTime.height + 10 -100
        text: qsTr("Date")
        font.capitalization: Font.AllUppercase
        Layout.fillWidth: true

        style: Text.Normal
        font.bold: true
        font.weight: Font.Normal
        font.pointSize: 27
        horizontalAlignment: Text.AlignHCenter
        color: "#E56717"//"#D9E2EC"
        font{
            family: "PibotoLt"
        }
    }



    Text {
        id: showTime
        x: window.width/2.0 - showTime.width/2.0
        y: window.height/2.0 - showTime.height/2.0 - 200
        height: 59
        text: qsTr("Time")
        //fontSizeMode: Text.Fit
        Layout.fillWidth: true
        color: "#E56717"//"#D9E2EC"
        style: Text.Normal
        font.bold: true
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.pointSize: 100
        horizontalAlignment: Text.AlignHCenter
        font{
            family: "PibotoLt"
        }
    }
    Button {
        id: do_not_disturb_button
        x: window.width/2.0 - do_not_disturb_button.width
        y: window.height - do_not_disturb_button.height - 100
        Text {
            id: do_not_disturb_button_txt
            text: qsTr(" DO NOT"+"\n"+"DISTURB")
            font.bold: true
            x: do_not_disturb_button.width/2.0 - do_not_disturb_button_txt.width/2.0
            y: do_not_disturb_button.height/2.0 -20
            color: {
                do_not_disturb_button.checked ? "white"  : "#A1d6d6d6"
            }
        }
        onCheckedChanged: {
            if(do_not_disturb_button.checked===true)
            {
                make_up_room_button.checked = false
            }
            else if(make_up_room_button.checked===true)
            {
                do_not_disturb_button.checked = false
            }
        }

        checkable: true
        spacing: 5
        background: Image {
            id: do_not_disturb_button_Im
            x: 0
            y: 0
            width: do_not_disturb_button.width
            height: do_not_disturb_button.height
            //fillMode: Image.PreserveAspectFit
            source: {
                do_not_disturb_button.checked ? "qrc:/Images/home2.png" : "qrc:/Images/home.png"
            }
        }
        Rectangle{
            id: status_disturb_light
            width: 50
            height: 10
            radius: 10
            x: do_not_disturb_button.width/2.0 - status_disturb_light.width/2.0
            y: 20
            color: {
                do_not_disturb_button.checked ? "#17a81a" : "#829AB1"

            }
        }
    }

    Button {
        id: make_up_room_button
        x: window.width/2.0 - make_up_room_button.width + do_not_disturb_button.width
        y: window.height - make_up_room_button.height - 100
        Text {
            id: make_up_room_button_txt
            text: qsTr(" MAKE UP"+"\n"+"    ROOM")
            font.bold: true
            x: make_up_room_button.width/2.0 - make_up_room_button_txt.width/2.0
            y: make_up_room_button.height/2.0 -20
            color: {
                make_up_room_button.checked ? "white"  : "#A1d6d6d6"
            }
        }
        onCheckedChanged: {
            if(make_up_room_button.checked===true)
            {
                do_not_disturb_button.checked = false
            }
            else if(do_not_disturb_button.checked===true)
            {
                make_up_room_button.checked = false
            }
        }

        checkable: true
        spacing: 5
        background: Image {
            id: make_up_room_button_Im
            x: 0
            y: 0
            width: make_up_room_button.width
            height: make_up_room_button.height
            //fillMode: Image.PreserveAspectFit
            source: {
                make_up_room_button.checked ? "qrc:/Images/home2.png" : "qrc:/Images/home.png"
            }
        }
        Rectangle{
            id: status_makeup_light
            width: 50
            height: 10
            radius: 10
            x: make_up_room_button.width/2.0 - status_makeup_light.width/2.0
            y: 20
            color: {
                make_up_room_button.checked ? "#17a81a" : "#829AB1"

            }
        }
    }

    Timer{
        interval: 500
        running: true
        repeat: true
        onTriggered: {
            var date = new Date()
            showTime.text = date.toLocaleTimeString(Qt.locale("en_US"), "hh:mm:ss")
            showDate.text = date.toLocaleDateString(Qt.locale("en_US"))
            find_Alarm_Element(alarmListMainView.count)

        }
    }






}















































/*##^## Designer {
    D{i:1;anchors_x:469}D{i:2;anchors_height:31;anchors_width:1024;anchors_x:0;anchors_y:190}
}
 ##^##*/
