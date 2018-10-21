<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ page import="dao.*" %>
<%@ page import="entity.*" %>
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>后台管理</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/templatemo-style.css">
    <link rel="stylesheet" href="css/buttons.css">
    <link rel="stylesheet" href="css/ly.css">
    <script src="js/vendor/modernizr-2.6.2.min.js"></script>
    <style>
        img {
            width: 200px;
            height: 200px;

        }
        html{
            color: white;
        }
    </style>
</head>

<body>
<jsp:useBean id="user" class="entity.User" scope="session"></jsp:useBean>
<jsp:useBean id="userdao" class="dao.UserDao" scope="page"></jsp:useBean>
<jsp:useBean id="dishDao" class="dao.DishDao" scope="page"></jsp:useBean>
<!--[if lt IE 7]>
<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> to improve your experience.</p>
<![endif]-->

<%--导航栏--%>
<div class="top-header"
     style="padding-bottom: 0px;
     padding-top: 0px;
     height: 1px;"
>

</div>

<div class="aheader" id="id0">
    <div class="lheader">
    </div>
    <div class="header">
        <nav class="nav nav3" style="padding-top:20px">
            <ul>
                <li>
                    <a href="index.jsp">首页</a>

                </li>
                <li>
                    <a href="list.jsp">总览</a>

                </li>
                <li>
                    <a href="javascript:void(0);">监督</a>

                </li>
                <li>
                    <a href="javascript:void(0);">客服</a>

                </li>
                <li>
                    <a href="javascript:void(0);">安保</a>
                </li>
            </ul>
        </nav>

    </div>
    <div class="rheader">
        <center>
            <nav class="nav nav3" style="padding-top:20px">
                <ul>
                    <li>
                        <%
                            if (user.getName() != null) {
                        %>
                        <a href="javascript:void(0);">
                            <span style="white-space: nowrap;"><%=user.getName()%>,您好！
                            </span></a>
                        <ul>
                            <li><a href="userinfo.jsp">个人中心</a></li>
                            <%
                                if (user.getName() != null) {

                            %>
                            <li><a href="manager.jsp">宠物管理</a></li>
                            <%

                                }
                            %>
                            <li><a href="servlet/LogOffServlet">注销登录</a></li>
                        </ul>
                        <%
                        } else {
                        %>
                        <a href="login.html">登录！</a>
                        <%
                            }
                        %>
                    </li>
                </ul>
            </nav>

        </center>
    </div>
</div>


