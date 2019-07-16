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

exports.getUser = function (callback, userName, userPassword)
{   
    //change the fields later to be up to date with SQL
    db.query(
        "SELECT username, password FROM User WHERE user_name",
        function (err, rows)
        {
            if(err,rows)
            {
                //error
            }
        }
    );
}