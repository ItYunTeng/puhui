<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
     <title>用户登录</title>
     <style type="text/css">
  body {background-color:#fff;color:#333; min-width:1000px;
  
     font-family: "\5fae\8f6f\96c5\9ed1",Arial; 
     }
body,ol,ul,h1,h2,h3,h4,h5,h6,p,th,td,dl,dd,form,fieldset,legend,input,textarea,select,table{margin:0;padding:0; font-weight: normal;}
li{ list-style: none;}
a{color:#6C6C6C;text-decoration:none}
a:hover{ color:#DD0000; }
em,i{font-style:normal}


.login_title{ width: 1000px; margin: 0 auto ; height: 120px}

.login_imgz{  height: 539px; background: url(images/user_center_img.jpg); }

.login_in{ width: 1000px; margin: 0 auto; }

.user_list{ float: right; width: 380px; height: 380px; padding: 40px; background-color: #fff; margin-top: 50px;     box-shadow: 0 2px 8px rgba(0, 0, 0, 0.25);}

.footer{ margin-top: 40px; text-align: center; font-size: 12px; color: #666; line-height: 24px}

.user_list_ul{ overflow: hidden;}
.user_list_ul li{ margin-bottom: 20px}

.user_list_ul li input{ border: 1px solid #ddd; height: 45px; width: 378px;  text-indent: 40px; }
.user_list_ul li input.iwig30{  width: 220px; text-indent: 10px}
.user_list_ul li span.usw{      width: 157px;
    float: right;
    border: 1px solid #ddd;
    height: 45px;
    text-align: center;
    line-height: 44px;
    border-left: none;
    background-color: #f7f7f7;}

.user_list h2{ font-size: 18px; margin-bottom: 20px;}

.zhungtna_btn{  height: 45px; width: 378px; background-color: #d11a1a; color: #fff; text-align: center; font-size: 14px; border: none; display: block;}
.zhungtna_btn:hover{ background-color: #ea3636;}
.forget{ margin-top: 20px; text-align: right; font-size: 14px; color: #666;    margin-bottom: 20px;}
.forget a{ color: #1069b7}
.yonghusi_icon{background: url(images/signin5.gif) no-repeat 15px;}
.yongyan_icon{background: url(images/signin6.gif) no-repeat 15px;}

.user_help{ float: right; font-size: 16px; line-height: 100px}
.user_help a{ font-size: 16px; color: #444; display: inline-block; margin: 0 10px;}
.user_help a:hover{ color: #d11a1a}

.user_left_img img{ margin-top: 202px}
</style>
</head>
<body>


<div class="login_title">
    <a href="#"><img src="images/user_heander.jpg" alt=""></a>

    <span class="user_help"><a href="#">官方首页</a> <i> | </i><a href="#">帮助</a></span>
</div>




    <div class="login_imgz">
        <div class="login_in">

            <span class="user_left_img"><img src="images/user_mkg.png" alt=""></span>


            <div class="user_list"> 

                <h2>账号登陆</h2>




            <form name="form" action="${pageContext.request.contextPath}/adminlogin.action" method="post">

           
                <ul id="user_login" class="user_list_ul">
                    <li class="mt10 mobile ">
                       
                        <input type="text" class="text-input yonghusi_icon" placeholder="手机号码" name="phone" id="user">
                     

                    </li>
                    <li class="mt10 ">
                       
                        <input type="password" class="text-input yongyan_icon" placeholder="登陆密码" name="password" id="pas">
                        
                    </li>
         

                    <li class="mt10 fw yongmima_icon">
                      
                        <input type="text" class="text-input iwig30" name="valiCode" id="yanz" placeholder="输入验证码">
                        <span class="usw">
                        <img style="height:35px;width:145px;margin-top:5px"
                         title="点击刷新" src="${pageContext.request.contextPath }/vCode" 
                         align="absmiddle" onclick="this.src='${pageContext.request.contextPath }/vCode?'+Math.random();" >
                        </span>
                        
                    </li>
                   

                </ul>
				
              


                <input type="submit" class="zhungtna_btn" value="立即登陆" id="sub"/>


            </form>
				<p style="margin:10px 30px;color:red">${admin}</p>
            </div>
        </div>
    </div>

    



















   

<div class="footer">

  <div class="copyright"> 

    <p class="t-a-c">主办：海口高新区总工会 ©版权所有 京ICP备15015664号-1  </p>
    <p class="t-a-c">地址：海口国家高新区总工会 电话：010-8000000 </p>
        <p class="t-a-c"> 技术支持：<a href="#">海南航众科技有限公司</a></p>

    </div>


</div>







    </body>
</html>