<%
    if (user.getName() != null) {
    //判断是否是管理员
%>

<%--操作--%>
<div class="container" id="page-content" style="height: 900px">
    <div class="row">
        <div class="col-md-9 col-sm-12 content-holder">
            <!-- CONTENT -->
            <div id="menu-container">
                <%--添加--%>
                <div id="menu-1" class="homepage home-section text-center">
                    <div class="box-content profile" style="background:url(images/9.jpg);background-size: 100% 100%">
                        <h3 class="widget-title">增加宠物</h3>
                        <center>
                            <!-- <a href="upload1.html" class="button button-glow button-rounded button-royal">上传菜品图片</a> -->
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <a href="adddish.jsp" class="button button-glow button-rounded button-royal">点击上传宠物</a>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                        </center>
                    </div>
                </div>
                <%--删除--%>
                <div id="menu-2" class="content about-section" style="float:left">
                    <div class="box-content profile" style="background:url(images/9.jpg);background-size: 100% 100%">
                       <center> <h3 class="widget-title">删除宠物</h3></center>
                        <div class="row" style="float:left;width:600px;height:400px">
						<table style="height:400px;width:600px">
						<tr>
						<td>
						<div class="circledwm1" style="height:120px; width:100px">
						<div class="circledwm" style="background:url(../img/北京犬.jpg);background-size: 100% 100%; height:100px; width:100px">
					
                           
                        </div>
						北京犬<br>
						<a href="">删除</a>
						</div>
						</td>
						
						
						
							<td>
						<div class="circledwm1" style="height:120px; width:100px">
						<div class="circledwm" style="background:url(../img/边境牧羊犬.jpg);background-size: 100% 100%; height:100px; width:100px">
					
                           
                        </div>
							边境牧羊犬<br>
						<a href="">删除</a>
						</div>
						</td>
						
						
						
								<td>
						<div class="circledwm1" style="height:120px; width:100px">
						<div class="circledwm" style="background:url(../img/西施犬.jpg);background-size: 100% 100%; height:100px; width:100px">
						
                           
                        </div>
						西施犬00
						 <br><a href="">删除</a>
						</div>
						</td>
						
						
						
							<td>
						<div class="circledwm1" style="height:120px; width:100px">
						<div class="circledwm" style="background:url(../img/西施犬1.jpg);background-size: 100% 100%; height:100px; width:100px">
 
                        </div>
						西施犬01
						 <br><a href="">删除</a>
						</div>
						</td>
						
						</tr>
						
						
						
								<tr>
						<td>
						<div class="circledwm1" style=" height:120px; width:100px">
						<div class="circledwm" style="background:url(../img/德国牧羊犬.jpg);background-size: 100% 100%; height:100px; width:100px">
						
                           
                        </div>
						德国牧羊犬
						 <br><a href="">删除</a></br>
						</div>
						</td>
						
						
						
							<td>
						<div class="circledwm1" style=" height:120px; width:100px">
						<div class="circledwm" style="background:url(../img/贵宾犬.jpg);background-size: 100% 100%; height:100px; width:100px">
						
                           
                        </div>
						贵宾犬
						 <br><a href="">删除</a></br>
						</div>
						</td>
						
						
						
								<td>
						<div class="circledwm1" style="height:120px; width:100px">
						<div class="circledwm" style="background:url(../img/松狮.jpg);background-size: 100% 100%; height:100px; width:100px">
						
                           
                        </div>
						松狮
						 <br><a href="">删除</a></br>
						</div>
						</td>
						
						
						
							<td>
						<div class="circledwm1" style="height:120px; width:100px">
						<div class="circledwm" style="background:url(../img/泰迪犬.jpg);background-size: 100% 100%; height:100px; width:100px">
						
                           
                        </div>
						泰迪犬
						 <br><a href="">删除</a></br>
						</div>
						</td>
						
						</tr>
						
						
						</table>
                            <%
                                ArrayList<Dish> dishList = dishDao.getAllDishes();
                                if (dishList != null && dishList.size() > 0) {
                                    for (int k = 0; k < 0; k += 9) {
                                        for (int i = k; i < k + 9 && i < dishList.size(); i++) {
                                            Dish dish = dishList.get(i);
                            %>

                            <div class="col-md-4 col-sm-6 col-xs-12 dishlog<%=(int)k/9+1%>" style="display: none">
                                <div class="project-item">
                                    <a href="servlet/ManageServlet?action=del&id=<%=dish.getId()%>">
                                        <img src="../img/<%=dish.getImgurl()%>" alt="">
                                    </a>
                                    <div class="project-hover">
                                        <h4>删除：<%=dish.getName()%>
                                        </h4>
                                    </div>
                                </div>
                            </div>
                            <%
                                    }
                                }
                            } else {
                            %>
                            <center><p>您管理范围内还没有宠物，快去添加吧！</p><br>
                                    <%
                                    }
                                %>
                        </div>
						
						
						
						
                         

                    


                        <div class="project-pages" style="float:left;width:600px;">
                            <ul>
                                <li><a href="#" onclick="goNextDishPage()">向前</a></li>
                                <li>第 <span id="dishPage">1</span> 页</li>
                                <li><a href="#" onclick="goPreviousDishPage()">向后</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="col-md-3 hidden-sm">

            <nav id="nav" class="main-navigation hidden-xs hidden-sm">
                <ul class="main-menu">
                    <li>
                        <a class="show-1 active homebutton" href="#">
                            <i class="fa fa-home"></i>增加宠物</a>
                    </li>
                    <li>
                        <a class="show-5 aboutbutton" href="#">
                            <i class="fa fa-user"></i>删除宠物</a>
                    </li>
                </ul>
            </nav>

        </div>
    </div>
</div>


<script src="js/vendor/jquery-1.10.2.min.js"></script>
<script src="js/plugins.js"></script>
<script src="js/main.js"></script>
<!-- templatemo 439 rectangle -->


<%--分页--%>
<script type="text/javascript">
    var dishPage = 1;
    var maxDishPage = parseInt(<%=(int)dishList.size()/9+1%>);

    function goNextDishPage() {
        $(".dishlog" + dishPage).fadeOut("fast");
        if (dishPage > 1) {
            dishPage--;
        }
        $("#dishPage").text(dishPage);
        $(".dishlog" + dishPage).fadeIn("fast");
    }

    function goPreviousDishPage() {
        $(".dishlog" + dishPage).fadeOut("fast");
        if (dishPage < maxDishPage) {
            dishPage++;
        }
        $("#dishPage").text(dishPage);
        $(".dishlog" + dishPage).fadeIn("fast");
    }

    function showCurDishPage() {
        $(".dishlog" + dishPage).fadeIn("fast");
    }

    $(document).ready(function () {
        showCurDishPage();
    });
</script>

<%
    }else {
        response.sendRedirect("index.jsp");
    }
%>

</body>

</html>