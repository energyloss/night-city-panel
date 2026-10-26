import QtQuick

QtObject {
    readonly property bool available: false
    readonly property bool playing: false
    readonly property string playerName: "NO ACTIVE PLAYER"
    readonly property string title: "Connect an MPRIS player"

    // Planned: event-driven MPRIS/D-Bus integration with safe empty states.
}
