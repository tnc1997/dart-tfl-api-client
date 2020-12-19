const YAML = require("yaml");

module.exports.readVersion = function (contents) {
    return YAML.parseDocument(contents).get("version");
}

module.exports.writeVersion = function (contents, version) {
    const document = YAML.parseDocument(contents);
    document.set("version", version);
    return document.toString();
}
