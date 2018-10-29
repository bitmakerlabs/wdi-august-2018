document.addEventListener('DOMContentLoaded', function() {
// Let's add our first event handlers to this simple document
  // 1. Select the `click-bait` element
  var clickBait = document.getElementById('click-bait');

  // 2. Add an event listener to clickBait and ...
  //    implement the callback with an anonymous function
  clickBait.addEventListener('click', function(event) {
    alert("You clicked me!");
    event.preventDefault();
  });

  // 3. Select the `second-level` element
  var clickBaitParent = document.getElementById('second-level');

  // 4. Add an event listener to secondLevel and ...
  //    implement the callback with a function declaration
  clickBaitParent.addEventListener('click', cbParentFn);

  function cbParentFn(poop) {
    alert("Click Bait Parent is Clicked!!!");
    poop.stopPropagation();
  }

  // 5. Select the `first-level` element
  var clickBaitGrandParent = document.getElementById('first-level');


  // 6. Add an event listener to firstLevel and ...
  //    implement the callback with a function definition
  var cbGrandParentFn = function() {
    alert("Click Bait GRANDparent clicked!!!");
  };

  clickBaitGrandParent.addEventListener('click', cbGrandParentFn);



  // 7. Check out the `event` object:
  // => Google MDN addEventListener
  // => https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener

  // QQ: Our default behaviour of the link routes us to Google, can we stop the default behaviour?
  // (Check out preventDefault)

  // QQ: What default behaviours will you want to prevent typically? There are mainly 2:
  // (1. links ... 2. f o r m s!!! (ryhmes with torms lol) )

  // QQ: Can we stop the event from bubbling up the DOM?
  // => https://developer.mozilla.org/en-US/docs/Web/API/Event/stopPropagation

  // QQ: Does order of including our JavaScript matter?
  // DOMContentLoaded => https://developer.mozilla.org/en-US/docs/Web/Events/DOMContentLoaded

});
