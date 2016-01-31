<%@ page import="evg.testt.model.Chat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
  <title>All</title>
  <link href="resources/assets/css/style.css" rel="stylesheet">
</head>
<body class="no-js">
<div align="right"><strong>${email}</strong></div>
<table id="menu" width="1000px">
  <tr>
    <td><b>Name</b></td>
  </tr>
  <c:forEach var="department" items="${departments}">
    <tr>
      <td>${department.name}</td>
      <td>
        <form method="post" action="/depDelete">
          <input type="hidden" name="id" value=${department.id}>
          <input type="submit" value="Delete">
        </form>
      </td>
      <td><form method="post" action="/depEdit">
            <input type="hidden" name="id" value=${department.id}>
            <input type="submit" value="Update">
          </form>
      </td>
      <td><form method="get" action="/employees">
        <input type="hidden" name="id" value=${department.id}>
        <input type="submit" value="Employees">
      </form>
      </td>
    </tr>
  </c:forEach>
  <tr>
    <td colspan="5">
      <form method="post" action="/depEdit">
        <input type="submit" value="Add new one">
      </form>
    </td>
  </tr>
</table>

<div id="chat">
  <form:form method="post" action="/chatAdd">
    <div id="containerChat">
      <table>
        <%--<jsp:useBean id="chats" beanName="chat" type="java.util.List<evg.testt.model.Chat>" scope="page" />
        <% for(int i = chats.size()-1; i > chats.size(); i--) {
          Chat chat = (Chat) chats.get(i);
        %>
        <%="<tr><td>" + chat.getUser().getEmail() + ":" + chat.getMessage() + "</td></tr>"%>
        <% } %>--%>
  <c:forEach var="chat" items="${chat}">
    <tr>
    <td>${chat.getUser().email}:${chat.message}</td>
    </tr>
  </c:forEach>
        </table>
    </div>
    <table>
    <tr>
  <td>
    <input width="30%" type="text" name="message">
  </td>
  <td colspan="5">
      <%--<input type="hidden" name="user" value="${user.email}">--%>
      <input type="submit" value="Send">
  </td>
    </tr>
      </table>
  </form:form>
</div>
<a href="/">Home</a>
</body>
</html>