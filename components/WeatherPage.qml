import QtQuick
import QtQuick.Controls

Item {
    property var theme
    property var weatherService
    Label { anchors.centerIn: parent; text: weatherService.summary; color: theme.colors.mutedText; font.pixelSize: 18 }
}
