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

app.get('/getbandcompetency', function(req, res) {
    updateBandCompetency(function(){
        res.send(bandCompetency);
    });
});

app.get('/getcompetency', function(req, res) {
    updateCompetency(function(){
        res.send(competencies);
    });
});

app.get('/gettitle', function(req, res) {
    updateTitle(function(){
        res.send(titles);
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

roles = [];
competencies = [];
bandCompetency = [];
titles = [];
capability = [];
bands = [];