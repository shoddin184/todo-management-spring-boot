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
						<th width="10%"></th>
						<th width="30%">Description</th>
						<th width="30%">Target Date</th>
						<th width="20%"></th>
						<th width="10%">完了</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${todos}" var="todo">
						<c:choose>
						<c:when test="${not todo.done}">
							<tr>
									<td><input type="radio" onclick="location.href='/done-todo?id=${todo.id}'"></td>
									<td>${todo.description}</td>
									<td><fmt:formatDate value="${todo.targetDate}"
											pattern="dd/MM/yyyy" /></td>
									<td><a type="button" class="btn btn-success"
										href="/update-todo?id=${todo.id}">編集</a>
									<a type="button" class="btn btn-warning"
										href="/delete-todo?id=${todo.id}">消去</a></td>
									<td>未</td>
							</tr>
						</c:when>
						<c:otherwise>
							<tr>
								<td></td><td></td><td></td><td></td>
							</tr>
						</c:otherwise>
						</c:choose>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
						<th width="10%"></th>
						<th width="30%">Description</th>
						<th width="30%">Target Date</th>
						<th width="20%"></th>
						<th width="10%">完了</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${todos}" var="todo">
						<c:choose>
						<c:when test="${todo.done}">
							<tr>
									<td><input type="radio" onclick="location.href='/undone-todo?id=${todo.id}'"></td>
									<td>${todo.description}</td>
									<td><fmt:formatDate value="${todo.targetDate}"
											pattern="dd/MM/yyyy" /></td>
									<td><a type="button" class="btn btn-success"
										href="/update-todo?id=${todo.id}">編集</a>
									<a type="button" class="btn btn-warning"
										href="/delete-todo?id=${todo.id}">消去</a></td>
									<td>済</td>
							</tr>
						</c:when>
						<c:otherwise>
							<tr>
								<td></td><td></td><td></td><td></td>
							</tr>
						</c:otherwise>
						</c:choose>
					</c:forEach>
				</tbody>
			</table>
		</div>
<%@ include file="common/footer.jspf"%>