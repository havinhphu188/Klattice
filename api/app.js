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

app.get('/getbands', function(req, res){
    updateBands(function(){
        res.send(bands)
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

function updateBands(bandsfn){
    db.getBands(function(roews){
        bands = rows;
        bandsfn();
    });
}

roles = [];
capability = [];
bands = [];