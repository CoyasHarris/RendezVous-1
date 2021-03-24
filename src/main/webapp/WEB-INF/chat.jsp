
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="http://localhost:8080/rendezvous/chat/styles.css">
    </head>
    <body>
        <input type="hidden" id="userrole" value="${role}"/>
        <input type="hidden" id="userid" value="${id}"/>

        <div class="col-sm-3 col-sm-offset-4 frame">
            <ul></ul>
            <div>
                <div class="msj-rta macro">                        
                    <div class="text text-r" style="background:whitesmoke !important">
                        <input class="mytext" placeholder="Type a message"/>
                    </div> 

                </div>
                <div style="padding:10px;">
                    <span class="glyphicon glyphicon-share-alt"></span>
                </div>                
            </div>
        </div>

        <script src="http://localhost:8080/rendezvous/chat/chat.js"></script>

    </body>
</html>
