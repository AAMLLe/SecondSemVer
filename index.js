var colors = require('colors');

exports.printMsg = function() {
 console.log("Here I am!".green);
}

exports.anotherMsg = function(msg, colorString) {
 console.log(msg.colorString);
}
