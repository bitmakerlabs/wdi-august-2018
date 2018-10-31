// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


document.addEventListener('DOMContentLoaded', function() {
  axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';

  var links = document.querySelectorAll('#robot-container a');
  var robotDetails = document.querySelector('#robot-details');

  links.forEach(function(link) {
    link.addEventListener('click', function(event) {
      event.preventDefault();

      // console.log(event.target);
      axios.get(this.href + '.json')
        .then(function(response) {
          var robotImage = document.createElement('img');
          robotImage.src = 'http://robohash.org/' + response.data.model_number;

          var info = document.createElement('dl');
          var nameAttr = document.createElement('dt');
          nameAttr.innerText = 'Name';
          var nameValue = document.createElement('dd');
          nameValue.innerText = response.data.name;

          info.append(nameAttr);
          info.append(nameValue);

          robotDetails.innerHTML = "";
          robotDetails.append(robotImage);
          robotDetails.append(info);
        });
    });
  });
});
