var colors = require('colors');

exports.printMsg = function() {
 console.log("Here I am!".green);
}

exports.anotherMsg = function(msg) {
 console.log(msg.blue);
}

exports.anotherMsg = function(msg, color) {
 console.log(msg.color);
}

exports.welcomeMsg = function() {
console.log("ふぁんど");
}

exports.welcomeMsg = function(color) {
console.log("ふぁんど".color);
}
