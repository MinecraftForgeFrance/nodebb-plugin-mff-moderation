const async = module.parent.require("async");
const db = module.parent.require("./database");
const ModuleSockets = module.parent.require("./socket.io/modules");

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

ModuleSockets.typeWarning = (socket, data, callback) => {
    console.log("Working ?");
    console.log(data);
    saveTypeData(data, callback);
    callback(null, "It worked");
};

ModuleSockets.readTypeWarning = (socket, data, callback) => {
    readTypeData(data, callback);
};

readTypeData = (data, next) => {
    async.waterfall([
        (next) => {
            async.parallel({
                count: (next) => {
                    db.getObjectField("global", "warnTypeCount", next);
                },
                warning: (next) => {
                    async.waterfall([
                        (next) => {
                            let start = 1;
                            let stop = 1;
                            db.getSortedSetRevRange("mff_moderation:warning:type:id", start, stop, next);
                        },
                        (id, next) => {
                            console.log(`Value of id : ${id}`);
                            console.log(`Value of next : ${next}`);
                            db.getObjectFields("mff_moderation:warning:type:" + id, Object.keys(data), (err, newData) => {
                                if (err) {
                                    console.error(err);
                                }
                                data.title = (newData.title) ? newData.title : "";
                                data.level = (newData.level) ? newData.level : 0;
                                data.timeNumber = (newData.timeNumber) ? newData.timeNumber : 0;
                                data.selectUnitTime = (newData.selectUnitTime) ? newData.selectUnitTime : "";
                                console.log(data);
                                next(null, data);
                            });
                        }
                    ], next);
                }
            }, next);
        }
    ], next);
};

saveTypeData = (data, next) => {
    async.waterfall([
        (next) => {
            db.incrObjectField("global", 'nextWarnTypeId', next);
        },
        (id, next) => {
            data.id = id;
            db.setObject("mff_moderation:warning:type:" + id, data, next);
        },
        (next) => {
            async.parallel([
                (next) => {
                    db.incrObjectField("global", "warnTypeCount", next);
                },
                (next) => {
                    db.sortedSetAdd("mff_moderation:warning:type:id", data.id, data.title, next);
                }
            ], next);
        }
    ], next);
};

module.exports = plugin;
