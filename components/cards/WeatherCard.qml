import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Rectangle {
    property var theme
    property var weatherService
    color: theme.colors.surface
    radius: theme.cardRadius
    implicitHeight: 150

    ColumnLayout {
        anchors.fill: parent; anchors.margins: 20; spacing: 8
        Label { text: "WEATHER // HTTPS"; color: theme.colors.neonViolet; font.pixelSize: 12; font.bold: true; font.letterSpacing: 1.2 }
        Label { text: weatherService.temperature; color: theme.colors.text; font.pixelSize: 32; font.bold: true }
        Label { text: weatherService.summary; color: theme.colors.mutedText; font.pixelSize: 13; elide: Text.ElideRight; Layout.fillWidth: true }
        Item { Layout.fillHeight: true }
        Label { text: weatherService.location; color: theme.colors.mutedText; font.pixelSize: 10; elide: Text.ElideRight; Layout.fillWidth: true }
    }
}
