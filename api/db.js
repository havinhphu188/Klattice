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

exports.deleteRoles = function(callback){

    db.query('DELETE FROM `role` WHERE `id`=?', [req.body.role_id], function (err, rows) {
       if(err, rows){
            callback(rows);
        }
      });
}

exports.getUser = function (userName, userPassword){   
    return new Promise(function(resolve, reject) {
    var queryValidateUserExists = "SELECT user_name, user_password, user_type FROM user WHERE user_name = ? AND user_password = ?;";
    db.query(
        queryValidateUserExists, [userName, userPassword], 
        function (err, rows)
        {
            result ='f';
            if (err) throw err;
            if(rows.length > 0 && rows[0].user_type == 'admin') result = 'a'; 
            else if(rows.length > 0 && rows[0].user_type == 'employee') result = 'e'; 
            
            resolve(result);
        }
    );
    });
}

exports.getCapability = function(callback) {
    db.query(
        "SELECT capability_id, capability_name, family_id FROM capability;",
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
        "SELECT band_id, band_name, level FROM band;",
        function (err, rows) {
            if(err, rows) {
                callback(rows);
            }
        }
    );
}

exports.getBandTitles = function(callback) {
    db.query(
        "SELECT band_id, title_id FROM band_title",
        function (err, rows) {
            if(err, rows) {
                callback(rows);
            }
        }
    );
}

exports.getFamilies = function(callback) {
    db.query(
        "SELECT family_id, family_name FROM family;",
        function (err, rows) {
            if(err, rows) {
                callback(rows);
            }
        }
    );
}
