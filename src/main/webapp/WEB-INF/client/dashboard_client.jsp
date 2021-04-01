<%-- 
    Document   : dashboard_client
    Created on : Mar 8, 2021, 3:19:09 PM
    Author     : Leyteris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
        <link href='${pageContext.request.contextPath}/calendar/lib/main.css' rel='stylesheet' />
        <script src='${pageContext.request.contextPath}/calendar/lib/main.js'></script>
        <script src="${pageContext.request.contextPath}/calendar/calendar-client.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.js"></script>
        <style>
            .fc-event-main:hover,
            .fc-daygrid-event:hover {
                cursor: pointer;
            }
        </style>
        <link rel="stylesheet" href="/chat/styles.css">
    </head>
    <body>
        dashboard client
        <br/>
        <!--URL: client/dashboard-->


        welcome ${username}
        <br/>
        <a href="${pageContext.request.contextPath}/client/comp-select">Close a rendezvous</a>
        <a href="${pageContext.request.contextPath}/client/profile">Edit Profile</a>
        <a href="${pageContext.request.contextPath}/logout">Logout</a>        


        <div id='calendar'></div>

        <!-- Modal content-->
        <div class="modal fade" tabindex="-1" role="dialog" id="myModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title"></h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                    </div>

                    <div class="modal-body">
                        <p></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->


        <!-- Chat starts here -->

        <div id='whatsapp-chat' class='hide'>
            <div class='header-chat'>
                <div class='head-home'><h3>Hello!</h3>
                    <p>Click one of your established conversations</p></div>
                <div class='get-new hide'><div id='get-label'></div><div id='get-nama'></div></div></div>
            <div class='home-chat'>
                <!-- Active conversations -->                
                <div class='blanter-msg'>Call us to <b>+62123456789</b> from <i>0:00hs a 24:00hs</i></div></div>
            <div class='start-chat hide'>
                <div id="msgframe" style="overflow-y: scroll; height:300px;">
                    <!-- messages go here -->
                </div>
                <div class='blanter-msg'><textarea id='chat-input' placeholder='Write a response' maxlength='120' rows='1'></textarea>
                    <a id='send-it'>Send</a></div></div>
            <div id='get-number'></div><a class='close-chat' >×</a>
        </div>
        <a class='blantershow-chat' title='Show Chat'>Chat</a>
        <script src="${pageContext.request.contextPath}/chat/chat.js"></script>
        <!-- Chat ends here -->
    </body>
</html>
