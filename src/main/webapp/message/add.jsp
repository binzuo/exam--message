<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>message add page</title>
    </head>
    <body>
        <h1>ADD Message</h1>
        <form action="${ctx}/message/add" method="post">
            <input name="username" placeholder="USERNAME"><br>
            <textarea name="content"></textarea><br>
            <input type="submit" value="ADD">
        </form>
    </body>
</html>