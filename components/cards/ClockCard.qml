import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Rectangle {
    id: card
    property var theme
    property date now: new Date()
    color: theme.colors.surface
    radius: theme.cardRadius
    implicitHeight: 150

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 4

        Label { text: Qt.formatTime(card.now, "HH:mm"); color: card.theme.colors.text; font.pixelSize: 46; font.bold: true }
        Label { text: Qt.formatDate(card.now, "dddd, dd MMMM").toUpperCase(); color: card.theme.colors.neonBlue; font.pixelSize: 12; font.letterSpacing: 1.2 }
        Item { Layout.fillHeight: true }
        Label { text: "LOCAL TIME // ONLINE"; color: card.theme.colors.mutedText; font.pixelSize: 10 }
    }

    Timer { interval: 1000; running: true; repeat: true; onTriggered: card.now = new Date() }
}
