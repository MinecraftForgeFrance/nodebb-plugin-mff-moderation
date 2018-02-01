const plugin = {};

plugin.init((params, callback) => {
    let app = params.router;
    callback();
});

module.exports = plugin;
