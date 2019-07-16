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
        "SELECT capability_id, capability_name FROM capability;",
        function (err, rows) {
            if(err, rows) {
                callback(rows);
            }
        }
    );
}

exports.getCompetency = function(callback) {
    db.query(
        "SELECT competency_id, title_id, description FROM competency;",
        function (err, rows) {
            if(err, rows) {
                callback(rows);
            }
        }
    );
}

exports.getTitle = function(callback) {
    db.query(
        "SELECT title_id, title_name FROM title;",
        function (err, rows) {
            if(err, rows) {
                callback(rows);
            }
        }
    );
}

exports.getBandCompetency = function(callback) {
    db.query(
        "SELECT competency_id, band_id FROM band_competency;",
        function (err, rows) {
            if(err, rows) {
                callback(rows);
            }
        }
    );
}

exports.getBands = function(callback) {
    db.query(
        "SELECT band_id, band_name, level FROM band",
        function (err, rows) {
            if(err, rows) {
                callback(rows);
            }
        }
    );
}

exports.getBandTitles = function(callback) {
    db.query(
        "SELECT band_id, title_id FROM band_titles",
        function (err, rows) {
            if(err, rows) {
                callback(rows);
            }
        }
    );
}