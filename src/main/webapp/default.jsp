<%@ page contentType="text/html;charset=UTF-8" language="java" %><%@ include file="commons/inc.jsp"%>
<html>
<head>
    <title>default page</title>
</head>
<body>
<h1>default page</h1>
<form action="${ctx}/user/login" method="post">
    USERNAME: <input name="username" placeholder="USERNAME" value="a"><br/>
    PASSWORD: <input name="password" type="password" placeholder="PASSWORD" value="a"><br/>
    <input type="submit" value="LOGIN">
</form>
${requestScope.message}
<hr>
<a href="${ctx}/signup.jsp">SIGN UP</a>
<hr>
<a href="${ctx}/message/add.jsp">留言</a>
</body>
</html>
