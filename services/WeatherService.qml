import QtQuick

QtObject {
    readonly property bool available: false
    readonly property string location: "LOCATION NOT CONFIGURED"
    readonly property string summary: "WEATHER DATA UNAVAILABLE"
    readonly property string temperature: "--°"

    // Planned: user-configured HTTPS provider, cache and exponential backoff.
}
