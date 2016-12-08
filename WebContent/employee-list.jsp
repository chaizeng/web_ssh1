<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <s:debug></s:debug>
    
    <h2 align="center">员工信息</h2>
    <s:if test="#request.employee == null || #request.employee.size() == 0">
    　　　　　　没有员工信息
    </s:if>
    <s:else>
       <table border="1" align="center">
         <tr>
            <td>编号</td>
            <td>姓名</td>
            <td>邮箱</td>
            <td>生日</td>
            <td>创建日期</td>
            <td>部门</td>
         </tr>
       <s:iterator  value="#request.employee">
             <tr>
             <td>${id}</td>
             <td>${name}</td>
             <td>${email}</td>
             <td>${birth}</td>
             <td>${createTime}</td>
             <td>${department.name}</td>
             </tr>
       </s:iterator>          
       </table>
    </s:else>
</body>
</html>