var colors = require('colors');

exports.printMsg = function() {
 console.log("Here I am!".green);
}

exports.anotherMsg = function(msg) {
 console.log(msg.purple);
}
