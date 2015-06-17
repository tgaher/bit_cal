import QtQuick 2.2
import QtQuick.Controls 1.1



Rectangle {
    width: 270
    height: 200
    color: "gray"
  //title: "Bit Calculator"

    MouseArea {
        anchors.fill: parent
        onClicked:
        {
            parent.color = 'red';
           // Qt.quit();
        }
    }
    Button
    {
        id: one
        x: 150
        y: 125
        width: 22
        height:  22
        
        text: '0'
        onClicked: one.text= '1'
       // fontx.pointSize: 250
    }
    Button
    {
        id: two
        x: 125
        y: 125
        width: 22
        height:  22

        text: '0'
        onClicked: two.text= '1'
       // fontx.pointSize: 250
    }
    Button
    {
        id: three
        x: 100
        y: 125
        width: 22
        height:  22

        text: '0'
        onClicked: three.text= '1'
      }

     Button
        {
            id: four
            x: 73
            y: 125
            width: 22
            height:  22

            text: '0'
            onClicked: four.text= '1'

            // fontx.pointSize: 250
        }


}
