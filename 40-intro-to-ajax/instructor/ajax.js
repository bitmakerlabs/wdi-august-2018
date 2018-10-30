// Only execute contents of script AFTER the DOM has loaded.
window.addEventListener('DOMContentLoaded', function() {
    // --------------------------------------------------
    // Step 1.
    // - Add the monster data to the page.
    // --------------------------------------------------

    // Get a reference to the 'Get Monsters' button.
    var getButton = document.getElementById('get_monsters');

    // Listen for clicks on 'Get Monsters'.
    getButton.addEventListener('click', function(e) {

        // Use axios to mage a GET request for the 'monsters' resources and capture the Promise as 'placeholder'.
        var placeholder = axios.get('https://bitmaker-monsters-api.herokuapp.com/monsters');

        // Chain methods:
        // - `then()` handles cases where the request SUCCEEDS.
        // - `then()` handles cases where the request FAILS.
        placeholder
            .then(function(response) {

                // If the request is successful:
                // - Create a new element using the response data and add it to the page.
                var newElement = document.createElement('span');
                newElement.innerHTML = response.data;
                document.body.appendChild(newElement);
            })
            .catch(function(err) {

                // If the request fails:
                // - Print the error to the console.
                // - Create a new element, add a generic error message, and insert it into the page.
                console.error(err);
                var errorMsg = document.createElement('p');
                errorMsg.innerHTML = 'Whoops, something went wrong!';
                errorMsg.style.color = 'red';
                document.body.appendChild(errorMsg);
            });
    });

    // --------------------------------------------------
    // Step 2.
    // - POST new monster data to the API.
    // --------------------------------------------------
    // Get a reference to the 'Post Monster' button.
    var postMonster = document.getElementById('post_monster');

    // Listen for clicks on 'Post Monster'.
    postMonster.addEventListener('click', function() {

        // Use axios to make a POST request:
        // - The first argument is the location of the resource (note: the '.json' extension).
        // - The second argument is the data to post.
        // NOTE: Unlike the example above, the Promise returned by `axios.post()` is not store in a variable.
        axios.post('https://bitmaker-monsters-api.herokuapp.com/monsters.json', {
            monster: {
                name: 'Farisenstein',
                home: 'Toronto, ON',
                creepiness: 100,
            },
        }).then(function() {
            console.log('Successfully posted monster data!');
        }).catch(function(err) {
            console.error('Failed to post monster data!');
            console.error(err);
        })
    });
});
