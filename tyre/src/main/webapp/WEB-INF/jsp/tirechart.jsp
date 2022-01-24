<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="common_header.jsp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">

		<div class="row">
		<div class="col-sm-12">
			<div class="jumbotron bg-dark text-white">
				<h1 class="display-4 text-center">Készleten lévő márkák</h1>
				<a class="btn btn-warning float-left" href="javascript:history.go(-1)">
				<i class="fas fa-arrow-left"></i> Vissza</a>
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
						<th>Márka</th>
						<th>Készlet</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="tire" items="${tires}">
						<tr>
							<td>${tire.marka}</td>
							<td>${tire.keszlet}</td> 
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
       
<%@include file="common_footer.jsp" %>	