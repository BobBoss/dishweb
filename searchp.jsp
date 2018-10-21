<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ page import="entity.Dish" %>
<%@ page import="dao.DishDao" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


    <title>宠物总览</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="css/index_css.css">
    <link rel="stylesheet" href="css/ly.css">
    <style>
        .project-pages li {
            display: inline-block;
        }

        .project-pages a {
            width: 34px;
            height: 34px;
            color: #333333;
            text-align: center;
            line-height: 34px;
            display: block;
            background: #dddddd;
        }

        .project-pages a:hover {
            background: #5cb48e;
            color: white;
        }
        html{
            color: white;
        }
        #content_table_body{
            color: #3b0090;
        }
    </style>
    <script src="js/search.js"></script>
</head>

<body>

<jsp:useBean id="user" class="entity.User" scope="session"></jsp:useBean>
<%--导航栏--%>
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

<!--搜索-->
<div style="float: left;width: 100%">
    <div class="search-area-wrapper">
        <div class="search-area container">
            <h3 class="search-header">宠物搜索！</h3>
            <p class="search-tag-line">现支持搜小区和种类哦！赶快试试吧！</p>
            <form id="search-form" class="search-form clearfix" method="post" action="addish1.jsp"
                  autocomplete="off"
            >
                <input class="search-term required" style="height:50px;" type="text" id="keyword" name="keyword"
                       placeholder="请搜索你想找的宠物"
                       title="* Please enter a search term!"
                       onblur="keywordBlur()" onfocus="getMoreContents()" onkeyup="getMoreContents()"/>
                <a href="searchp.jsp"><input class="search-btn" style="height:50px;" type="submit" value="文字搜索"/></a>
				 <a href="index.html"> <input class="search-btn" style="height:50px;" type="submit" value="图片搜索"/></a>
				
				
                <div id="search-error-container"></div>
                <div id="popDiv">
                    <table id="content-table" bgcolor="#FFFAFA" border="0" cellspacing="0" cellpadding="0">
                        <tbody id="content_table_body">
                        <!-- 动态查询出来的数据显示在这里 -->
                        </tbody>
                    </table>
                </div>
            </form>
		
			
			
				
        </div>
    </div>
</div>



<center>
    <table width="750" height="60" cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td>

                <!-- 商品循环开始 -->
              
                
                    <div class="port-2 effect-1" style="width:200px;">
                        <div class="image-box">
                            <img src="../img/西施犬.jpg" ;alt="Image-1" class="lysrc">
                        </div>
                        <span style="color: wheat">西施犬00</span>
                        <div class="text-desc"
                             style="background:url(../img/西施犬.jpg);background-size: 100% 100%;;height:180px">
                            <center><a href="" class="cdbtn">西施犬00
                            </a></center>
                            <center><p style="color:#fff9f8;font-size:20px;">111元</p></center>
                        </div>
                    </div>
					
					</td>
					<td>
                  <div class="port-2 effect-1" style="width:200px;">
                        <div class="image-box">
                            <img src="../img/西施犬1.jpg" ;alt="Image-1" class="lysrc">
                        </div>
                        <span style="color: wheat">西施犬01</span>
                        <div class="text-desc"
                             style="background:url(../img/西施犬.jpg);background-size: 100% 100%;;height:180px">
                            <center><a href="" class="cdbtn">西施犬01
                            </a></center>
                            <center><p style="color:#fff9f8;font-size:20px;">111元</p></center>
                        </div>
                    </div>
</td>

			
			
		
			
        </tr>
        <tr>
            <div class="project-pages">
                <ul>
                    <li><a href="javascript:void(0);" onclick="goNextReplyPage()">向前</a></li>
                    <li>第 <span id="dishPage">1</span> 页</li>
                    <li><a href="javascript:void(0);" onclick="goPreviousReplyPage()">向后</a></li>
                </ul>
            </div>
        </tr>
    </table>
</center>
</body>

<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>

<%--分页--%>

</html>