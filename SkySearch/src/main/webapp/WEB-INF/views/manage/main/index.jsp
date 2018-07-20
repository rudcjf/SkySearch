<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Sufee Admin - HTML5 Admin Template</title>
<meta name="description" content="Sufee Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<script type="text/javascript"
	src="<c:url value='/resources/assets/js/lib/chart-js/Chart.bundle.js'/>"></script>
<script>
	
</script>
<body>
	<div class="breadcrumbs">
		<div class="col-sm-4">
			<div class="page-header float-left">
				<div class="page-title">
					<h1>Dashboard</h1>
				</div>
			</div>
		</div>
		<div class="col-sm-8">
			<div class="page-header float-right">
				<div class="page-title">
					<ol class="breadcrumb text-right">
						<li class="active">Dashboard</li>
					</ol>
				</div>
			</div>
		</div>
	</div>

	<div class="row"></div>

	<div class="col-xl-12">
		<div class="card">
			<div class="card-header">
				<strong class="card-title">여행정보</strong> <input type="submit"
					class="btn btn-primary" value=도시조회수 onClick=""
					style="float: right;">
				<button type="button" class="btn btn-secondary mb-1"
					data-toggle="modal" data-target="#mediumModal"
					style="float: right;">도시 별점</button>
			</div>
			<div class="card-body">
				<div class="row">
					<div class="col-sm-4">
						<h4 class="card-title mb-0">manageChart</h4>
						<div class="small text-muted">통계</div>
					</div>
					<!--/.col-->
					<div class="col-sm-8 hidden-sm-down">
						<div class="btn-toolbar float-right" role="toolbar"
							aria-label="Toolbar with button groups">
							<div class="btn-group mr-3" data-toggle="buttons"
								aria-label="First group">
								<label class="btn btn-outline-secondary"
									onclick="selecta('day')"> <input type="radio"
									name="options" id="option1"> Day
								</label> <label class="btn btn-outline-secondary active"
									onclick="selecta('month')"> <input type="radio"
									name="options" id="option2" checked> Month
								</label> <label class="btn btn-outline-secondary"
									onclick="selecta('year')"> <input type="radio"
									name="options" id="option3"> Year
								</label>
							</div>
						</div>
					</div>
					<!--/.col-->


				</div>
				<!--/.row-->
				<div class="col-sm-12">
					<div class="chart-wrapper mt-12">
						<canvas id="trafficChart" style="height: 200px; width: 400px"
							height="200" width="400"></canvas>
					</div>
				</div>

			</div>

		</div>
	</div>
		<div class="col-sm-12">
			<table class="table table-striped table-bordered table-hover"
				id="bootstrap-data-table">
				<thead>
					<tr>
						<th><input type="checkbox" id="selecctall" /></th>
						<th>EMAIL</th>
						<th>NAME</th>
						<th>PHONE</th>
						<th>ENABLE</th>
						<th>DISABLE</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${resultList}" var="resultData" varStatus="loop">
						<tr
							class="${(loop.index+1)%2 == 2 ? 'odd gradeX' : 'even gradeC'}">
							<td><input type="checkbox" class="checkbox"
								name="MEMBER_SEQ" value="${resultData.MEMBER_SEQ}" /></td>
							<td><a
								href="<c:url value="/manage/member/edit?EMAIL=${resultData.EMAIL}" />">${resultData.EMAIL}</a></td>
							<td>${resultData.NAME}</td>
							<td>${resultData.PHONE}</td>
							<td>${resultData.ENABLE}</td>
							<td><a
								href="<c:url value="/manage/member/disable?MEMBER_SEQ=${resultData.MEMBER_SEQ}" />">disable</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<input type="hidden" name="MEMBER_SEQ" value="dummy_id">
		</div>

	<!-- .content -->
	<!-- /#right-panel -->

	<!-- chart js set -->
	<script>
		var chartData = {};
		var labelSet = [ 0 ];
		var dataSet = [ 0 ];
		var totalmember = [ 0 ];
		var destoryCnt = false;
		var ctx;

		// const brandPrimary = '#20a8d8'
		const brandSuccess = '#4dbd74'
		const brandInfo = '#63c2de'
		const brandDanger = '#f86c6b'

		function convertHex(hex, opacity) {
			hex = hex.replace('#', '')
			const r = parseInt(hex.substring(0, 2), 16)
			const g = parseInt(hex.substring(2, 4), 16)
			const b = parseInt(hex.substring(4, 6), 16)

			const result = 'rgba(' + r + ',' + g + ',' + b + ',' + opacity
					/ 100 + ')'
			return result
		}

		function random(min, max) {
			return Math.floor(Math.random() * (max - min + 1) + min)
		}

		function respondCanvas(data) {
			ctx = new Chart(document.getElementById("trafficChart").getContext(
					"2d"), data);
		}
		$(document).ready(function() {
			GetChartData("<c:url value='/ws/memberChartM' />");
		});

		function addData(ctx, data, datasetIndex, labelSet) {
			ctx.data.datasets[datasetIndex].data = data.data.datasets[datasetIndex].data;
			ctx.data.datasets[datasetIndex + 1].data = data.data.datasets[datasetIndex + 1].data;
			ctx.data.labels = labelSet;
			ctx.update();
		}
		function selecta(period) {
			if (period == 'day') {
				GetChartData("<c:url value='/ws/memberChartD' />");
			} else if (period == 'month') {
				GetChartData("<c:url value='/ws/memberChartM' />");
			} else if (period == 'year') {
				GetChartData("<c:url value='/ws/memberChartY' />");
			}
		}

		var GetChartData = function(url, params) {
			$.ajax({
				url : url,
				type : 'POST',
				data : params,
				success : function(data) {
					labelSet = [ 0 ];
					dataSet = [ 0 ];
					totalmember = [ 0 ];
					if ("${resultMap}" != "") {//index 첫화면 멤버
						$.each(data, function(i, item) {
							if (item.ym != undefined) {
								labelSet.push(item.ym);
								dataSet.push(item.counts);
							} else {
								totalmember.push(item.countT);
							}
						});
					}
					for (var i = 0; i < labelSet.length; i++) {
						totalmember.push(totalmember[1]);
					}

					chartData = {
						type : 'line',
						data : {
							labels : labelSet,
							datasets : [ {
								label : '가입자수',
								backgroundColor : convertHex(brandInfo, 10),
								borderColor : brandInfo,
								pointHoverBackgroundColor : '#fff',
								borderWidth : 2,
								data : dataSet
							}, {
								label : 'totalmember',
								backgroundColor : 'transparent',
								borderColor : brandDanger,
								pointHoverBackgroundColor : '#fff',
								borderWidth : 1,
								borderDash : [ 8, 5 ],
								data : totalmember
							} ]
						},
						options : {
							//   maintainAspectRatio: true,
							//   legend: {
							//     display: false
							// },
							// scales: {
							//     xAxes: [{
							//       display: false,
							//       categoryPercentage: 1,
							//       barPercentage: 0.5
							//     }],
							//     yAxes: [ {
							//         display: false
							//     } ]
							// }

							maintainAspectRatio : true,
							legend : {
								display : false
							},
							responsive : true,
							scales : {
								xAxes : [ {
									gridLines : {
										drawOnChartArea : false
									}
								} ],
								yAxes : [ {
									ticks : {
										beginAtZero : true,
										maxTicksLimit : 5,
										stepSize : Math.ceil(250 / 5),
										max : totalmember[1] + 40
									},
									gridLines : {
										display : true
									}
								} ]
							},
							elements : {
								point : {
									radius : 0,
									hitRadius : 5,
									hoverRadius : 4,
									hoverBorderWidth : 3
								}
							}

						}
					};
					if (!destoryCnt) {
						respondCanvas(chartData);
						destoryCnt = true;
					} else if (destoryCnt) {
						addData(ctx, chartData, 0, labelSet);
					}
				},
				error : function(xhr, status, exception) {
					alert("Failure \n (" + status + ")");
					return false;
				}
			});
		};
	</script>
</body>
</html>
