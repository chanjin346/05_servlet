<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>전달 된 request 객체에 저장된 속성 값 출력 하기 </h1>

    <h3>Expression Tag 방식</h3>
    <pre>
        <b><%= request.getAttribute("name")%></b>
        <b><%= request.getAttribute("age")%></b>
        <b><%= request.getAttribute("phone")%></b>
        <b><%= request.getAttribute("items")%></b>
    </pre>

    <hr>

    <h3>Expression Language 방식</h3>
    <pre>
        ${requestScope.name}
        ${requestScope.age}
        ${requestScope.phone}
        ${requestScope.items}

        ---------------------------------------

        EL 구문은
            page -> request -> session -> application 순서로 탐색한다!!
        ${name}
        ${age}
        ${phone}
        ${items}

        items[0] : ${items.get(0)}
        items[1] : ${items[1]}
        items[2] : ${items[2]}
    </pre>

</body>
</html>
