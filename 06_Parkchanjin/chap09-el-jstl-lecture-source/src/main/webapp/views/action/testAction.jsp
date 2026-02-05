<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP Action Tag</title>
</head>
<body>
<h1>testAction.jsp 입니다. </h1>
<hr>
<div>
    <%
        int num = 200;
    %>

    <%-- 컴파일 오류 발생
    - 원인 : 컴파일 전에 두 jsp 코드가 하나로 합쳐지면서(런타임 단어가 안보이면 정적)
             변수명 중복이 발생함
    <%@include file="common.jsp"%>
    --%>

    <%-- JSP 액션 태그 : include
        - 런타임 중에 jsp를 포함 시킴(런타임이 들어가면 동적)
        - 변수명 중복 문제 X
        --%>
    <jsp:include page="common.jsp"/>


    <%-- forward : 요청 위임 --%>
    <%--<%
        RequestDispatcher rd = request.getRequestDispatcher("주소");
        rd.forward(request, response);
    %>--%>


    <%
        request.setAttribute("name", "정병진");
    %>

    <jsp:forward page="testForward.jsp"/>

</div>
<hr>


</body>
</html>
