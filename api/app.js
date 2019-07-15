const express = require('express')
const app = express()
const db = require('./db')

app.get('/', function(req, res) {
    res.send('<h1>First message from expreess</h1>\n');
    console.log('Request processed');
});

app.listen(7999, function() {
    console.log('Express started');
});

app.get('/getroles', function(req, res) {
    updateRoles(function(){
        res.send(roles);
    });
});

function updateRoles(rolesfn){
    db.getCourses(function(rows){
        roles = rows;
        coursefn();
    });
}

roles = [];