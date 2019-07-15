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

function updateRoles(rolesfn){
    db.getRoles(function(rows){
        roles = rows;
        rolesfn();
    });
}

roles = [];