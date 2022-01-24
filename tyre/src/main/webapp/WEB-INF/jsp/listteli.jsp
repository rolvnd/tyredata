<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="common_header.jsp" %>

	<div class="row">
		<div class="col-sm-12">
			<div class="jumbotron bg-dark text-white">
				<h1 class="display-4 text-center"> Téli Gumiabroncsok</h1>
				<a class="btn btn-primary btn-sm float-right" href="new">Új abroncs
				<i class="far fa-plus-square"></i></a>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Id</th>
						<th>Évszak</th>
						<th>Méret</th>
						<th>Márka</th>
						<th>Típus</th>
						<th>Készlet</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="tire" items="${tires}">
						<tr>
							<td>${tire.id}</td> 
							<td>${tire.tireCategory.evszak}</td> 
							<td>${tire.meret}</td> 
							<td>${tire.marka}</td>
							<td>${tire.tipus}</td>
							<td>${tire.keszlet}</td>  		
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
<%@include file="common_footer.jsp" %>	