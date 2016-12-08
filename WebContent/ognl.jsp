<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <s:debug></s:debug>

   <%   
         request.setAttribute("name","kevin");
         String[]  cars = new String[]{"Mazada","Honda","Toyota"};
         request.setAttribute("cars",cars);
   %>
   
   <h3> ognl表达式   </h3>

   name:<s:property value="#request.name"/>
   
   <br>
   PI:<s:property value="@java.lang.Math@PI"/>
   <br>
   cos1:<s:property value="@java.lang.Math@cos(1)"/>
   <br>
   cars:<s:property value="#attr.cars.length"/>
   <br>
   car2：<s:property value="#attr.cars[2]"/>
</body>
</html>