const mysql = require('mysql');

const db = mysql.createConnection({
    host: 'localhost',
    user: 'username',
    password: 'password',
    database: 'klattice'
});

exports.getRoles = function (callback) {
    db.query(
        "SELECT role_id, role_name, role_summary, role_sum_link, capability_id, band_id FROM role;",
        function (err, rows) {
            if (err, rows) {
                callback(rows);
            }
        }
    );
}

exports.getCapability = function(callback) {
    db.query(
        "SELECT capability_id, capability_name, family_id FROM capability;",
        function (err, rows) {
            if(err, rows) {
                callback(rows);
            }
        }
    );
}

exports.getBands = function(callback) {
    db.query(
        "SELECT band_id, band_name, level, competency FROM band;",
        function (err, rows) {
            if(err, rows) {
                callback(rows);
            }
        }
    );
}

exports.getFamilies = function(callback) {
    db.query(
        "SELECT family_id, family_name FROM family;",
        function (err, rows) {
            if(err, rows) {
                callback(rows);
            }
        }
    );
}