<%@page import="train_package.dao.maincontroller,train_package.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="user_registration_page.html">register_new_user</a>
<%
List<set_and_get> list=maincontroller.getall_users_list();  
request.setAttribute("list",list); 
%>
<table border="4" width="50%" >
<tr>
<th>USERID</th>
<th>FULLNAME</th>
<th>USERNAME</th>
<th>PASSWORD</th>
<th>GENDER</th>
<th>AGE</th>
<th>COUNTRY</th>
<th>STATE</th>

</tr>
<c:forEach var="v" items="${list}">
<tr>
<td>${v.getUser_id()}</td>
<td>${v.getUser_full_name()}</td>
<td>${v.getUser_name()}</td>
<td>${v.getPassword()}</td>
<td>${v.getGender()}</td>
<td>${v.getAge()}</td>
<td>${v.getCountry()}</td>
<td>${v.getState()}</td>
<td><a href="edit_form.jsp?fuserid=${v.getUser_id()}&fname=${v.getUser_full_name()}&uname=${v.getUser_name()}&pass=${v.getPassword()}
&gen=${v.getGender()}&ag=${v.getAge()}&coun=${v.getCountry()}&stat=${v.getState()}">EDIT</a></td>
<td><a href="delete_registered_user_details">DELETE</a></td>
</tr>

</c:forEach>
</table>
</body>
</html>