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

exports.getUser = function (userName, userPassword,ansflag)
{   
    //"SELECT username, password FROM User WHERE user_name = " + userName + " AND password = "+userPassword + ";",
    //change the fields later to be up to date with SQL
    db.query(
        "SELECT user_name, password FROM User WHERE user_name = " + "'" + userName + "'" + " AND password = "+"'" +userPassword + "'" +";",
        function (err, rows)
        {
            var result = -1;
            if (err) throw err;

            //-1 = failed, 0 = employee, 1 = admin
            if(rows !=  null && userName == 'admin') result = 1; 
            else if(rows !=  null && userName == 'employee') result = 0; 
            else result = -1;
            ansflag = result;
        }
    ); 
    return ansflag;
}