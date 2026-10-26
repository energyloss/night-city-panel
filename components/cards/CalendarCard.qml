import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Rectangle {
    property var theme
    color: theme.colors.surface
    radius: theme.cardRadius
    implicitHeight: 150

    ColumnLayout {
        anchors.fill: parent; anchors.margins: 20; spacing: 8
        Label { text: "CALENDAR"; color: theme.colors.neonViolet; font.pixelSize: 12; font.bold: true; font.letterSpacing: 1.2 }
        Label { text: Qt.formatDate(new Date(), "MMMM yyyy"); color: theme.colors.text; font.pixelSize: 22; font.bold: true }
        Label { text: "No events configured"; color: theme.colors.mutedText; font.pixelSize: 13 }
        Item { Layout.fillHeight: true }
        Label { text: "DATE CHANGE // EVENT READY"; color: theme.colors.mutedText; font.pixelSize: 10 }
    }
}
