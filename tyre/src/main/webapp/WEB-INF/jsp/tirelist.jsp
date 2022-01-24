<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="common_header.jsp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">

	<div class="row">
		<div class="col-sm-12">
			<div class="jumbotron bg-dark text-white">
						<h1 class="display-4 text-center"> Gumiabroncs Raktárkezelő</h1>
					<div class="d-flex bg-dark text-white p-2 float-left">
 						<a class="btn btn-danger btn-smb" href="<c:url value="/login" />">Kijelentkezés
 						<i class="fa fa-sign-out" aria-hidden="true"></i></a>
					</div>
						<div class="d-flex bg-dark text-white p-2 float-left">
							<div class="col-sm">
								<a class="btn btn-info btn-sm p-2" href="nyari">Nyári</a>
							</div>
							<div class="col-sm">
								<a class="btn btn-info btn-sm p-2" href="teli">Téli</a>
							</div>
							<div class="col-sm">
								<a class="btn btn-info btn-sm p-2" href="negyevszakos">Négyévszakos</a>
							</div>
							<div class="col-sm">
								<a class="btn btn-info btn-sm p-2" href="chart">Statisztika</a>
							</div>
						</div>
			 		<div>
						<a class="btn btn-primary btn-sm float-right" href="new">Új abroncs
						<i class="far fa-plus-square"></i></a>
					</div>
					<ul class="nav navbar-nav">
					<li><a href="/register" class="btn btn-light btn-sm float-right text-dark">Új felhasználó hozzáadása</a></li>
					<li><a href="/show-users" class="btn btn-light btn-sm float-right text-dark">Összes felhasználó</a></li>
				</ul>
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
							<td>
								<a class="btn btn-warning" href="edit/${tire.id}">
									Módosít <i class="far fa-edit"></i> 
								</a>
							</td> 
							<td>
								<a class="btn btn-danger" href="delete/${tire.id}">
									Töröl <i class="fas fa-trash"></i> 
								</a>
							</td> 		
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	
<%@include file="common_footer.jsp" %>	