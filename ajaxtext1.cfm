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