<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <title>登陆</title>
</head>
<style type="text/css">
	body {
    	
    
    	background:url(../image2.png) center;
    	background-size: 100% auto; /* 设置背景的大小 */
    	background-repeat: no-repeat; /* 将背景设置为不重复显示 */
	}
	.content{    		
	    width: 30%;
	    text-align: center;
	    margin: 0 auto;
	    margin-top: 15%;
    	background: #00000080;
	    padding: 20px 50px 10px 50px;
    }


    .item{    

    }
    .item input{
    	width: 200px; /* 设置合适的宽度 */
    	margin-top: 10px; /* 设置合适的上下部外框的宽度，增加与上下框的距离 */
    	border: 0; /* 首先将边界取消，方便下面修改下部边界宽度 */
    	border-bottom: 3px solid white; /* 将下边界进行修改，显示出横线效果 */
    	font-size: 18px; /* 将字体适当的变大加粗 */
    	background: #ffffff00; /* 将输入框设置为透明 */
    	color: white; /* 上面的文本颜色设置为白色，但是placeholder的颜色要单独设置 */
	    padding: 5px 10px; /* 为了placeholder的内容不是顶格显示，增加内部边界 */
	}
	.item i {
	    color: white;
	    font-size: 18px;
}
</style>

<body>
<div class="content">
    <h1 style="color: white;">Login</h1>

    <div class="item">
		<label style="color: white;" for="userName">Username:</label>
		<input type="text" name="userName" id="userName" placeholder="请输入用户名" value="admin" autocomplete="off"/>
    </div>
    <div class="item">
		<label style="color: white;" for="password">Password:</label>
		<input type="password" name="password" id="password" placeholder="请输入密码" value="123" autocomplete="off"/>
    </div>

    <div class="item">
        <button 
        	style="
    			border: 0; /* 取消按钮的边界 */
    			width: 100px; /* 设置合适的按钮的长和宽 */
    			height: 30px;
   				margin-top: 60px; /* 设置合适的上部外框的宽度，增加与上面的password框的距离 */
   				margin: 20px;
    			font-size: 20px; /* 修改按钮文字的大小 */
    			color: white; /* 修改按钮上文字的颜色 */
    			border-radius: 25px; /* 将按钮的左右边框设置为圆弧 */
    			background-image: linear-gradient(to right, #00dbde 0%, #fc00ff 100%); /* 为按钮增加渐变颜色 */
			"
        	type="submit" 
        	id="login">login
        </button>       
        <a style="
        		padding:3px 30px; 
    			border: 0; /* 取消按钮的边界 */
    			width: 100px; /* 设置合适的按钮的长和宽 */
    			height: 30px;
   				margin-top: 64px; /* 设置合适的上部外框的宽度，增加与上面的password框的距离 */
   				margin: 5px;
    			font-size: 18px; /* 修改按钮文字的大小 */
    			color: white; /* 修改按钮上文字的颜色 */ 	
    			border-radius: 25px; /* 将按钮的左右边框设置为圆弧 */
    			background-image: linear-gradient(to right, #00dbde 0%, #fc00ff 100%); /* 为按钮增加渐变颜色 */		
			"
			href="/">  Back  </a>
    </div>

    <br>
    	<%=request.getAttribute("msg")==null?"":request.getAttribute("msg")%>
    <br>
</div>
<script type="text/javascript" src="../jquery-2.1.0.js" ></script>
<script>
    $('#login').on('click',function (e) {
        var userName=$.trim($('#userName').val());
        var password=$.trim($('#password').val());
        //$('body').append('wrong');
        $.ajax({
            type:"post",
            url:"",
            data:{
                userName:userName,
                password:password
            },
            dataType:'json',
            success:function (resp) {
                alert(resp.msg);
                if(resp.success){
                    location.href="<%=request.getAttribute("preurl")%>";
                    //$('body').append(JSON.stringify(resp.msg));
                }else{$('body').append('wrong');}

            }
        });


    })

</script>
</body>
</html>
