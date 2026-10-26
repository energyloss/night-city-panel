import Quickshell
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "./theme"
import "./services"
import "./components"

PanelWindow {
    id: window
    visible: true
    color: themeObject.colors.background
    implicitWidth: 920
    implicitHeight: 680
    anchors.top: true
    anchors.left: true
    anchors.right: true
    anchors.bottom: true

    Theme { id: themeObject }
    SystemService { id: systemServiceObject }
    MediaService { id: mediaServiceObject }
    WeatherService { id: weatherServiceObject }
    WorkspaceProvider { id: workspaceProviderObject }

    property int selectedPage: 0
    readonly property var pages: ["DASHBOARD", "MEDIA", "PERFORMANCE", "WEATHER"]

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: themeObject.contentPadding
        spacing: themeObject.spacing

        RowLayout {
            Layout.fillWidth: true
            Label { text: "NIGHT CITY PANEL"; color: themeObject.colors.text; font.pixelSize: 22; font.bold: true; font.letterSpacing: 2 }
            Item { Layout.fillWidth: true }
            Label { text: workspaceProviderObject.compositor; color: themeObject.colors.mutedText; font.pixelSize: 10 }
        }

        RowLayout {
            Layout.fillWidth: true
            spacing: 6
            Repeater {
                model: window.pages
                delegate: Button {
                    required property string modelData
                    required property int index
                    text: modelData
                    checkable: true
                    checked: window.selectedPage === index
                    onClicked: window.selectedPage = index
                    background: Rectangle { color: checked ? themeObject.colors.neonBlue : themeObject.colors.surface; radius: 8 }
                    contentItem: Text { text: parent.text; color: checked ? themeObject.colors.background : themeObject.colors.mutedText; horizontalAlignment: Text.AlignHCenter; verticalAlignment: Text.AlignVCenter; font.pixelSize: 11; font.bold: true }
                }
            }
        }

        Loader {
            id: pageLoader
            Layout.fillWidth: true
            Layout.fillHeight: true
            sourceComponent: [dashboardPage, mediaPage, performancePage, weatherPage][window.selectedPage]
        }
    }

    Component {
        id: dashboardPage
        DashboardPage { theme: themeObject; systemService: systemServiceObject; mediaService: mediaServiceObject; weatherService: weatherServiceObject }
    }
    Component { id: mediaPage; MediaPage { theme: themeObject; mediaService: mediaServiceObject } }
    Component { id: performancePage; PerformancePage { theme: themeObject; systemService: systemServiceObject } }
    Component { id: weatherPage; WeatherPage { theme: themeObject; weatherService: weatherServiceObject } }
}
