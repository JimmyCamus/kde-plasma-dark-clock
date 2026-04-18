import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import org.kde.plasma.plasmoid
import org.kde.plasma.core as PlasmaCore
import org.kde.plasma.components as PlasmaComponents3

PlasmoidItem {
    id: root
    Plasmoid.backgroundHints: PlasmaCore.Types.NoBackground

    property date currentTime: new Date()

    Timer {
        id: clockTimer
        interval: 1000
        running: true
        repeat: true
        onTriggered: currentTime = new Date()
    }


    FontLoader { id: maytormFont; source: "../fonts/Maytorm-Regular.ttf" }
    FontLoader { id: skullFont; source: "../fonts/Javier Skull.ttf" }

    fullRepresentation: ColumnLayout {
        id: fullRep
        anchors.fill: parent
        spacing: 0

        /* Day of the week */
        PlasmaComponents3.Label {
            text: Qt.formatDate(root.currentTime, "dddd")
            horizontalAlignment: Text.AlignHCenter
            Layout.alignment: Qt.AlignHCenter
            font.family: maytormFont.name
            font.pointSize: plasmoid.configuration.titleFontSize ?? 70
            color: plasmoid.configuration.fontColor 
            font.letterSpacing: 4
            bottomPadding: -25
        }

        /* Date */
        PlasmaComponents3.Label {
            text: Qt.formatDate(root.currentTime, "d MMMM yyyy")
            horizontalAlignment: Text.AlignHCenter
            Layout.alignment: Qt.AlignHCenter
            font.family: skullFont.name
            font.pointSize: plasmoid.configuration.dateFontSize ?? 34
            font.letterSpacing: 4
            color: plasmoid.configuration.fontColor
        }

        /* Time */
        PlasmaComponents3.Label {
            text: "-" + Qt.formatTime(root.currentTime, "hh:mm") + "-"
            horizontalAlignment: Text.AlignHCenter
            Layout.alignment: Qt.AlignHCenter
            font.family: skullFont.name
            font.pointSize: plasmoid.configuration.timeFontSize ?? 30
            font.letterSpacing: 4
            color: plasmoid.configuration.fontColor
        }

        Item { Layout.fillHeight: true }
    } 
}
