const mysql = require('mysql');

const db = mysql.createConnection({
    host: 'localhost',
    user: 'username',
    password: 'password',
    database: 'klattice'
});

exports.getRoles = function (callback) {
    db.query(
        "SELECT role_id, role_name FROM role;",
        function (err, rows) {
            if (err, rows) {
                callback(rows);
            }
        }
    );
}