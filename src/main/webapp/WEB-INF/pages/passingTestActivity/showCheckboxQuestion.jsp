<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<html>
<head>
    <title>Add Activity</title>
</head>
<body>
<form:form method="get" action="/showQuestion" modelAttribute="ptaDto">
    <table>
        <div>
            <td> Question #${numberQuestion}</td>
        </div>

        <tr>
            <td>Question</td>
            <td><input type="text" value="${ptaDto.question}" name="question" disabled></td>
        </tr>
        <tr>
            <td>Answers</td>

        </tr>
        <tr>
            <td>Answer 1</td>
            <td>
                <input type="checkbox"  name="rightAnswer1">

                    <%--<input type="hidden" value="${ptaDto.rightAnswer1}" name="rightAnswer1" >--%>
            </td>
            <td><input type="text" value="${ptaDto.answer1}" name="answer1" disabled></td>
        </tr>
        <tr>
            <td>Answer 2</td>
            <td><input type="checkbox"  name="rightAnswer2"></td>
                <%--<td><input type="hidden" value="${ptaDto.rightAnswer2}" name="rightAnswer2"></td>--%>
            <td><input type="text" value="${ptaDto.answer2}" name="answer2" disabled></td>
        </tr>
        <tr>
            <td>Answer 3</td>
            <td><input type="checkbox"  name="rightAnswer3"></td>
                <%--<td><input type="hidden" value="${ptaDto.rightAnswer3}" name="rightAnswer3"></td>--%>
            <td><input type="text" value="${ptaDto.answer3}" name="answer3" disabled></td>
        </tr>
        <tr>
            <td>Answer 4</td>
            <td><input type="checkbox"  name="rightAnswer4"></td>
                <%--<td><input type="hidden" value="${ptaDto.rightAnswer4}" name="rightAnswer4"></td>--%>
            <td><input type="text" value="${ptaDto.answer4}" name="answer4" disabled></td>
        </tr>




        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<input type="hidden" name="id" value="${passingActivity.activity.id}">--%>
                <%--<input type="hidden" name="numberQuestion" value="${numberQuestion}">--%>
                <%--<input type="submit" value="Ok">--%>
            <%--</td>--%>
        <%--</tr>--%>
    </table>


    <div align="center">
        <table>
        <c:forEach var="item" items="${passingActivity.content.items}">
            <form method="get" action="/showQuestion">
                <input type="hidden" name="numberQuestion" value="${item.numberQuestion}">
                <input type="hidden" name="id" value="${passingActivity.activity.id}">
                <input type="submit" value="${item.numberQuestion}">
            </form>
        </c:forEach>
        </table>
    </div>

    <%--<div align="center">--%>
    <%--<b>Activity Show Page</b>--%>
    <%--</div>--%>

    <%--<div class="bot-navigation" align="center"><span>&#9668;</span> <span>1</span> <a href="">2</a> <a href="">3</a> <a href="">4</a> <a href="">5</a>--%>
    <%--<a href="">6</a> <a href="">7</a> <a href="">8</a> <a href="">9</a> <a href="">10</a> <span class="nav_ext">...</span><a href="">&#9658;</a></div>--%>


    <%--<div>--%>
    <%--<form>--%>
    <%--<input type="hidden" name="id" value="${passingActivity.activity.id}">--%>
    <%--<input type="submit" value="New question">--%>
    <%--</form>--%>
    <%--<input type="submit" value="Save question" title="Save the question">--%>
    <%--<input type="submit" value="Delete question" title="Delete the question">--%>
    <%--</div>--%>


<div>
    <table>
        <tr>
            <td colspan="2">
                <%--<form method="post" action="/showQuestion">--%>
                    <input type="hidden" name="numberQuestion" value="${numberQuestion}">
                    <input type="hidden" name="test" value="1">

                <%--<input type="hidden" name="numberQuestion" value="${numberQuestion+1}">--%>
                    <input type="hidden" name="id" value="${passingActivity.activity.id}">
                    <input type="submit" value="Ok">
            </td>
        </tr>

    </table>
</div>
</form:form>

</body>
</html>

</body>
</html>
