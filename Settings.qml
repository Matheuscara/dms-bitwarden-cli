import "DmsUi"
import QtQuick
import qs.Common
import qs.Services
import qs.Widgets
import qs.Modules.Plugins
PluginSettings {
    pluginId: "bitwardenMatheuscara"
    DankButton {
        text: Tr.text("Open Bitwarden settings")
        iconName: "settings"
        enabled: PluginService.pluginDaemonInstances["bitwardenMatheuscara"] !== undefined
        onClicked: {
            const vault = PluginService.pluginDaemonInstances["bitwardenMatheuscara"];
            if (vault) { vault.open(); vault.openSettings(); }
        }
    }
}
