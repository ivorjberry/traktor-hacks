import QtQuick 2.5
import QtQuick.Layouts 1.1
import '../Views'

//----------------------------------------------------------------------------------------------------------------------
//  Stem Mute Indicator - Display mute state for all 4 stems at the bottom of the screen
//----------------------------------------------------------------------------------------------------------------------

Item {
  id: display
  Colors {id: colors}
  
  // MODEL PROPERTIES //
  property var deckInfo: ({})
  
  property real stemHeight: 20
  property real spacing: 4
  property real cornerRadius: 3
  
  width: parent.width
  height: stemHeight
  
  Rectangle {
    anchors.fill: parent
    color: "transparent"
  }
  
  RowLayout {
    anchors.fill: parent
    spacing: display.spacing
    
    // Stem 1
    Rectangle {
      Layout.fillWidth: true
      Layout.fillHeight: true
      color: deckInfo.stem1Muted ? colors.colorDeckDarkGrey : deckInfo.stem1Color
      radius: display.cornerRadius
      
      Text {
        text: deckInfo.stem1Name || "Stem 1"
        font.pixelSize: 12
        font.family: "Roboto"
        color: deckInfo.stem1Muted ? colors.colorDeckGrey : "white"
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
      }
      
      // Muted indicator
      Rectangle {
        visible: deckInfo.stem1Muted
        width: 12
        height: 12
        color: colors.colorDeckGrey
        radius: 2
        anchors.right: parent.right
        anchors.rightMargin: 4
        anchors.verticalCenter: parent.verticalCenter
        
        Text {
          text: "M"
          font.pixelSize: 9
          font.family: "Roboto"
          font.weight: Font.Bold
          color: colors.colorDeckDarkGrey
          anchors.centerIn: parent
        }
      }
    }
    
    // Stem 2
    Rectangle {
      Layout.fillWidth: true
      Layout.fillHeight: true
      color: deckInfo.stem2Muted ? colors.colorDeckDarkGrey : deckInfo.stem2Color
      radius: display.cornerRadius
      
      Text {
        text: deckInfo.stem2Name || "Stem 2"
        font.pixelSize: 12
        font.family: "Roboto"
        color: deckInfo.stem2Muted ? colors.colorDeckGrey : "white"
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
      }
      
      Rectangle {
        visible: deckInfo.stem2Muted
        width: 12
        height: 12
        color: colors.colorDeckGrey
        radius: 2
        anchors.right: parent.right
        anchors.rightMargin: 4
        anchors.verticalCenter: parent.verticalCenter
        
        Text {
          text: "M"
          font.pixelSize: 9
          font.family: "Roboto"
          font.weight: Font.Bold
          color: colors.colorDeckDarkGrey
          anchors.centerIn: parent
        }
      }
    }
    
    // Stem 3
    Rectangle {
      Layout.fillWidth: true
      Layout.fillHeight: true
      color: deckInfo.stem3Muted ? colors.colorDeckDarkGrey : deckInfo.stem3Color
      radius: display.cornerRadius
      
      Text {
        text: deckInfo.stem3Name || "Stem 3"
        font.pixelSize: 12
        font.family: "Roboto"
        color: deckInfo.stem3Muted ? colors.colorDeckGrey : "white"
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
      }
      
      Rectangle {
        visible: deckInfo.stem3Muted
        width: 12
        height: 12
        color: colors.colorDeckGrey
        radius: 2
        anchors.right: parent.right
        anchors.rightMargin: 4
        anchors.verticalCenter: parent.verticalCenter
        
        Text {
          text: "M"
          font.pixelSize: 9
          font.family: "Roboto"
          font.weight: Font.Bold
          color: colors.colorDeckDarkGrey
          anchors.centerIn: parent
        }
      }
    }
    
    // Stem 4
    Rectangle {
      Layout.fillWidth: true
      Layout.fillHeight: true
      color: deckInfo.stem4Muted ? colors.colorDeckDarkGrey : deckInfo.stem4Color
      radius: display.cornerRadius
      
      Text {
        text: deckInfo.stem4Name || "Stem 4"
        font.pixelSize: 12
        font.family: "Roboto"
        color: deckInfo.stem4Muted ? colors.colorDeckGrey : "white"
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
      }
      
      Rectangle {
        visible: deckInfo.stem4Muted
        width: 12
        height: 12
        color: colors.colorDeckGrey
        radius: 2
        anchors.right: parent.right
        anchors.rightMargin: 4
        anchors.verticalCenter: parent.verticalCenter
        
        Text {
          text: "M"
          font.pixelSize: 9
          font.family: "Roboto"
          font.weight: Font.Bold
          color: colors.colorDeckDarkGrey
          anchors.centerIn: parent
        }
      }
    }
  }
}
