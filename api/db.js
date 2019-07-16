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

exports.getUser = function (userName, userPassword, output)
{   
    //"SELECT username, password FROM User WHERE user_name = " + userName + " AND password = "+userPassword + ";",
    //change the fields later to be up to date with SQL
    db.query(
        'SELECT * FROM role;',
        function (err, rows)
        {
            ans = 2;
            if (err) throw err;

            //-1 = failed, 0 = employee, 1 = admin
            if(rows !=  null && userName == 'admin') ans = 1; 
            else if(rows !=  null && userName == 'employee') ans = 0; 
            else ans = -1;

            output(ans);
        }
    );
}