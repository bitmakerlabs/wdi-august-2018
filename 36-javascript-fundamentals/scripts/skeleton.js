'use strict';


// Numbers
var houses = 3;
var applesInMyStand = 200;
var total = houses + applesInMyStand;


// Strings
var message = 'I\'m teaching a class!';
var word = 'Hello';
var sender = "Daniel";
var email = message + " - " + sender;
console.log(email);
email = `${message} - ${sender}`
console.log(email);


var name = 'Suzie';
console.log(name);



// Booleans (True and False)
var iGotHomeOkay;
iGotHomeOkay = true;
// var iGotHomeOkay = true;
var iHadAGoodNight = false;
console.log(iGotHomeOkay && iHadAGoodNight);
console.log(!!iGotHomeOkay);


var answer;
console.log(answer);

// null
var thingsIHave = null;


// Arrays
var myThings = ['shoes', 'wallet', 'computer'];
console.log(myThings[1]);
myThings.push('water bottle')
console.log(myThings);
console.log(myThings.pop());
console.log(myThings);


// Object Literals
var person = {
  name: 'Daniel',
  height: '175cm',
  age: 31,
  legs: 2,
  45: 52,
  // walk: function() {
  //   console.log('walking-----------------');
  // },
};

function Person(name) {
  this.name = name;
}
person = new Person('Daniel');
console.log(person);

// class Person() {
//   constructor(name) {
//     this.name = name;
//   }
// }

// person.walk();

// console.log(person);
// console.log(person['name']);
// console.log(person.'45');
// console.log(person.name);

person.occupation = 'teacher';
person['favColor'] = 'black';
console.log(person);

var attribute = 'position';
var value = 'standing';

person.attribute = value;
person[attribute] = value;
console.log(person);

console.log();
console.log();
console.log();

var temperature = 4;
// If Statement
if (temperature < 10) {
  // var test = 'TESTING';
  // let test = 'TESTING';
  // const test = 'TESTING';
  // test = 'TESTING 2'
  console.log('Wear a coat!');
} else if (temperature < 20) {
  console.log("It's fairly nice out.");
} else {
  console.log('Do your thing.');
}

// var message = false ? 'first message' : 'second message';
// console.log(message);

// console.log(test);

// if () {
//
// }


// For Loop
for (var index = 2; index <= 100; index += 1) {
  console.log(index);
}

console.log('===========');
var addresses = [134, 136, 138, 221, 2345, 678];
for (var i = 0; i < addresses.length; i++) {
  // console.log(addresses[i]);
}
console.log(i);
console.log('===========');



// While Loop
var index = 25;
while (index <= 34) {
  console.log(index);
  index += 3;
}


// Do/While Loop






console.log('------');
// Named function
var outside = "I'm outside";

function doStuff() {
  console.log(outside);
  inDoStuff = "I'm in the outer function";
  function doInsideStuff() {
    console.log(outside);
    console.log(inDoStuff);
  }
  doInsideStuff();
}

function otherStuff() {
  console.log(outside);
}

var thingIGotBack = doStuff();
console.log(inDoStuff);
// console.log(myLocal); // <-- errors!



// Functions with parameters



// Anonymous function



// Callback



// Scope examples -------------------



// Callbacks --------------------------



// forEach callback



// objects - accessing attributes




// objects with functions - basic example




// objects with functions - basic Mars Rover implementation



// More complicated callbacks --------------------------




// asynchronous JS
