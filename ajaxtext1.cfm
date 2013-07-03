
new $ajax.JSON({
    url: 'isc-  what??',
    data: {
        json: JSON.encode({
            text: 'some text',
            array: [1, 2, 'three'],
            object: {
                par1: 'another text',
                par2: [3, 2, 'one'],
                par3: {}
            }
        }),
        delay: 3
    },
    onSuccess: function(response) {
        show_response(response, $('post'));
    }
}).send();

show_response = function(obj, result) {
    $H(obj).each(function(v, k) {
        new Element('li', {
            text: k + ': ' + v
        }).inject(result);
    });
    result.highlight();
};






<!--    


This will be the reply after making this call with Ajax  you can change the info inside the areas to ask for what you are looking for...
                                              JSON will be received in 3 seconds
                                              
                                              after you run it it will showed after 3 sec  you can change the timing or cancel it.
        
        
text: some text
array: 1,2,three
object: [object Object]        -->










// JavaScript Document


new $ajax.JSON({
    url: '/echo/json/',
    data: {
        json: JSON.encode({
            text: 'some text',
            array: [1, 2, 'three'],
            object: {
                par1: 'another text',
                par2: [3, 2, 'one'],
                par3: {}
            }
        }),
        delay: 3
    },
    onSuccess: function(response) {
        show_response(response, $('post'));
    }
}).send();

show_response = function(obj, result) {
    $H(obj).each(function(v, k) {
        new Element('li', {
            text: k + ': ' + v
        }).inject(result);
    });
    result.highlight();
};


mauricio cordova