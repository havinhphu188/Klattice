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

 //-1 = failed, 0 = employee, 1 = admin
exports.getUser = function (userName, userPassword)
{   
    console.log(userPassword)
    return new Promise(function(resolve, reject) {
    var queryName = "SELECT user_name, user_password, user_type FROM user WHERE user_name = " + "'" + userName + "'" + " AND user_password = "+"'" +userPassword + "'" +";";
    db.query(
        queryName,  
        function (err, rows)
        {
            result = -1;
            if (err) throw err;
            if(rows.length > 0 && rows[0].user_type == 'admin') result = 1; 
            else if(rows.length > 0 && rows[0].user_type == 'employee') result = 0; 
            else result = -1;

            resolve(result);
        }
    );
    });
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

exports.getBands = function(callback) {
    db.query(
        "SELECT band_id, band_name, level, competency FROM band",
        function (err, rows) {
            if(err, rows) {
                callback(rows);
            }
        }
    );
}