"<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript">
        //这里的函数执行的设置就是将id = mover的标签动起来
        $(function(){
            function anmateIt(){
                $("#mover").slideToggle("slow", anmateIt);
            }
            AnmateIt();

            function Mymovie(){
                $("#outer").slideToggle("fast",anmateIt);
            }
            //Mymovie();
        });

        $(function(){

            //1.选择第一个 div 元素
            $("#btn1").click(function(){
                //过滤器选择器的中的冒号： 含义就是过滤、筛选的意思
                $("div:first").css("background","#931cff");
            });

            //2.选择class不为 one 的所有 div 元素
            $("#btn2").click(function(){
                //not()括号里面的意思是：它是一个class类型的标签。
                //要是id类型的话就会使用#开头---也就是说not里面放的是基本选择器的方式
                $("div:not(.one)").css("background","#bbaacc");
            });
            //3.选择索引值为等于 3 的 div 元素
            $("#btn3").click(function(){
                $("div:eq(3)").css("background","#bbccaa");
            });
            //$("<div><span>你好啊，么么哒</span></div>").appendTo("body");
            //4.选择当前正在执行动画的所有元素
            $("#btn4").click(function(){
                //这个题有两种做法：
                //$("div[id=mover]").css("background","#ccaabb");
                //做法1：就是通过属性过滤选择器的方式
                /* $("div[id = mover]").css("background", "#bbffaa"); */

                //方法2：通过  “ div：animated”(div可是省略  但是最好是不要省略)
               $("div:animated").css("background","#bbaacc");

            });
            //5.选择含有子元素的div元素
            $("#btn5").click(function(){
                //使用jquery查询标签时，内部的不是标签的内容不会被看作为元素
                $("div:has(*)").css("background","#bababa");
            });
            //6.选择所有不可见的 div 元素
            $("#btn6").click(function(){
                //show("normal")  修改不可见元素的display属性值为block
                //只会修改display属性，type值为hidden的input不管怎么样都不会显示
                $("div:not(div:visible)").show("normal").css("background","#cccccc");
            });
            //7.选取 属性title值等于'test'的div元素
            $("#btn7").click(function() {
                $("div[title='test']").css("background","#7794bb");
            });
            //8.选取每个class为one的div父元素下的第一个子元素
            $("#btn8").click(function(){
                //有两种做法  这是第一种的做法  不用加空格
                //$("div[class='one'] :first-child").css("background","#ccbbaa");
                $("div:(.one). :first-child").css("background","#bbaacc");
                //这里是第二种的做法  这里要注意的是：记得要加空格  因为查找的子元素  浏览器遇到空格会认为是子代
                /* $("div[class='one'] :first-child").css("background","#bbffaa"); */
            });
        });
    </script>

    <title>title</title>
</head>
<html>
<body>
<input type="button" value="选择第一个 div 元素" id="btn1"/>
<input type="button" value="选择class不为 one 的所有 div 元素" id="btn2"/>
<input type="button" value="选择索引值为等于 3 的 div 元素" id="btn3"/>
<input type="button" value="选择当前正在执行动画的所有元素" id="btn4"/>
<input type="button" value="选择含有子元素的div元素" id="btn5"/>
<input type="button" value="选择所有不可见的 div 元素" id="btn6"/>
<input type="button" value="选取 属性title值等于'test'的div元素." id="btn7"/>
<input type="button" value="选取每个class为one的div父元素下的第一个子元素." id="btn8"/>


<h3>选择器练习.</h3>
<br><br>
<div class="one" id="one">
    id 为 one,class 为 one 的div
    <div class="mini">class为mini</div>
</div>
<div class="one" id="two" title="test">
    id为two,class为one,title为test的div
    <div class="mini" title="other">class为mini,title为other</div>
    <div class="mini" title="test">class为mini,title为test</div>
</div>
<div class="one">
    <div class="mini">class为mini</div>
    <div class="mini">class为mini</div>
    <div class="mini">class为mini</div>
    <div class="mini"></div>
</div>
<div class="one">
    <div class="mini">class为mini</div>
    <div class="mini">class为mini</div>
    <div class="mini">class为mini</div>
    <div class="mini" title="tesst">class为mini,title为tesst</div>
</div>
<div style="display:none;" class="none">style的display为"none"的div</div>
<div class="hide">class为"hide"的div</div>
<div>
    包含input的type为"hidden"的div<input type="hidden" size="8">
</div>
<div id="mover">正在执行动画的div元素.</div>
<div id="outer">让动画飘逸起来</div>
</body>
</html>
