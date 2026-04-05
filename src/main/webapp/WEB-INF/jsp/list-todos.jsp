<%@ page pageEncoding="UTF-8" %>
<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<div>
		<a type="button" class="btn btn-primary btn-md" href="/add-todo">Add Todo</a>
	</div>
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3>List of TODO's</h3>
		</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
						<th width="40%">Description</th>
						<th width="30%">Target Date</th>
						<th width="20%"></th>
						<th width="10%">完了</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${todos}" var="todo">
						<tr>
							<td>${todo.description}</td>
							<td><fmt:formatDate value="${todo.targetDate}"
									pattern="dd/MM/yyyy" /></td>
							<td><a type="button" class="btn btn-success"
								href="/update-todo?id=${todo.id}">編集</a>
							<a type="button" class="btn btn-warning"
								href="/delete-todo?id=${todo.id}">消去</a></td>
							<td><c:choose>
								<c:when test="${todo.done}">済</c:when>
								<c:otherwise>未</c:otherwise>
								</c:choose></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</div>
<%@ include file="common/footer.jspf"%>