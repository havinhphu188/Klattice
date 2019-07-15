const mysql = require('mysql');

const db = mysql.createConnection({
    host: 'localhost',
    user: 'username',
    password: 'password',
    database: 'klattice'
});

exports.getRoles = function (callback) {
    db.query(
        "SELECT roleID, roleName FROM Role;",
        function (err, rows) {
            if (err, rows) {
                callback(rows);
            }
        }
    );
}