const mysql = require("mysql");

const db = mysql.createConnection({
  host: "localhost",
  user: "username",
  password: "password",
  database: "klattice"
});

exports.getRoleFamilies = function (callback) {
    db.query(
        "SELECT role_id, family_id FROM role_family;",
        function (err, rows) {
            if (err, rows) {
                callback(rows);
            }
        }
    );
}

exports.getUser = function (username, userPassword){  
    return new Promise(function(resolve, reject) {
    var queryValidateUserExists = "SELECT user_name, user_password, user_type FROM user WHERE user_name = ? AND user_password = ?;";
    db.query(
        queryValidateUserExists, [username, userPassword], 
        function (err, rows)
        {
            result ='f';
            if (err) {
              resolve('f');
              throw err;
            }
            if(rows.length > 0 && rows[0].user_type == 'admin') {
              result = 'a'; 
            }
            else if(rows.length > 0 && rows[0].user_type == 'employee') {
               result = 'e'; 
            }
            resolve(result);
        }
    );
});
}


exports.getCapabilityLead = function(callback){
  db.query(
    "SELECT capability_lead_id, lead_name, lead_message, image_source FROM capability_lead;",
    function(err, rows) {
      if ((err, rows)) {
        callback(rows);
      }
    }
  );
  }

exports.deleteRole = function (roleObject){
    return new Promise(function(resolve, reject){
        var queryDeleteRole = "DELETE FROM role WHERE role_id = ?";
        db.query(queryDeleteRole, roleObject.params.roleID, function(err, result, fields){
            if (err) throw err;
            resolve(result);
        });
    });
}

exports.getRoles = function(callback) {
  db.query(
    "SELECT role_id, role_name, role_summary, role_sum_link, capability_id, band_id FROM role;",
    function(err, rows) {
      if ((err, rows)) {
        callback(rows);
      }
    }
  );
};

exports.getResponsibilities = function(callback) {
  db.query(
    "SELECT responsibility_id, band_id, responsibility_description FROM responsibility;",
    function(err, rows) {
       
      console.log(rows[0]);
      if ((err, rows)) {
        callback(rows);
      }
    }
  );
};

exports.addRole = function (roleObject){
    return new Promise(function(resolve, reject){
        var queryAddRole = "INSERT INTO role (capability_id, role_name, role_summary, role_sum_link, band_id) VALUES (?,?,?,?,?)";
        db.query(queryAddRole, [roleObject.capability_id, roleObject.role_name, roleObject.role_summary, roleObject.role_sum_link, roleObject.band_id], function (err, result, fields) {
            if (err) throw err;
            resolve(result);
        });
    });
}

exports.getCapability = function(callback) {
  db.query(
    "SELECT capability_id, capability_name, family_id, capability_lead_id FROM capability;",
    function(err, rows) {
      if ((err, rows)) {
        callback(rows);
      }
    }
  );
};

exports.getTitle = function(callback) {
  db.query("SELECT title_id, title_name FROM title;", function(err, rows) {
    if ((err, rows)) {
      callback(rows);
    }
  });
};

exports.getCompetency = function(callback) {
  db.query(
    "SELECT competency_id, title_id, description FROM competency;",
    function(err, rows) {
      if ((err, rows)) {
        callback(rows);
      }
    }
  );
};

exports.getBandCompetency = function(callback) {
  db.query("SELECT competency_id, band_id FROM band_competency;", function(
    err,
    rows
  ) {
    if ((err, rows)) {
      callback(rows);
    }
  });
};

exports.getBands = function(callback) {
  db.query("SELECT band_id, band_name, level FROM band;", function(err, rows) {
    if ((err, rows)) {
      callback(rows);
    }
  });
};

exports.getBandTitles = function(callback) {
  db.query("SELECT band_id, title_id FROM band_title", function(err, rows) {
    if ((err, rows)) {
      callback(rows);
    }
  });
};

exports.getFamilies = function(callback) {
  db.query("SELECT family_id, family_name FROM family;", function(err, rows) {
    if ((err, rows)) {
      callback(rows);
    }
  });
};
