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
exports.getUser = function (userName, userPassword)
{   
    console.log(userPassword)
    return new Promise(function(resolve, reject) {
    var queryName = "SELECT user_name, user_password, user_role FROM User WHERE user_name = " + "'" + userName + "'" + " AND user_password = "+"'" +userPassword + "'" +";";
    db.query(
        queryName,  
        function (err, rows)
        {
            result = -1;
            if (err) throw err;
            if(rows.length > 0 && rows[0].user_role == 'admin') result = 1; 
            else if(rows.length > 0 && rows[0].user_role == 'employee') result = 0; 
            else result = -1;

            resolve(result);
        }
    );
    });

}