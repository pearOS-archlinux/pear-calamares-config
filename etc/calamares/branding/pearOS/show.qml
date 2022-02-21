import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    Timer {
        id: advanceTimer
        interval: 5000
        running: false
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }
    
    Slide {
        anchors.fill: parent

        Image {
            id: background
            source: "1.png"
            anchors.fill: parent
        
            Text {
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 0
                anchors.horizontalCenterOffset: -125
                font.pixelSize: parent.width *.015
                color: 'black'
                text: qsTr("")
                wrapMode: Text.WordWrap
                width: 500
                horizontalAlignment: Text.AlignLeft
            }
        }
    }

    Component.onCompleted: advanceTimer.running = true
}
