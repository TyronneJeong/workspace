<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html ng-app="userMgnt">
<head>
	<meta charset="UTF-8">
	<title>사용자 관리 DEMO APP</title>
	<link rel="stylesheet" href="js/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/app.css">
	<link rel="stylesheet" href="css/animation.css">
	<script type="text/javascript" src="js/angular/angular.js"></script>
	<script type="text/javascript" src="js/angular/angular-animate.js"></script>
	<script type="text/javascript" src="js/angular/angular-cookies.js"></script>
	<script type="text/javascript" src="js/ui-bootstrap/ui-bootstrap-0.8.0.js"></script>
	<script type="text/javascript" src="js/ui-bootstrap/ui-bootstrap-tpls-0.8.0.js"></script>
	<script type="text/javascript" src="app.js"></script>
</head>
<body ng-controller="mainCtrl">
	<div class="searchBox">
		<div class="row-fluid borBox">
			<div class='span12'>
				<div class='form-horizontal centerOnPage' style="margin-left: -203px;">
					<ul class="input-append">
						<input type="text" placeholder="이름" size="16">
						<button class="btn btn-info box" type="button">
							<i class='icon-white icon-search'></i>
						</button>
					</ul>
					<button class="btn btn-info box" type="button" ng-click="insert()">
						<i class='icon-white icon-plus'></i>
					</button>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
<table class="table table-striped table-hover">
	<thead>
		<tr>
			<th>#</th>
			<th>이름</th>
			<th>E-Mail</th>
			<th>가입 날짜</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
	</thead>
	<tbody>
		<tr class="ani-repeat" ng-repeat="user in userList">
			<td>{{$index + 1}}</td>
			<td><input type="text" ng-model="user.name" ng-disabled="!user.edit"></td>
			<td><input type="email" ng-model="user.email" ng-disabled="!user.edit"></td>
			<td><input type="date" ng-model="user.regDate" ng-disabled="!user.edit"></td>
							<td class="center btn-container">
								<button class="btn btn-danger ani-button" class="" ng-show="!user.edit" ng-click="edit(user)">
									<i class='icon-white icon-pencil'></i>
								</button>
								<button class="btn btn-info ani-button" ng-show="user.edit" type="button" ng-click="complete(user)">
									<i class='icon-white icon-ok'></i>
								</button>
							</td>
							<td class="center">
								<button class="btn btn-danger" type="button" ng-click="del($index)">
									<i class='icon-white icon-trash'></i>
								</button>
							</td>
						</tr>
						<tr ng-show="!userList.length">
							<td colspan="6" style="text-align :center">
								<span class="text-warning">데이터가 없습니다.</span>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row-fluid">
			<pagination class="text-center" total-items="totalItems" page="currentPage" items-per-page="3"></pagination>
		</div>
	</div>
	
	
	<a href="login.do">login</a>
</body>
</html>