const mysql = require('mysql');

const db = mysql.createConnection({
    host: 'localhost',
    user: 'username',
    password: 'password',
    database: 'klattice'
});

exports.getRoles = function (callback) {
    db.query(
        "SELECT role_id, role_name, role_summary, role_sum_link FROM role;",
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