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

app.get('/userdetails', function(req, res)
{
  //  testUserName = 'admin';
    //password =  'adminPass';
});

app.post('/userdetails', function(req,res)
{
    ans = authenticate(testUserName,password);
    
    if(ans)
    {

    }
});

function dummyGet(testUserName,password)
{
    var ansFlag = -1;
    ans = authenticate(testUserName,password,ansFlag);

    if(ans == -1) console.log("login failed");
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
    ans = db.getUser(userName, password);

    return ans;
}

//applies salt and hash
function saltedHash(password)
{
    alg = 'sha1'
    salt = "S@E1F53135E559C253assdk100101"; //random salt (taken from wikipedia)
    password += salt;
    password = hash(alg).update(password).digest('hex');
    console.log(password);
    return password; 
}

dummyGet('admin', 'adminPass');

roles = [];

//UPDATE user SET password = "3fac8fe22359e7357fda5b7aaa79a96f074d4f34" WHERE user_name = "admin";