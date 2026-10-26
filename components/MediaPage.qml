import QtQuick
import QtQuick.Controls

Item {
    property var theme
    property var mediaService
    Label { anchors.centerIn: parent; text: mediaService.title; color: theme.colors.mutedText; font.pixelSize: 18 }
}
