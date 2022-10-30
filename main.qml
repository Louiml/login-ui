import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

Window {
    visible: true
    width: 582
    height: 412
    color: "#101628"
    title: qsTr("Login UI")

    Text {
        id: title_text
        x: 175
        y: 31
        width: 232
        height: 57
        color: "#ffffff"
        text: qsTr("Login")
        wrapMode: Text.WordWrap
        verticalAlignment: Text.AlignVCenter
        opacity: 1
        font.italic: false
        font.bold: true
        font.underline: false
        font.pixelSize: 65
        font.family: "Tahoma"
        styleColor: "#0e26e4"
        style: Text.Outline
        horizontalAlignment: Text.AlignHCenter
    }

    Rectangle {
        id: box_login
        x: 160
        y: 130
        width: 265
        height: 232
        color: "#151d33"
        border.color: "#1e2238"
        border.width: 7

        Text {
            id: text_1_login
            x: 16
            y: 38
            color: "#5568a0"
            text: qsTr("Email:")
            styleColor: "#1b50a4"
            style: Text.Outline
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
            font.pixelSize: 22
        }

        Rectangle {
            id: rectangle1
            x: 99
            y: 45
            width: 143
            height: 20
            color: "#25306d"
        }

        TextInput {
            id: text_input_login1
            x: 99
            y: 45
            width: 132
            height: 20
            color: "#5568a0"
            text: qsTr("your@email.com")
            selectionColor: "#1b50a4"
            horizontalAlignment: Text.AlignLeft
            echoMode: TextInput.Normal
            cursorVisible: false
            font.bold: true
            font.family: "Verdana"
            font.pixelSize: 14
        }

        Text {
            id: text_2_login1
            x: 16
            y: 98
            color: "#5568a0"
            text: qsTr("Password:")
            horizontalAlignment: Text.AlignHCenter
            style: Text.Outline
            styleColor: "#1b50a4"
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 17
        }

        Rectangle {
            id: boxer
            x: 122
            y: 99
            width: 128
            height: 20
            color: "#25306d"
        }

        TextInput {
            id: text_input_login2
            x: 122
            y: 99
            width: 132
            height: 20
            color: "#5568a0"
            text: qsTr("1234")
            selectionColor: "#1b50a4"
            horizontalAlignment: Text.AlignLeft
            cursorVisible: false
            echoMode: TextInput.Password
            font.bold: true
            font.family: "Verdana"
            font.pixelSize: 14
        }
    }

    Button {
        id: login_button
        x: 248
        y: 293
        text: qsTr("Login")
        enabled: true
        autoRepeat: false
        autoExclusive: false
        checked: false
        checkable: false
        highlighted: false
        spacing: 0
    }

    Connections {
        target: login_button
        onClicked: print("connected")
    }
}
