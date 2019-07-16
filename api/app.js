const express = require('express')
const app = express()
const db = require('./db')
const hash = require('crypto').createHash;

app.listen(7999, function() {
    console.log('Express started');
});

app.get('/getroles', function(req, res) {
    updateRoles(function(){
        res.send(roles);
    });
});

app.get('/getuserdetails', function(req, res)
{

})

function updateRoles(rolesfn){
    db.getRoles(function(rows){
        roles = rows;
        rolesfn();
    });
}

function saltedHash(password)
{
    alg = 'md5'
    salt = "S@E1F53135E559C253assdk100101";
    console.log(password);
    password += salt;
    console.log(password);
    password = hash(alg).update(password).digest('hex');
    console.log(password);
}

saltedHash("weesteeky");

roles = [];

