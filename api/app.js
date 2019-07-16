const express = require('express')
const app = express()
const db = require('./db')

app.listen(7999, function() {
    console.log('Express started');
});

app.get('/getroles', function(req, res) {
    updateRoles(function(){
        res.send(roles);
    });
});

app.get('/getcapability', function(req, res){
    updateCapability(function(){
        res.send(capability)
    });
});

function updateRoles(rolesfn){
    db.getRoles(function(rows){
        roles = rows;
        rolesfn();
    });
}

function updateCapability(capabilityfn){
    db.getCapability(function(rows){
        capability = rows;
        capabilityfn();
    });
}

roles = [];
capability = [];