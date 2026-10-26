import QtQuick
import QtQuick.Layouts
import "./cards"

Item {
    id: page
    property var theme
    property var systemService
    property var mediaService
    property var weatherService

    GridLayout {
        anchors.fill: parent
        columns: width > 760 ? 2 : 1
        rowSpacing: theme.spacing
        columnSpacing: theme.spacing

        ClockCard { theme: page.theme; Layout.fillWidth: true }
        CalendarCard { theme: page.theme; Layout.fillWidth: true }
        SystemCard { theme: page.theme; systemService: page.systemService; Layout.fillWidth: true }
        MediaCard { theme: page.theme; mediaService: page.mediaService; Layout.fillWidth: true }
        WeatherCard { theme: page.theme; weatherService: page.weatherService; Layout.fillWidth: true }
    }
}
