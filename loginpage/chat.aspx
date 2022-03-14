<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chat.aspx.cs" Inherits="loginpage.chat" %>

    <title>SignalR Simple Chat</title>
    <style type="text/css">
        .container {
            background-color: #99CCFF;
            border: thick solid #808080;
            padding: 20px;
            margin: 20px;
        }
    </style>

<form id="form1" runat="server" class="auto-style2" style="background-image: url('image/123.jpg')">

﻿<!DOCTYPE html>
    <asp:Label ID="Label1" runat="server" Text="Welcome..."></asp:Label>
<html>
<head>
    <title>SignalR Simple Chat</title>
    <style type="text/css">
        .container {
            background-color: #99CCFF;
            background-image: url('image/messaging_chatting_apps12-1024x350.png');

            border: thick solid #808080;
            padding: 20px;
            margin: 20px;
        }
        .auto-style2 {
            height: 739px;
        }
    </style>
</head>
<body style="height: 756px">
    <div class="container">
        <input type="text" id="message" />
        <input type="button" id="sendmessage" value="Send" />
        <input type="hidden" id="displayname" />
        <ul id="discussion"></ul>
    </div>
    <br />
  
    <script src="Scripts/jquery-3.3.1.min.js" "></script>
 
    <script src="/Scripts/jquery.signalR-2.2.2.js"></script>
   
    <script src="/signalr/hubs"></script>
   
    <script type="text/javascript">
        $(function () {
            
            var chat = $.connection.chatHub;
           
            chat.client.broadcastMessage = function (name, message) {
               
                var encodedName = $('<div />').text(name).html();
                //   
               // var encodedName = 'sdasd';
           
                
                var encodedMsg = $('<div />').text(message).html();
                // Add the message to the page.
                $('#discussion').append('<li><strong>' + encodedName
                    + '</strong>:&nbsp;&nbsp;' + encodedMsg + '</li>');
            };
            // 
           // $('#displayname').val(prompt('Enter your name:', ''));
             $('#displayname').val("<%=usn%>");
            // 
            $('#message').focus();
            // Start the connection.
            $.connection.hub.start().done(function () {
                $('#sendmessage').click(function () {
                    
                    chat.server.send($('#displayname').val(), $('#message').val());
                   
                   
                 
                    $('#message').val('').focus();
                });
            });
        });
    </script>
&nbsp;&nbsp;&nbsp;
    
    <b><a href="login_page_WebForm.aspx" target="_blank">LOG IN WITH ANOTHER ACCOUNT</a></b>
</form>
</body>
</html>
<html>
<body style="height: 756px">
    </body>
</html>

