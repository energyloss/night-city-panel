import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Rectangle {
    property var theme
    property var systemService
    color: theme.colors.surface
    radius: theme.cardRadius
    implicitHeight: 150

    ColumnLayout {
        anchors.fill: parent; anchors.margins: 20; spacing: 8
        Label { text: "SYSTEM"; color: theme.colors.acidGreen; font.pixelSize: 12; font.bold: true; font.letterSpacing: 1.2 }
        Label { text: systemService.statusText; color: theme.colors.text; font.pixelSize: 14; font.bold: true; elide: Text.ElideRight; Layout.fillWidth: true }
        Label { text: systemService.available ? `CPU ${systemService.cpuUsage}%  RAM ${systemService.memoryUsage}%` : "Awaiting Linux metrics provider"; color: theme.colors.mutedText; font.pixelSize: 13 }
        Item { Layout.fillHeight: true }
        Label { text: "KERNEL INTERFACES // 2s"; color: theme.colors.mutedText; font.pixelSize: 10 }
    }
}
