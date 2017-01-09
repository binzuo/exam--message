<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>message edit page</title>
    </head>
    <body>
        <h1>EDIT Message</h1>
        <form action="${ctx}/message/modify" method="post">
            <input type="hidden" name="id" value="${sessionScope.message.id}">
            USERNAME: <input name="username" value="${sessionScope.message.username}"><br>
            CONTENT: <input name="content" value="${sessionScope.message.content}"><br>
            TIME: <input name="time" value="${sessionScope.message.time}"><br>
            <input type="submit" value="SAVE">
        </form>
    </body>
</html>