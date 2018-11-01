// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

document.addEventListener('DOMContentLoaded', function() {
    axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';
    //axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';

    var form = document.querySelector('#new_todo');

   // $(form).on

    form.addEventListener('submit',function(e){

        e.preventDefault();
        var formData = new FormData(form);
        axios({
            url: form.getAttribute('action') ,
            method: form.getAttribute('method'),
            data: formData,
            // headers:{
            //     //'Content-Type':'applcation/html',
            //     'Accept': 'text/html'
            // }
           // responseType: 'stream' // change this to JSON is you need the response as JSON
        }).then(function(response){

            console.log("Ajax successful !!"+response.data);
            // clear the text input
            var input = document.querySelector('#todo_content');
            input.value = '';

            //to append the li response
           // var myList = document.querySelector('#myList');
            //this is javascript version of  $(myList).append(data);

            //  myList.insertAdjacentHTML('beforeend', response.data)
            
            //
            //$(myList).append(data);
           // myList.innerHTML.append(response.data);
        var list = document.createElement("li");
        list.innerText = response.data.content;
        myList.appendChild(list);
            
        })

        console.log("Ajax request has been placed!");
        
    })
    
});