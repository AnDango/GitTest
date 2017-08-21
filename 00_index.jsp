<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>网站首页！</title>
</head>

<!-- 顶部导航+左侧菜单+主体  -->
<frameset rows="90,*" cols="*" frameborder="NO" border="0" framespacing="0">
  <frame src="00_top.jsp" name="topFrame" scrolling="NO" noresize>
  <frameset rows="*" cols="200,*" framespacing="0" frameborder="NO" border="0">
    <frame src="00_menu.jsp" name="leftFrame" scrolling="auto" resize>
    <frame src="01_index.jsp" name="mainFrame">
  </frameset>
</frameset>

<noframes>
<body>
</body>
</noframes>

</html>