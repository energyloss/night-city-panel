import QtQuick

QtObject {
    id: service

    readonly property bool available: false
    readonly property string statusText: "SYSTEM METRICS // UNAVAILABLE"
    readonly property real cpuUsage: 0
    readonly property real memoryUsage: 0

    // Planned: non-blocking /proc and /sys readers with a bounded 2s refresh.
    // This placeholder intentionally does not spawn processes.
}
