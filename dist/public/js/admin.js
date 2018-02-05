"use strict";

define("/admin/plugins/mff-moderation", ['settings'], function (settings) {
    console.log("Je suis lu");
    var ACP = {};
    ACP.init = function () {
        settings.load("mff-moderation", $('.mff-moderation'));
        $("#save").on("click", function () {
            console.log("Je suis lu");
            settings.save("mff-moderation", $('.mff-moderation'), function () {
                app.alert({
                    type: 'success',
                    alert_id: 'mff-moderation-saved',
                    title: 'Settings saved',
                    message: 'Please reload your NodeBB to apply these settings',
                    clickfn: function clickfn() {
                        socket.emit('admin.reload');
                    }
                });
            });
        });
    };

    return ACP;
});
//# sourceMappingURL=admin.js.map