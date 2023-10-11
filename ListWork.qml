import QtQuick 2.15

Rectangle
{
    id:rectWork
    property int widthWork: rectWork.width
    property int heightWork: rectWork.height
    property ListModel modelWork: listWork.model
    width: 300
    height: 300
    border.width: 2
    border.color: "orange"

    Component
    {
        id:componetWork
    }

    ListView
    {
        id:listWork
        width: parent.width
        height: parent.height
        model: modelWork
    }

}
