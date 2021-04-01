<%-- 
    Document   : dashboard_company
    Created on : Mar 8, 2021, 3:26:58 PM
    Author     : Leyteris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
        <script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.js"></script>
        <link href='${pageContext.request.contextPath}/calendar/lib/main.css' rel='stylesheet' />
        <script src='${pageContext.request.contextPath}/calendar/lib/main.js'></script>
        <script src="${pageContext.request.contextPath}/calendar/calendar-company.js"></script>
         <link rel="stylesheet" href="/chat/styles.css">
       
        <style>
            .fc-event-main:hover,
            .fc-daygrid-event:hover
            {
                cursor: pointer;
            }
            

        </style>
    </head>
    <body>
      <jsp:include page="/WEB-INF/navbars/loginNavbar_1.jsp"/>
        

        dashboard company
        <!--URL: company/dashboard-->

        welcome ${company_name}
        <br/>
        <a href="${pageContext.request.contextPath}/company/business-hours">Working hours</a>
        <a href="${pageContext.request.contextPath}/company/profile">Edit Profile</a>
        <a href="${pageContext.request.contextPath}/company/pro">Buy Pro</a>
        <a href="${pageContext.request.contextPath}/logout">Logout</a>



        <div id='calendar'></div>

        <!-- Modal content-->
        <div class="modal fade" tabindex="-1" role="dialog" id="myModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Modal title</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                    </div>

                    <div class="modal-body">
                        <p>One fine body&hellip;</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        <jsp:include page="/WEB-INF/navbars/footer.jsp"/>
                
     <!-- Chat starts here -->
        <div id='whatsapp-chat' class='hide'>
            <div class='header-chat'>
                <div class='head-home'><!--<h3>Hello!</h3>-->
                    <p>Active conversations</p></div>
                <div class='get-new hide'><div id='get-label'></div><div id='get-nama'></div></div></div>
            <div class='home-chat'>
                <!-- Active conversations -->                
                <div class='blanter-msg'></div></div>
            <div class='start-chat hide'>
                <div id="msgframe">
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
