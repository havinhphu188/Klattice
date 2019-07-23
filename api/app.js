const express = require("express");
const app = express();
const db = require("./db");
const hash = require("crypto").createHash;

var loginStatus = "f"; //f = not signed ins
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

app.get("/getroles", function(req, res) {
  updateRoles(function() {
    res.send(roles);
  });
});

app.get("/userdetails", function(req, res) {
  res.send("");
});

app.post("/userdetails", async function(req, res) {
  var username = req.body.params.username;
  var password = req.body.params.password;

  ans = await authenticate(username, password);
  switch (ans) {
    case 1:
      loginStatus = "a";
      session.isAdmin = true;
      session.loggedIn = true;
      session.sessionId++;
      session.username = username;

      res.send({ status: "a" });
      break;
    case 0:
      loginStatus = "e";
      session.isAdmin = false;
      session.loggedIn = true;
      session.sessionId++;
      session.username = username;
      res.send({ status: "e" });
      break;
    case -1:
      loginStatus = "f";
      res.send({ status: "f" });
      break;
  }
});

app.get("/getcapability", function(req, res) {
  updateCapability(function() {
    res.send(capability);
  });
});

app.get("/getbands", function(req, res) {
  updateBands(function() {
    res.send(bands);
  });
});

app.get("/getfamilies", function(req, res) {
  updateFamilies(function() {
    res.send(families);
  });
});

app.get("/getuserdetails", function(req, res) {
  res.send({
    isAdmin: session.isAdmin,
    loggedIn: session.loggedIn,
    username: session.username
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

function updateRoles(rolesfn) {
  db.getRoles(function(rows) {
    roles = rows;
    rolesfn();
  });
}

//salts, hashes, then checks DB returns true or false
async function authenticate(userName, password) {
  var ans = -1;
  password = saltedHash(password);
  ans = await db.getUser(userName, password);
  return ans;
}

//applies salt and hash
function saltedHash(password) {
  alg = "sha1";
  salt = "S@E1F53135E559C253assdk100101"; //random salt (taken from wikipedia)
  password += salt;
  password = hash(alg)
    .update(password)
    .digest("hex");
  return password;
}

function updateCapability(capabilityfn) {
  db.getCapability(function(rows) {
    capability = rows;
    capabilityfn();
  });
}

function updateBands(bandsfn) {
  db.getBands(function(rows) {
    bands = rows;
    bandsfn();
  });
}

function updateFamilies(familiesfn) {
  db.getFamilies(function(rows) {
    families = rows;
    familiesfn();
  });
}

roles = [];
capability = [];
bands = [];
families = [];
