const express = require('express')
const app = express()
const db = require('./db')
const hash = require('crypto').createHash;
 
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
    res.send('');
});

app.post('/userdetails', async function(req,res)
{
    var username = req.body.params.username;
    var password = req.body.params.password;

    ans = await authenticate(username, password); 
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

app.post('/addRole', async function(req, res){
    ans = await addRoleToDB(req.body);
});

app.get('/getcapability', function(req, res){
    updateCapability(function(){
        res.send(capability)
    });
});

app.get('/getbands', function(req, res){
    updateBands(function(){
        res.send(bands)
    });
});

app.get('/getfamilies', function(req, res){
    updateFamilies(function(){
        res.send(families)
    });
});

function updateRoles(rolesfn){
    db.getRoles(function(rows){
        roles = rows;
        rolesfn();
    });
}

async function authenticate(userName, password)
{
    var ans = -1
    password = saltedHash(password);
    ans = await db.getUser(userName, password);
    return ans;
}

async function addRoleToDB(roleObject){
    var didRoleAdd = -1;
    didRoleAdd = await db.addRole(roleObject);
    return didRoleAdd;
}

function saltedHash(password)
{
    alg = 'sha1'
    salt = "S@E1F53135E559C253assdk100101";
    password += salt;
    password = hash(alg).update(password).digest('hex');
    return password; 
}


function updateCapability(capabilityfn){
    db.getCapability(function(rows){
        capability = rows;
        capabilityfn();
    });
}

function updateBands(bandsfn){
    db.getBands(function(rows){
        bands = rows;
        bandsfn();
    });
}

function updateFamilies(familiesfn){
    db.getFamilies(function(rows){
        families = rows;
        familiesfn();
    });
}

roles = [];
capability = [];
bands = [];
families = [];
