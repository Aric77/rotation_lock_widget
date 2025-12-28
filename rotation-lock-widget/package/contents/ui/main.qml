import QtQuick
import org.kde.plasma.plasmoid
import org.kde.plasma.components as PlasmaComponents
import org.kde.plasma.plasma5support as Plasma5Support

PlasmoidItem{
    id: root

    // Run commands via the "executable" data engine (moved to Plasma5Support in Plasma 6)
    Plasma5Support.DataSource {
        id: executable
        engine: "executable"
        connectedSources: []
        function run(cmd) {
            connectSource(cmd)
        }
        onNewData: function(sourceName, data) {
            disconnectSource(sourceName)
        }
    }

    // One-click panel/tray-style representation
    compactRepresentation: PlasmaComponents.ToolButton {
        icon.name: "object-locked"
        text: ""
        onClicked: executable.run("/home/aric/.local/bin/rotation-lock.sh")
    }

    fullRepresentation: Item { }
    preferredRepresentation: Plasmoid.compactRepresentation
}