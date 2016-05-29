jQuery(document).ready(function($) {
    $("#bth-search").click(function(event) {
        connect();
    });
});

var stompClient = null;
var sub = false;
function connect() {
    var socket = new SockJS("/spring4-mvc-maven-ajax-example-1.0-SNAPSHOT/portfolio");
    stompClient = Stomp.over(socket);
   stompClient.connect({}, function(frame) {
       console.log('Connected: ' + frame);
        //subscribing to receive messages
       if(sub == false) {
           stompClient.subscribe('/topic/data', function (calResult) {
               console.log(calResult.body);
               $('textarea[name=log]').val($('textarea[name=log]').val() + "\n" + calResult.body);

           });
       }
       sub = true;
        // sending data to server
            var data = $('input[name=serverData]').val();
            stompClient.send("/app/data", {}, data);
        });
}

