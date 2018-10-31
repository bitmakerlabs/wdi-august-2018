document.addEventListener('DOMContentLoaded', function() {
  // Function scope

  var count = 0,
      colors = ['tomato', 'azure', 'green', 'orange', 'purple', 'chartreuse', 'gold', 'fuschia'];

  var container = document.querySelector('#container');

  container.addEventListener('click', function(event) {
    if(event.target.classList.contains('circle')) {
      event.target.remove();
    }
  });

  var boxMaker = document.querySelector('#box-maker');

  boxMaker.addEventListener('click', function() {
        var x = Math.ceil(Math.random() * 400),
          y = Math.ceil(Math.random() * 200),
          c = Math.ceil(Math.random() * 7);

      var circle = document.createElement('div');

      circle.className = 'circle';

      circle.style.top = y + 'px';
      circle.style.left = x + 'px';
      circle.style.backgroundColor = colors[c];

      circle.innerHTML = count++;

      container.append(circle);

      // circle.addEventListener('click', function(event) {
      //   event.target.remove();
      //   console.log("removed!!");
      // });

      console.log('link was clicked');
  });


  // DOES NOT WORK BECAUSE ...
  // On page load, there are no circles. We can't add "click listener" to circles that don't exist.
  // Select all `cirlces`, iterate over them (`forEach`), add eventListeners to each circle
  // document.querySelectorAll('.circle').forEach(function(circle) {
  //   circle.addEventListener('click', function(event) {
  //     event.target.remove();
  //     console.log("removed!!");
  //   });
  // });

});
