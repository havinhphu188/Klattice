const express = require('express')
const app = express()
const db = require('./db')
const hash = require('crypto').createHash;
 
app.use(express.json());

app.listen(7999, function() {
    console.log('Express started');
});

app.get('/roles', function(req, res) {
    updateRoles(function(){
        res.send(roles);
    });
});

app.get('/user-details', function(req, res){
    res.send('');
});

app.post('/user-details', async function(req,res){
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

app.get('/capability', function(req, res){
    updateCapability(function(){
        res.send(capability)
    });
});

app.get('/bands', function(req, res){
    updateBands(function(){
        res.send(bands)
    });
});

app.get('/families', function(req, res){
    updateFamilies(function(){
        res.send(families)
    });
});

app.get('/band-competency', function(req, res) {
    updateBandCompetency(function(){
        res.send(bandCompetency);
    });
});

app.get('/competency', function(req, res) {
    updateCompetency(function(){
        res.send(competencies);
    });
});

app.get('/title', function(req, res) {
    updateTitle(function(){
        res.send(titles);
    });
});

app.get('/band-titles', function(req, res){
    updateBandTitles(function(){
        res.send(bandTitles)
    });
});

function updateRoles(rolesfn){
    db.getRoles(function(rows){
        roles = rows;
        rolesfn();
    });
}

async function authenticate(userName, password){
    var ans = -1
    password = saltedHash(password);
    ans = await db.getUser(userName, password);
    return ans;
}

function saltedHash(password){
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

function updateBandCompetency(bandCompetencyfn){
    db.getBandCompetency(function(rows){
        bandCompetency = rows;
        bandCompetencyfn();
    });
}

function updateCompetency(Competencyfn){
    db.getCompetency(function(rows){
        competencies = rows;
        Competencyfn();
    });
}

function updateTitle(Titlefn){
    db.getTitle(function(rows){
        titles = rows;
        Titlefn();
    });
}

function updateBandTitles(bandTitlesfn){
    db.getBandTitles(function(rows){
        bandTitles = rows;
        bandTitlesfn();
    });
}

roles = [];
competencies = [];
bandCompetency = [];
titles = [];
capability = [];
bands = [];
families = [];
bandTitles = [];