<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="common_header.jsp" %>

<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
	<div role="navigation">
		<div class="text-center">
			<h1 class="display-4 text-center"> Gumiabroncs Raktárkezelő</h1>
		</div>
	</div>
	
	<c:choose>
		<c:when test="${mode=='MODE_HOME' }">
			<div class="jumbotron text-center">
					<h3 class="form-signin-heading"></h3>
						<a class="btn btn-info btn-sm p-2 text-center"  href="/login">Indítás</a>
				</div>
		</c:when>

		<c:when test="${mode=='MODE_REGISTER' }">
			<div class="container text-center">
				<h3>Új Felhasználó</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-user">
					<input type="hidden" name="id" value="${user.id }" />
					<div class="form-group">
						<label class="control-label">Felhasználónév</label>
						<div class="text-center">
							<input type="text" class="text-center"name="username"
								value="${user.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label">Keresztnév</label>
						<div class="text-center">
							<input type="text" class="text-center" name="firstname"
								value="${user.firstname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label">Vezetéknév</label>
						<div class="text-center">
							<input type="text" class="text-center"name="lastname"
								value="${user.lastname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label ">Azonosító </label>
						<div class=" text-center">
							<input type="text" class="text-center"name="age"
								value="${user.age }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label ">Jelszó</label>
						<div class=" text-center">
							<input type="password" class="text-center" name="password"
								value="${user.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary text-center" value="Register" />
					</div>
				</form>
			</div>
			<div class="d-flex justify-content-between bg-dark text-white p-2">
				<a class="btn btn-warning" href="javascript:history.go(-1)">
					<i class="fas fa-arrow-left"></i> Vissza
				</a>
			</div>
		</c:when>
		<c:when test="${mode=='ALL_USERS' }">
			<div class="container text-center" id="tasksDiv">
				<h3>Összes Felhasználó</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Felhasználónév</th>
								<th>Keresztnév</th>
								<th>Vezetéknév</th>
								<th>Azonosító</th>
								<th>Törlés</th>
								<th>Módosítás</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${users }">
								<tr>
									<td>${user.id}</td>
									<td>${user.username}</td>
									<td>${user.firstname}</td>
									<td>${user.lastname}</td>
									<td>${user.age}</td>
									<td><a href="/delete-user?id=${user.id }"><span
											class="far fa-plus-square"></span></a></td>
									<td><a href="/edit-user?id=${user.id }"><span
											class="far fa-plus-square"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div class="d-flex justify-content-between bg-dark text-white p-2">
				<a class="btn btn-warning" href="javascript:history.go(-1)">
					<i class="fas fa-arrow-left"></i> Vissza
				</a>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_UPDATE' }">
			<div class="container text-center">
				<h3>Felhasználó Frissítése</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-user">
					<input type="hidden" name="id" value="${user.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Felhasználónév</label>
						<div class="text-center">
							<input type="text" class="form-control" name="username"
								value="${user.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Keresztnév</label>
						<div class="text-center">
							<input type="text" class="form-control" name="firstname"
								value="${user.firstname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Vezetéknév</label>
						<div class="text-center">
							<input type="text" class="form-control" name="lastname"
								value="${user.lastname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Azonosító </label>
						<div class="text-center">
							<input type="text" class="form-control" name="age"
								value="${user.age }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Jelszó</label>
						<div class="text-center">
							<input type="password" class="form-control" name="password"
								value="${user.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Update" />
					</div>
				</form>
			</div>
			<div class="d-flex justify-content-between bg-dark text-white p-2">
				<a class="btn btn-warning" href="javascript:history.go(-1)">
					<i class="fas fa-arrow-left"></i> Vissza
				</a>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_LOGIN' }">
			<div class="container text-center">
				<h3>Bejelentkezés</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="/login-user">
					<c:if test="${not empty error }">
						<div class= "alert alert-danger">
							<c:out value="${error }"></c:out>
							</div>
					</c:if>
					<div class="form-group">
						<label class="control-label col-md-3">Felhasználónév</label>
						<div class="text-center">
							<input type="text" class="text-center" name="username"
								value="${user.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Jelszó</label>
						<div class="text-center">
							<input type="password" class="text-center" name="password"
								value="${user.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary text-center" value="Login" />
					</div>
					</form>
					</div>
					</c:when>
	</c:choose>
</body>
</html>

<%@include file="common_footer.jsp" %>	