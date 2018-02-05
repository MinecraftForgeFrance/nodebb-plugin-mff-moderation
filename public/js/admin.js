define("/admin/plugins/mff-moderation", ['settings'], (settings) => {
    console.log("Je suis lu");
    const ACP = {};
    ACP.init = () => {
        settings.load("mff-moderation", $('.mff-moderation'));
        $("#save").on("click", () => {
            console.log("Je suis lu");
            settings.save("mff-moderation", $('.mff-moderation'), () => {
                app.alert({
                    type: 'success',
                    alert_id: 'mff-moderation-saved',
                    title: 'Settings saved',
                    message: 'Please reload your NodeBB to apply these settings',
                    clickfn: () => {
                        socket.emit('admin.reload');
                    }
                });
            });
        });
    };

    return ACP;
});
