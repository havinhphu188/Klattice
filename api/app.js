const express = require('express')
const app = express()
const db = require('./db')
const hash = require('crypto').createHash;

// Parse URL-encoded bodies (as sent by HTML forms)
app.use(express.urlencoded());
 
//Parse JSON bodies (as sent by API clients)
app.use(express.json());

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
    res.send('');
});

app.post('/userdetails', function(req,res)
{
    var str = JSON.stringify(req.body);
    console.log(str);
    var substr = str.split(str.substring(23,str.length), '"');
    console.log(substr);
    //console.log(req.body.username);
    // var uName = req.body.username; 
    // var uPass = req.body.password; 

    // ans = authenticate(uName, uPass); 
    
    // switch(ans)
    // {
    //     case 1:
    //         res.send('<script>alert("Hello admin");</script>');
    //         break;
    //     case 0:
    //         res.send('<script>alert("Hello employee");</script>');
    //         break;
    //     case -1:
    //         res.send('<script>alert("Failed");</script>');
    //         break;
    // }
});

/*function dummyGet(testUserName,password)
{
    var ansFlag = -1;
    ans = authenticate(testUserName,password,ansFlag);

    if(ans == -1) console.log("login failed");
    else console.log("succeeded");
}*/

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

//dummyGet('admin', 'adminPass');

roles = [];