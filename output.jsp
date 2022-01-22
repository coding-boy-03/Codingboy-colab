<%@ page import ="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<style>
body{
            font-size: larger;
            font-family: 'Dongle', sans-serif;
            background-color: #385170;
            color:#0a0a23;
            padding:15px;
           
        }
        .main{
        margin-top:40vh;
        background-color:#9fd3c7;
        width:50%;
        margin-left:25%;
        text-align:center;
        border-radius:9px;
        }
        h3{
        padding:5px;}
</style>
<meta charset="ISO-8859-1">
<title>Random number generator</title>
</head>
<body>
<div class="main">
<h3>Random number between <%=request.getParameter("from") %> and <%= request.getParameter("to") %></h3>
<h2><div id="randNum">
	
</div></h2>
</div>

<script>
document.getElementById("randNum").innerText=Math.floor(Math.random() * (<%= request.getParameter("to") %> - <%= request.getParameter("from")%> ) + <%= request.getParameter("from") %>);
</script>
</body>
</html>
