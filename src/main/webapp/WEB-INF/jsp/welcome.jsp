<%@ page pageEncoding="UTF-8" %>
<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">

	<div class="panel panel-primary">
		<div class="panel-heading">Home Page</div>
		<div class="panel-body">
			ようこそ ${name}!! あなたのToDoを管理したければ <a href="/list-todos">ここをクリック</a>
		</div>
	</div>
</div>
<%@ include file="common/footer.jspf"%>