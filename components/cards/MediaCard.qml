import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Rectangle {
    property var theme
    property var mediaService
    color: theme.colors.surface
    radius: theme.cardRadius
    implicitHeight: 150

    ColumnLayout {
        anchors.fill: parent; anchors.margins: 20; spacing: 8
        Label { text: "MEDIA // MPRIS"; color: theme.colors.neonBlue; font.pixelSize: 12; font.bold: true; font.letterSpacing: 1.2 }
        Label { text: mediaService.title; color: theme.colors.text; font.pixelSize: 18; font.bold: true; elide: Text.ElideRight; Layout.fillWidth: true }
        Label { text: mediaService.playerName; color: theme.colors.mutedText; font.pixelSize: 13 }
        Item { Layout.fillHeight: true }
        Label { text: mediaService.available ? "PLAYER LINK // ACTIVE" : "PLAYER LINK // STANDBY"; color: theme.colors.mutedText; font.pixelSize: 10 }
    }
}
