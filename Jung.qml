import QtQuick 2.2
import QtQuick.Controls 1.1
//import "content"



Rectangle
{
    id: g
    width: 270
    height: 200
    color: "gray"
  //title: "Bit Calculator"


    MouseArea
    {
        anchors.fill: parent
        onClicked:
        {
            parent.color = 'red';
           // Qt.quit();
        }
    }

    Repeater
    {

    }

    Item
    {
        property int num: 0


    Button
    {
        id: one
        x: 150
        y: 125
        width: 22
        height:  22
        property int a: 0
        text: a

        onClicked:
        {
            a= 1
            one.text= '1'
        }

    }
    Button
    {
        id: two
        x: 125
        y: 125
        width: 22
        height:  22
         property int b: 0
        text: b

        onClicked:
        {
            b= 1
            two.text= '1'
        }
    }
    Button
    {
        id: three
        x: 100
        y: 125
        width: 22
        height:  22
        property int c: 0
        text: c

        onClicked:
        {
            c= 1
            three.text= c
        }
      }

     Button
        {
            id: four
            x: 73
            y: 125
            width: 22
            height:  22
            property int d: 0
            text: d

            onClicked:
            {
                d= 1
                four.text= d
            }
        }

    }

    Rectangle
    {
        property int sum: calculateSum()
        id: resultText

        width: 270
        height: 60
        anchors.topMargin: parent
        Text
        {
            anchors.centerIn: parent
            text: parent.sum
        }

    }

    function calculateSum()
    {
       return (8*four.d)+(4*three.c)+(2*two.b)+ one.a;
    }

    function populateButtons()
    {
        var btns = ['1', '2', '3', '...', '+', '-'];
        btnRep.model = btns.length;

        for(var i = 0; i < btns.length; i++)
        {
            btnRep.children[i].text = btns[i];
            btnRep.action = function() {  };
        }

    }

}
