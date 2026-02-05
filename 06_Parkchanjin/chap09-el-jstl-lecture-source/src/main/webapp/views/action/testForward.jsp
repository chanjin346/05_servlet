<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1> <%= request.getAttribute("name")%></h1>
    <h1>${name}</h1>
</body>
</html>

<%--
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Wall of Names</title>
    <style>
        /* 1. 화면 전체 레이아웃 잡기 */
        body {
            display: flex;      /* 자식들을 나란히 배치 */
            flex-wrap: wrap;    /* 공간이 부족하면 다음 줄로 넘김 (핵심!) */
            margin: 0;          /* 기본 여백 제거 */
            padding: 10px;      /* 안쪽 여백 살짝 */
            width: 100%;        /* 너비 100% 사용 */
            height: 100vh;      /* 높이도 화면 전체 사용 */
            overflow-y: auto;   /* 내용이 넘치면 스크롤 생성 */
            align-content: flex-start; /* 위에서부터 차곡차곡 쌓기 */
        }

        /* 2. 이름 디자인 다듬기 */
        .name-tag {
            font-size: 20px;    /* 글자 크기 (원하는대로 조절) */
            margin: 10px;       /* 이름 사이 간격 */
            color: #333;        /* 글자 색상 */
        }
    </style>
</head>
<body>

&lt;%&ndash; Java 반복문을 사용하여 HTML을 500번 찍어냅니다 &ndash;%&gt;
<%
    // 화면을 꽉 채울 만큼 충분히 큰 숫자로 반복합니다 (예: 300~500번)
    for (int i = 0; i < 500; i++) {
%>
<div class="name-tag">
    <%= request.getAttribute("name") %>
</div>
<%
    }
%>

</body>
</html>--%>
