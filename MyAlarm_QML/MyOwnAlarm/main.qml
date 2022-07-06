import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3

Window {
    id: window
    visible: true
    width: 1024
    height: 600
    title: qsTr("Hello World")
    StackLayout{
        id:mainStackLayout
        width: 1024
        height: 600
        currentIndex: tabMainBar.currentIndex
        TimeAndDateShow{
            width: 1024
            height: 600
        }
        AirCondition{
            width: 1024
            height: 600
        }
        LightSwitch{
            width: 1024
            height: 600
        }
        Item {
            id: alarm_item
            width: 400
            height: 500
            visible: true
            ListView{
                id: alarmListMainView
                anchors.fill: parent
                model: AlarmListElement{
                        id: alarm_was_set
                }
                delegate: AlarmListView{

                }
            }
            RoundButton{
                id: addAlarmButton
                x: window.width/2.0 - addAlarmButton.width/2.0
                y: window.height/2.0 + 100
                text: "+"

                onClicked:  alarmMainDialog.open()//alarmDialog.open()

            }
            SetAlarmClock{
                id: alarmMainDialog
                x: Math.round((window.width - width) / 2)
                y: Math.round((window.height - height) / 2)
                alarmModel: alarmListMainView.model
            }
            AlarmNotificate{
                id: alarmNontification
                x: Math.round((window.width - width) / 2)
                y: Math.round((window.height - height) / 2)
            }

        }
    }
    TabBar{ //import QtQuick.Controls 2.3
            id: tabMainBar
            y: 550
            height: 50
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            spacing: 0

            currentIndex: StackLayout.currentIndex
            TabButton{
                id: mainButton
                x: 0
                width: window.width/4.0
                text: qsTr("Home")
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0
                font.bold: true

            }
            TabButton{
                id: airButton
                x: (window.width/4.0)+mainButton.x
                width: window.width/4.0
                text: qsTr("Aircondition")
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0
                font.bold: true


            }
            TabButton{
                id: lightButton
                x: (window.width/4.0)+airButton.x+mainButton.x
                width: window.width/4.0
                text: qsTr("Light")
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                font.bold: true


            }
            TabButton{
                id: alarmtButton
                x: (window.width/4.0)+lightButton.x+airButton.x+mainButton.x
                width: window.width/4.0
                text: qsTr("Alarm")
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                font.bold: true


            }
        }
}



































/*##^## Designer {
    D{i:5;anchors_height:50;anchors_width:1024;anchors_x:0;anchors_y:550}D{i:6;anchors_height:50;anchors_width:256;anchors_x:0;anchors_y:0}
D{i:7;anchors_height:50;anchors_width:256;anchors_x:257;anchors_y:0}D{i:8;anchors_height:50;anchors_width:256;anchors_x:512;anchors_y:0}
D{i:4;anchors_width:1024;anchors_x:0}
}
 ##^##*/
