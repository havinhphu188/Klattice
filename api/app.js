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
    testUserName = 'admin';
    password =  'adminPass';
    authenticate(testUserName,password);
});

app.post('/getuserdetails', function(req,res)
{

});

function dummyGet(testUserName,password)
{
    ans = authenticate(testUserName,password);

    if(ans == false) console.log("login failed");
    else console.log("succeeded");
}

function updateRoles(rolesfn){
    db.getRoles(function(rows){
        roles = rows;
        rolesfn();
    });
}

//salts, hashes, then checks DB returns true or false
function authenticate(userName, password)
{
    password = saltedHash(password);
    result = db.getUser(userName, password, ouputQueryRes);
}

//outputs the result
function ouputQueryRes(res)
{
    if(res == -1) console.log('failed');
    else if(res == 0) console.log('hi employee');
    else if(res == 1) console.log('hi admin');
}

//applies salt and hash
function saltedHash(password)
{
    alg = 'md5'
    salt = "S@E1F53135E559C253assdk100101"; //random salt (taken from wikipedia)
    password += salt;
    password = hash(alg).update(password).digest('hex');

    return password; 
}

dummyGet('admin', 'adminPass');

roles = [];

