<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript">
        $(function () {
            $("#divOne").click(function () {
                //$("div[id='one']").css("background","#bbaacc");
                //$("div[id='one']").remove();
                //$("p").remove();
                $("p").empty();
                //$("div:eq(0)").empty();
            })
        });
        <% System.out.println("你谁谁12");%>
    </script>
    <title>title</title>

</head>
<body>


    <input id="divOne" type="button" value="div1"/>
    <input id="divTwo" type="button" value="div2"/>
    <p>123abv </p>
    <div id="one">
        <span >你好，明天</span>
    </div>
    <div id="two">
        <span>我的愿望是明年吃苦的能力比今年强</span>
    </div>
</body>
</html>