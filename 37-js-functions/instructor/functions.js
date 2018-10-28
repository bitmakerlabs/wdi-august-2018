




// Basics

// Write a function that takes someone's order

// function takeOrder(itemWanted) {
//   return '|' + itemWanted + '|';
// }
//
// var takeOrder2 = function(itemWanted) {
//   return '|' + itemWanted + '|';
// }
//
// var myFunction = takeOrder;
//
// console.log(takeOrder('hamburger'))
// console.log(takeOrder2('hamburger'))
// console.log('---');
// console.log(takeOrder);
// console.log(takeOrder2);
//
// console.log(myFunction);
// console.log(myFunction('pizza'));
//
//
//
// console.log('---------');




var things = ['chair', 'house', 'table', 'window'];
for (var i = 0; i < things.length; i++) {
  console.log(things[i]);
  break;
}
console.log('-');

things.forEach(function(item) {
  console.log(item);
  return;
});

function takeOrder(itemWanted) {
  console.log('|' + itemWanted + '|');
  return;
}

console.log('=====');

// FIRST-ORDER FUNCTION or HIGHER ORDER FUNCTION
function forEach(array, actFunction) {
  for (var i = 0; i < array.length; i++) {
    var currentItem = array[i];
    actFunction(currentItem);
  }
}

// passing a CALLBACK into our own defined forEach
forEach(things, takeOrder);
forEach(things, takeOrder);
forEach(things, takeOrder);

console.log('- - - - - -');

console.log(forEach);
forEach.type = 'first order function'
console.log(forEach.type);
console.log(forEach);

console.log('================');




console.log('Starting!');
//
// console.time('calling setTimeout');
// setTimeout(function() {
//   console.log('Timeout complete!');
//   console.timeEnd('calling setTimeout');
//   finishUp();
// }, 2000);
//
// function finishUp() {
//   console.log('Finishing!');
// }
// console.time('calling new setTimeout');
// var myPromise = setTimeout(function() {
//   console.log('NEW Timeout complete!');
//   console.timeEnd('calling new setTimeout');
// }, 2000);



function doWork() {
  for (var i = 0; i < 2000000000; i++) {
    3 / 4;
  }
}
// doWork();

console.log('Finished');

function timeMe(funcToTime) {
  console.time(funcToTime.name);
  funcToTime();
  console.timeEnd(funcToTime.name);
}

// timeMe(doWork);
// timeMe(takeOrder);
// timeMe(takeOrder.bind(null, 'cheese'));
// timeMe(undefined);


function walk() {

}

var person = {
  name: 'Suzie',
  age: 30,
  kilometresWalked: 0,
  walk: function() {
    console.log(this.name + " is walking!");
    console.log("This:");
    console.log(this);
    this.kilometresWalked += 3;
  },
  // arrow function syntax example
  talk: (name) => {
    console.log("Hello, " + name + "!");
  },
};

// person.walk =

console.log(person);
person.walk();
console.log(person);
person.talk('Jared');

console.log(Object.keys(person));
// var myFunction = person.walk;
// console.log(myFunction);
// myFunction.call(person);

// myFunction();
// person['walk']();

var dog = {
  name: 'Shep',
};
dog.walk = person.walk;
dog.walk();




// // THIS
// things.forEach(takeOrder);
// // IS THE SAME AS THIS
// things.forEach(function(item) {
//   console.log(item);
// });
//
//
// console.log('--------');
//
// takeOrder();


// function addToFive(num1) {
//   return 5 + num1;
// }
//
// console.log(addToFive());



// Call the function



// Questions:

// Can we assign a function to a variable?

// What happens if I reference the variable that contains the function?

// Can I call the function using normal function call syntax (with round brackets)?
