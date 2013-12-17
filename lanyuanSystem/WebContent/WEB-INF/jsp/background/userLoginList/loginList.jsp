<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@include file="../../common/taglib.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../common/common-css.jsp" %>
<%@include file="../../common/common-js.jsp" %>
<link rel="stylesheet" type="text/css"
	href="${pageContext.servletContext.contextPath }/css/fenyecss.css" />
<style type="text/css">
  input{font-size: 12px}
</style>
</head>
<body>
<form id="fenye" name="fenye" action="${pageContext.servletContext.contextPath }/background/userLoginList/query.html" method="post">
<table width="100%">
  <tr>
    <td height="30" background="${pageContext.servletContext.contextPath }/images/tab_05.gif"><table width="100%">
      <tr>
        <td width="12" height="30"><img src="${pageContext.servletContext.contextPath }/images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%">
          <tr>
            <td width="46%" valign="middle"><table width="100%">
              <tr>
                <td width="5%"><div align="center"><img src="${pageContext.servletContext.contextPath }/images/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：登陆信息管理-登陆信息列表</td>
              </tr>
            </table></td>
            <td width="54%">&nbsp;</td>
          </tr>
        </table></td>
        <td width="16">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table class="listtable" width="100%">
      <tr>
        <td width="8" background="${pageContext.servletContext.contextPath }/images/tab_12.gif">&nbsp;</td>
        <td><table class="ttab" width="100%" cellspacing="1" onMouseOver="changeto()"  onmouseout="changeback()">
          <tr>
 			<td width="5%" height="22" background="${pageContext.servletContext.contextPath }/images/bg.gif" ><span class="STYLE1">登陆ID</span></td>
            <td width="5%" height="22" background="${pageContext.servletContext.contextPath }/images/bg.gif" ><span class="STYLE1">用户ID</span></td>
            <td width="12%" height="22" background="${pageContext.servletContext.contextPath }/images/bg.gif" ><span class="STYLE1">用户名</span></td>
            <td width="12%" height="22" background="${pageContext.servletContext.contextPath }/images/bg.gif" ><span class="STYLE1">登陆时间</span></td>
            <td width="15%" height="22" background="${pageContext.servletContext.contextPath }/images/bg.gif"  class="STYLE1">登陆IP</td>
            </tr>
          
          <c:forEach var="loginList" items="${pageView.records}">
          <tr>
            <td height="20" ><span class="STYLE1">${loginList.loginId}</span></td>
            <td height="20" ><span class="STYLE1">${loginList.userId}</span></td>
            <td height="20" ><span class="STYLE1">${loginList.userName}</span></td>
            <td height="20" ><span class="STYLE1">
            <fmt:formatDate value="${loginList.loginTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
            </span></td>
			<td height="20" ><span class="STYLE1">${loginList.loginIp}</span></td>
			</tr>
          </c:forEach>
        </table></td>
        <td width="8" background="${pageContext.servletContext.contextPath }/images/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="35" background="${pageContext.servletContext.contextPath }/images/tab_19.gif"><%@include file="../../common/webfenye.jsp" %>    </td>
  </tr>
</table>
</form>
</body>
</html>