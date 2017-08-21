<!-- 用户登录 -->
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<html>
<head>
<title>用户登录</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/common.css" rel="stylesheet" type="text/css">
<style type="text/css">
.STYLE1 {
	font-family: "宋体";
	font-size: medium;
}
</style>
</head>

<body> 
<table align="center" height="22" width="1039">
<tr>
<td width="1031" height="30"  align="center" valign="top" background="images/top2.GIF"></td>
</tr>
</table>

<p>&nbsp;</p>

<table align="center" width="300" border="0" cellpadding="0" cellspacing="0">
  <tr><td width="12"><img src="images/top1.gif" border="0"></td>
  <td background="images/top2.GIF" width="100%" align="center"></td>
  <td width="65"><img src="images/top3.gif" border="0" align="middle"></td></tr>
</table>
 
<form name="userlogin" method="post" action="08_userlogincase.jsp" >
    <table align="center" width="300" border="0" align="center" cellpadding="0" cellspacing="0" class=table-zuoyou>
	<tr> 
        <td align="center" background="images/titlebg.gif" height="28" colspan="2"><b>用&nbsp;户&nbsp;登&nbsp;录</b></td>
    </tr>
  
    <tr> 
        <td width="250" class=table-youxia  height="30">&nbsp;&nbsp;用户名：</td>
        <td width="750" class=table-xia><input name="username" type="text" id="username"></td>
    </tr>

    <tr> 
        <td width="250" class=table-youxia  height="30">&nbsp;&nbsp;密　码：</td>
        <td width="750" class=table-xia><input name="password" type="password" id="password"></td>
    </tr>

    <tr bgcolor="#FFFFFF"> 
        <td colspan="2" align="center">
        <input  onClick="return check();" type="submit" name="Submit" value="登 录"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input  type="reset" name="Submit2" value="重 置" ></td>
    </tr>     
</table>
</form>  
 
<table align="center" width="300" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td width="12"><img src="images/end1.gif" border="0"/></td>
        <td background="images/end2.gif" width="98%"/></td>
        <td width="65"><img src="images/end3.gif" border="0"/></td>
    </tr>
</table>
  
<p>&nbsp;</p>

<table align="center" height="22" width="1034">
<tr>
    <td width="1024" height="30" align="center" valign="top" background="images/top2.GIF">&nbsp;</td>
</tr> 
</table>
<br>


</body>
</html>
<script language=javascript>
function checkspace(checkstr) {
  var str = '';
  for(i = 0; i < checkstr.length; i++) {
    str = str + ' ';
  }
  return (str == checkstr);
}
function check()
{
  if(checkspace(document.userinfo.userEmail.value)) {
	document.userinfo.userEmail.focus();
    alert("用户名不能为空！");
	return false;
  }
  if(checkspace(document.userinfo.userPassword.value)) {
	document.userinfo.userPassword.focus();
    alert("密码不能为空！");
	return false;
  }
	document.userinfo.submit();
  }
</script> 

