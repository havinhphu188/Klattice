const hash = require('crypto-js')

exports.saltedHash = function(password)
{
    var salt = "S@E1F53135E559C253assdk100101"; 
    var newPassword = password;
    newPassword+= salt;
    newPassword = hash.SHA224(newPassword);

    var passStr = new String(newPassword);
    return passStr; 
}