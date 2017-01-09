<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>message list page</title>
        <script>
            function del() { return confirm('REMOVE?'); }
        </script>
    </head>
    <body>
       <!-- <c:import url="add.jsp"/>-->
        <hr/>
        <h1>LIST Message</h1>
        <hr/>
        <table border="1">
            <tr>
                <th>INDEX</th>
                <th>USERNAME</th>
                <th>CONTENT</th>
                <th>TIME</th>
                <th >OPERATION</th>
            </tr>
            <c:forEach var="message" items="${sessionScope.pagination.list}" varStatus="vs">
            <tr>
                <td>${vs.count}</td>
                <td>${message.username}</td>
                <td>${message.content}</td>
                <td>${message.time}</td>
                <!--<td><a href="${ctx}/message/search/${message.id}">EDIT</a></td>-->
                <td><a class="delete" href="${ctx }/message/remove/${message.id}" onclick="return del()">REMOVE</a></td>
            </tr>
            </c:forEach>
        </table>
        <c:import url="${ctx}/commons/page.jsp">
            <c:param name="path" value="message/${sessionScope.pagination.statement}"/>
        </c:import>
    </body>
</html>