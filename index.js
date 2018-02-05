const async = module.parent.require("async");
const db = module.parent.require("./database");
const categories = module.parent.require('./categories');

const plugin = {};

plugin.init = (params, callback) => {
    let app = params.router;
    let middleware = params.middleware;
    app.get("/admin/plugins/mff-moderation", middleware.admin.buildHeader, renderAdmin);
    app.get("/api/admin/plugins/mff-moderation", renderAdmin);
    callback();
};

plugin.addAdminNavigation = (header, callback) => {
    header.plugins.push({
        route: "/plugins/mff-moderation",
        name: "Mff Moderation"
    });
    callback(null, header);
};

renderAdmin = (req, res, next) => {
    res.render("admin/plugins/mff-moderation", {});
};

module.exports = plugin;