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

app.post('/userdetails', async function(req,res)
{
    var username = req.body.params.username;
    var password = req.body.params.password;

    ans = await authenticate(username, password); 
    //console.log(ans);
    switch(ans)
    {
        case 1:
            res.send({status: 'a'});
            break;
        case 0:
            res.send({status: 'e'});
            break;
        case -1:
            res.send({status: 'f'});
            break;
    }
});

function updateRoles(rolesfn){
    db.getRoles(function(rows){
        roles = rows;
        rolesfn();
    });
}

//salts, hashes, then checks DB returns true or false
async function authenticate(userName, password)
{
    var ans = -1
    password = saltedHash(password);
    ans = await db.getUser(userName, password);
    console.log('ans', ans)
    return ans;
}

//applies salt and hash
function saltedHash(password)
{
    alg = 'sha1'
    salt = "S@E1F53135E559C253assdk100101"; //random salt (taken from wikipedia)
    password += salt;
    password = hash(alg).update(password).digest('hex');
    return password; 
}

//dummyGet('admin', 'adminPass');

roles = [];