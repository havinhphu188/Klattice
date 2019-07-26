const express = require("express");
const app = express();
const db = require("./db");

var session = {
  username: "",
  loggedIn: false,
  isAdmin: false,
  sessionId: 0
};

//Parse JSON bodies (as sent by API clients)
app.use(express.json());

app.listen(7999, function() {
  console.log("Express started");
});

app.put('/edit-role', async function(req,res){  
  await db.editRole(req.body.role_id, req.body.role_name, req.body.role_summary, req.body.role_sum_link, req.body.capability_id, req.body.band_id);
});;

app.get("/roles", function(req, res) {
  updateRoles(function() {
    res.send(roles);
  });
});

app.get('/role-families', function(req, res) {
  updateRoleFamilies(function() {
      res.send(roleFamiles);
  })
});

app.get("/user-details", function(req, res) {
  res.send({
    isAdmin: session.isAdmin,
    loggedIn: session.loggedIn,
    username: session.username
  });
});

app.post('/user-details', async function(req,res){
  var username = req.body.params.username;
  var password = req.body.params.password;
  await authenticate(username, password, res); 
});

app.post('/add-role', async function(req, res){
   await db.addRole(req.body);
});

app.post('/delete-role', async function(req, res){
    await db.deleteRole(req.body);
});

app.get('/capability', function(req, res){
    updateCapability(function(){
        res.send(capability)
    });
});

app.get("/bands", function(req, res) {
  updateBands(function() {
    res.send(bands);
  });
});

app.get("/responsibilities", function(req, res) {
  updateResponsibilities(function() {
    res.send(responsibilities);
  });
});

app.get("/families", function(req, res) {
  updateFamilies(function() {
    res.send(families);
  });
});

app.get("/band-competency", function(req, res) {
  updateBandCompetency(function() {
    res.send(bandCompetency);
  });
});

app.get("/competency", function(req, res) {
  updateCompetency(function() {
    res.send(competencies);
  });
});

app.get("/title", function(req, res) {
  updateTitle(function() {
    res.send(titles);
  });
});

app.get("/band-titles", function(req, res) {
  updateBandTitles(function() {
    res.send(bandTitles);
  });
});

app.post("/signout", function(req, res) {
  session.isAdmin = false;
  session.loggedIn = false;
  session.sessionId = 0;
  session.username = "";
  res.send({
    isAdmin: session.isAdmin,
    loggedIn: session.loggedIn,
    username: session.username
  });
});

function updateRoleFamilies(rolefamiliesfn){
    db.getRoleFamilies(function(rows){
        roleFamiles = rows;
        rolefamiliesfn();
    });
}

async function authenticate(username, password, res){
    var authStatus = await db.getUser(username, password);
    switch(authStatus)
    {
      case 'a':
        session.isAdmin = true;
        session.loggedIn = true;
        session.username = username;
        break;
      case 'e':
        session.isAdmin = false;
        session.loggedIn = true;
        session.username = username;
          break;
    }

    res.send({
      status: authStatus,
      isAdmin: session.isAdmin,
      loggedIn: session.loggedIn,
      username: session.username
    });
}

function updateCapability(capabilityfn){
    db.getCapability(function(rows){
        capability = rows;
        capabilityfn();
    });
  }  

function updateRoles(rolesfn) {
  db.getRoles(function(rows) {
    roles = rows;
    rolesfn();
  });
}

function updateBands(bandsfn) {
  db.getBands(function(rows) {
    bands = rows;
    bandsfn();
  });
}

function updateResponsibilities(responsiblityfn) {
  db.getResponsibilities(function(rows) {
    responsibilities = rows;
    responsiblityfn();
  });
}

function updateFamilies(familiesfn) {
  db.getFamilies(function(rows) {
    families = rows;
    familiesfn();
  });
}

function updateBandCompetency(bandCompetencyfn) {
  db.getBandCompetency(function(rows) {
    bandCompetency = rows;
    bandCompetencyfn();
  });
}

function updateCompetency(Competencyfn) {
  db.getCompetency(function(rows) {
    competencies = rows;
    Competencyfn();
  });
}

function updateTitle(Titlefn) {
  db.getTitle(function(rows) {
    titles = rows;
    Titlefn();
  });
}

function updateBandTitles(bandTitlesfn) {
  db.getBandTitles(function(rows) {
    bandTitles = rows;
    bandTitlesfn();
  });
}

roles = [];
roleFamilies = [];
competencies = [];
bandCompetency = [];
titles = [];
capability = [];
bands = [];
families = [];
bandTitles = [];
responsibilities = [];
