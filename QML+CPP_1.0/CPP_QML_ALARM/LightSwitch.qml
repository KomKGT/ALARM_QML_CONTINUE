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
    color: "black"
//    Text {
//        id: topic
//        x: 70
//        y: 30
//        text: qsTr("LIGHTING")
//        font.bold: true
//        color: "#102A43"
//    }
//    Image {
//        id: amari
//        x: 70
//        y: -10
//        fillMode: Image.PreserveAspectFit
//        source: "qrc:/Images/Amari.png"
//    }
    GroupBox {
        id: groupBox
        x: 70
        y: 70
        visible: true
        width: window.width-130
        height: window.height-160
        Image {
            id: image
            x: -81//-11
            y: -91//-11
            width: window.width
            height: window.height

            source: "qrc:/Images/hotel.jpg"
            //fillMode: Image.PreserveAspectFit
        }

        Button {
            id: left_light_button
            x: groupBox.width/2.0 - left_light_button.width -30
            y: 23
            width: groupBox.width/2.0 - 30 - 30
            height: groupBox.height/4.5
            checked: false
            checkable: true
            font.bold: false
            spacing: 5
            background: Image {
                id: left_light_button_Im
                x: 0
                y: 0
                width: left_light_button.width
                height: left_light_button.height
                source: {
                    left_light_button.checked ? "qrc:/Images/home2.png" : "qrc:/Images/home.png"
                }
                //fillMode: Image.PreserveAspectFit
            }
            Text {
                id: left_light_button_txt
                text: qsTr("LEFT")
                font.bold: true
                x: left_light_button.width/2.0 - left_light_button_txt.width/2.0
                y: left_light_button.height/2.0
                color: {
                    left_light_button.checked ? "white"  : "#A1d6d6d6"
                }
            }
            Rectangle{
                id: status_left_light
                width: 50
                height: 10
                radius: 10
                x: left_light_button.width/2.0 - status_left_light.width/2.0
                y: 20
                color: {
                    left_light_button.checked ? "#17a81a" : "#829AB1"
                }
            }

        }

        Button {
            id: desk_light_button
            x: groupBox.width/2.0 - desk_light_button.width -30
            y: left_light_button.y + left_light_button.height + 30
            width: groupBox.width/2.0 - 30 -30
            height: groupBox.height/4.5
            Text {
                id: desk_light_button_txt
                text: qsTr("DESK")
                font.bold: true
                x: desk_light_button.width/2.0 - desk_light_button_txt.width/2.0
                y: desk_light_button.height/2.0
                color: {
                    desk_light_button.checked ? "white"  : "#A1d6d6d6"
                }
            }
            checkable: true
            spacing: 5
            background: Image {
                id: desk_light_button_Im
                x: 0
                y: 0
                width: desk_light_button.width
                height: desk_light_button.height
                //fillMode: Image.PreserveAspectFit
                source: {
                    desk_light_button.checked ? "qrc:/Images/home2.png" : "qrc:/Images/home.png"
                }
            }
            Rectangle{
                id: status_desk_light
                width: 50
                height: 10
                radius: 10
                x: desk_light_button.width/2.0 - status_desk_light.width/2.0
                y: 20
                color: {
                    desk_light_button.checked ? "#17a81a" : "#829AB1"

                }
            }
        }

        Button {
            id: entrance_light_button
            x: groupBox.width/2.0 - entrance_light_button.width -30
            y: desk_light_button.y + desk_light_button.height + 30
            width: groupBox.width/2.0 - 30 - 30
            height: groupBox.height/4.5
            Text {
                id: entrance_light_button_txt
                text: qsTr("ENTRANCE")
                font.bold: true
                x: entrance_light_button.width/2.0 - entrance_light_button_txt.width/2.0
                y: entrance_light_button.height/2.0
                color: {
                    entrance_light_button.checked ? "white"  : "#A1d6d6d6"
                }
            }
            checkable: true
            spacing: 5
            background: Image {
                id: entrance_light_button_Im
                x: 0
                y: 0
                width: entrance_light_button.width
                height: entrance_light_button.height
                //fillMode: Image.PreserveAspectFit
                source: {
                    entrance_light_button.checked ? "qrc:/Images/home2.png" : "qrc:/Images/home.png"
                }
            }
            Rectangle{
                id: status_entrance_light
                width: 50
                height: 10
                radius: 10
                x: entrance_light_button.width/2.0 - status_entrance_light.width/2.0
                y: 20
                color: {
                    entrance_light_button.checked ? "#17a81a" : "#829AB1"

                }
            }
        }

        Button {
            id: right_light_button
            x: left_light_button.x + left_light_button.width + 30
            y: 23
            width: groupBox.width/2.0 - 30 -30
            height: groupBox.height/4.5
            Text {
                id: right_light_button_txt
                text: qsTr("RIGHT")
                font.bold: true
                x: right_light_button.width/2.0 - right_light_button_txt.width/2.0
                y: right_light_button.height/2.0
                color: {
                    right_light_button.checked ? "white"  : "#A1d6d6d6"
                }
            }
            checkable: true
            spacing: 5
            background: Image {
                id: right_light_button_Im
                x: 0
                y: 0
                width: right_light_button.width
                height: right_light_button.height
                //fillMode: Image.PreserveAspectFit
                source: {
                    right_light_button.checked ? "qrc:/Images/home2.png" : "qrc:/Images/home.png"
                }
            }
            Rectangle{
                id: status_right_light
                width: 50
                height: 10
                radius: 10
                x: right_light_button.width/2.0 - status_right_light.width/2.0
                y: 20
                color: {
                    right_light_button.checked ? "#17a81a" : "#829AB1"

                }
            }
        }

        Button {
            id: center_light_button
            x: desk_light_button.x + desk_light_button.width + 30
            y: right_light_button.y + right_light_button.height + 30
            width: groupBox.width/2.0 - 30 -30
            height: groupBox.height/4.5
            Text {
                id: center_light_button_txt
                text: qsTr("RIGHT")
                font.bold: true
                x: center_light_button.width/2.0 - center_light_button_txt.width/2.0
                y: center_light_button.height/2.0
                color: {
                    center_light_button.checked ? "white"  : "#A1d6d6d6"
                }
            }
            checkable: true
            spacing: 5
            background: Image {
                id: center_light_button_Im
                x: 0
                y: 0
                width: center_light_button.width
                height: center_light_button.height
                //fillMode: Image.PreserveAspectFit
                source: {
                    center_light_button.checked ? "qrc:/Images/home2.png" : "qrc:/Images/home.png"
                }
            }
            Rectangle{
                id: status_center_light
                width: 50
                height: 10
                radius: 10
                x: center_light_button.width/2.0 - status_center_light.width/2.0
                y: 20
                color: {
                    center_light_button.checked ? "#17a81a" : "#829AB1"

                }

            }
        }

        Button {
            id: master_light_button
            x: entrance_light_button.x + entrance_light_button.width + 30
            y: center_light_button.y + center_light_button.height + 30
            width: groupBox.width/2.0 -30 -30
            height: groupBox.height/4.5
            Text {
                id: master_light_button_txt
                text: qsTr("MASTER")
                font.bold: true
                x: master_light_button.width/2.0 - master_light_button_txt.width/2.0
                y: master_light_button.height/2.0 - master_light_button_txt.height/2.0
                color: {
                    master_light_button.checked ? "white"  : "#A1d6d6d6"
                }
            }
            checkable: true
            spacing: 5
            background: Image {
                id: master_light_button_Im
                x: 0
                y: 0
                width: master_light_button.width
                height: master_light_button.height
                //fillMode: Image.PreserveAspectFit
                source: {
                    master_light_button.checked ? "qrc:/Images/home2.png" : "qrc:/Images/home.png"
                }
            }
            onCheckedChanged: {
                if(master_light_button.checked)
                {
                    left_light_button.checked = true;
                    right_light_button.checked = true;
                    desk_light_button.checked  = true;
                    center_light_button.checked = true;
                    entrance_light_button.checked = true;
                }
                else
                {
                    left_light_button.checked = false;
                    right_light_button.checked = false;
                    desk_light_button.checked  = false;
                    center_light_button.checked = false;
                    entrance_light_button.checked = false;
                }
            }

        }
    }//Groupbox
    Image {
        id: amari
        x: window.width/2.0 - amari.width/2.0
        y: 5
        width: 200
        height: 100
        fillMode: Image.PreserveAspectFit
        source: "qrc:/Images/Amari.png"
    }
}
