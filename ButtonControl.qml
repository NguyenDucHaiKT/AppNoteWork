import QtQuick 2.15

Rectangle
{
    id:rectButton
    property string imageButton: imgbtn.source
    property int widthImg: imgbtn.width
    property int heightImg: imgbtn.height
    property int buttonWidth: rectButton.width
    property int buttonHeight: rectButton.height
    property string normalColor: value
    signal clickButton()
    signal pressButton()
    signal releaseButton()
    width: 100
    height: 100
    border.color: "orange"
    border.width: 2
    Image
    {
        id: imgbtn
        source: imageButton
        fillMode: Image.PreserveAspectCrop
        anchors.fill: parent
    }

    state: [
        State {
            name: "click"
            when: rectButton.clickButton()
            PropertyChanges {
                target: imgbtn
            }
        }
    ]
}
