<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>Board List Page</h1>
   
   
   <table border="1">
    <tr>
     <th>bno</th>
     <th>title</th>
     <th>writer</th>
     <th>regdate</th>
    </tr>
     
     
   <!-- DB에서 가져온 리스트를 c : foreach를 통해 반복출력 -->
   <c:forEach items="${list }" var="bvo">
   <tr>
   <td> ${bvo.bno }</td>
   <td><a href="/brd/detail?bno=${bvo.bno}">${bvo.title }</a> </td>
   <td>${bvo.writer }</td>
   <td>${bvo.regdate }</td>
   </tr>
   
   
   
   
   </c:forEach>
   </table>

</body>
</html>