import QtQuick
import QtQuick.Controls

Item {
    property var theme
    property var systemService
    Label { anchors.centerIn: parent; text: systemService.statusText; color: theme.colors.mutedText; font.pixelSize: 18 }
}
