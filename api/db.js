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

 //-1 = failed, 0 = employee, 1 = admin
exports.getUser = function (userName, userPassword,ansflag)
{   
    db.query(
        "SELECT user_name, password FROM User WHERE user_name = " + "'" + userName + "'" + " AND password = "+"'" +userPassword + "'" +";",
        function (err, rows)
        {
            var result = -1;
            if (err) throw err;

            if(rows !=  null && userName == 'admin') result = 1; 
            else if(rows !=  null && userName == 'employee') result = 0; 
            else result = -1;
            ansflag = result;
        }
    ); 
    return ansflag;
}