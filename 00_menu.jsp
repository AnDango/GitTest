<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<style type="text/css">
body  { background:#dedede; margin:0px; font:9pt 宋体; }
table  { border:0px; }
td  { font:normal 12px 宋体; }
img  { vertical-align:bottom; border:0px; }
a  { font:normal 12px 宋体; color:#000000; text-decoration:none; }
a:hover  { color:#39c152;text-decoration:underline; }
.sec_menu  { border-left:1px solid white; border-right:1px solid white; border-bottom:1px solid white; overflow:hidden; background:#D6DFF7; }
.menu_title  { }
.menu_title span  { position:relative; top:2px; left:8px; color:#5cd475; font-weight:bold; }
.menu_title2  { }
.menu_title2 span  { position:relative; top:2px; left:8px; color:#5cd475; font-weight:bold; }
</style>

<table cellspacing="0" cellpadding="0" width="158" align="center">

<tr>	
    <td class="menu_title" id="imgmenu5" onmouseover="this.className='menu_title2';" 
          onclick="showsubmenu(5)" onmouseout="this.className='menu_title';" 
          style="cursor:hand" background="images/menudown.gif" height="25"> 
      &nbsp;<span>图书分类</span></td>
  </tr>
	<tr>
		<td id="submenu5" style="DISPLAY: none" align="center">
		
		<div class="sec_menu" style="WIDTH: 158px">
		<div class="header">
		<div class="option">
<table cellpadding=0 cellspacing=0 align=center width=136> 
<tr>
  <td width="134" height=20><a class="all" href="01_index.jsp?click=all" target=mainFrame>
  <STRONG><font color="#000000">全部</font></STRONG></a></td>
</tr>
<tr>
  <td width="134" height=20><a class="001computer" href="01_index.jsp?click=001computer" target=mainFrame>
  <STRONG><font color="#025c1a">计算机类</font></STRONG></a></td>
</tr> 
<tr>
  <td width="134" height=20><a class="002english" href="01_index.jsp?click=002english" target=mainFrame>
  <STRONG><font color="#025c1a">英语类</font></STRONG></a></td>
</tr> 
<tr>
  <td width="134" height=20><a class="003literature" href="01_index.jsp?click=003literature" target=mainFrame>
  <STRONG><font color="#025c1a">文学类</font></STRONG></a></td>
</tr> 
<tr>
  <td width="134" height=20><a class="004novel" href="01_index.jsp?click=004novel" target=mainFrame>
  <STRONG><font color="#025c1a">小说类</font></STRONG></a></td>
</tr> 
<tr>
  <td width="134" height=20><a class="005comic" href="01_index.jsp?click=005comic" target=mainFrame>
  <STRONG><font color="#025c1a">漫画类</font></STRONG></a></td>
</tr>

</table>
          </div>
	      </div>
		  </div>
		</td>
	</tr>

	
	
<table cellspacing="0" cellpadding="0" width="158" align="center">
<tr>		
    <td id="imgmenu1" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(1)" onmouseout="this.className='menu_title';" style="cursor:hand" background=images/menudown.gif height="25"> 
      &nbsp;<span>用户功能</span></td>
  </tr>
	<tr>
		<td id="submenu1" style="DISPLAY: none">
		<div class="sec_menu" style="WIDTH: 158px">
			<table cellpadding=0 cellspacing=0 align=center width=135> 
<tr>
  <td height=20><a  href="03_shoppingcart.jsp" target="mainFrame">
  <STRONG><font color="#000000">我的购物车</font></STRONG></a></td>
</tr> 
 
<tr>
  <td height=20><a  href="09_messageboard.jsp" target="mainFrame">
  <STRONG><font color="#000000">留言板</font></STRONG></a></td>
</tr> 

</table>
		</div>
		<br>
		</td>
	</tr>
	
	
</table>
		 
<script language=javascript>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
imgmenu = eval("imgmenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
imgmenu.background="images/menuup.gif";
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
imgmenu.background="images/menudown.gif";
}
}

top.document.title="Copyright 19130124 吴明扬 2016.6"; 
</script>