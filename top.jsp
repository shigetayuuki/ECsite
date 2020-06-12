<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="kagoyume.JesHelper"
    %>
    <%HttpSession ls =request.getSession();
    JesHelper jh=new JesHelper();
    String url=request.getServletPath().toString();
    ls.setAttribute("url", url);
    int ac=(int) (Math.random() * 1000);
    session.setAttribute("ac", ac);
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TOPページ</title>
<link href="stylesheet.css" rel="stylesheet">
</head>
<body>
	<header>
		<h2>カゴ夢</h2>
		<div class="headerList">
			<a href="top.jsp">TOP</a>
			<%=jh.logBtn(ls) %>
		</div>
	</header>
	<div class="main">
	<h3>好きな商品をいくらでも購入した気分になれる夢のサイト！</h3>
	<h4>検索フォーム</h4>
	<form action="Search" method="GET">
		商品名：<input type="text" name="searchWord">
		<input type="hidden" name="ac" value="<%= ac%>">
		<input type="submit" value="検索">
	</form>
	</div>

</body>
</html>
