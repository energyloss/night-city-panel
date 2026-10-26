import QtQuick

QtObject {
    readonly property bool available: false
    readonly property string compositor: "COMPOSITOR NOT DETECTED"
    readonly property int activeWorkspace: 0

    // Planned: provider abstraction; Hyprland is optional, never mandatory.
}
