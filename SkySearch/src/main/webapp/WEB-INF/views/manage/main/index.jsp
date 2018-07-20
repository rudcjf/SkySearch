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
        
           <div class="row">
           </div>

            <div class="col-xl-12">
                <div class="card">
                <div class="card-header">
							<strong class="card-title">여행정보</strong> <input type="submit"
								class="btn btn-primary" value=도시조회수
								onclick="selecta('view')"
								style="float: right;">
							<button type="button" class="btn btn-secondary mb-1"
								data-toggle="modal" data-target="#mediumModal" onclick="selecta('star')"
								style="float: right;">도시 별점</button>
						</div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-4">
                                <h4 class="card-title mb-0">manageChart	</h4>
                                <div class="small text-muted">통계</div>
                            </div>
                            <!--/.col-->
                            <div class="col-sm-8 hidden-sm-down">
                                <div class="btn-toolbar float-right" role="toolbar" aria-label="Toolbar with button groups">
                                    <div class="btn-group mr-3" data-toggle="buttons" aria-label="First group">
                                        <label class="btn btn-outline-secondary"  onclick="selecta('day')">
                                            <input type="radio" name="options" id="option1"> Day
                                        </label>
                                        <label class="btn btn-outline-secondary active" onclick="selecta('month')">
                                            <input type="radio" name="options" id="option2" checked > Month
                                        </label>
                                        <label class="btn btn-outline-secondary" onclick="selecta('year')">
                                            <input type="radio" name="options" id="option3" > Year
                                        </label>
                                    </div>
                                </div>
                            </div><!--/.col-->


                        </div><!--/.row-->
                        <div class="col-sm-12" >
                        <div class="chart-wrapper mt-12" >
                            <canvas id="trafficChart" style="height:200px; width:400px" height="200" width="400"></canvas>
                        </div>
                        </div>

                    </div>
                    
                </div>
            </div>


        </div> <!-- .content -->
    </div><!-- /#right-panel -->
    
    <!-- chart js set -->
    <script>
    var chartData = {};
    var labelSet =[0];
    var dataSet = [0];
    var totalmember =[0];
    var destoryCnt = false;
    var ctx;
    var max=0;
    
 // const brandPrimary = '#20a8d8'
    const brandSuccess = '#4dbd74'
    const brandInfo = '#63c2de'
    const brandDanger = '#f86c6b'

    function convertHex (hex, opacity) {
      hex = hex.replace('#', '')
      const r = parseInt(hex.substring(0, 2), 16)
      const g = parseInt(hex.substring(2, 4), 16)
      const b = parseInt(hex.substring(4, 6), 16)

      const result = 'rgba(' + r + ',' + g + ',' + b + ',' + opacity / 100 + ')'
      return result
    }

    function random (min, max) {
      return Math.floor(Math.random() * (max - min + 1) + min)
    }
    
    function respondCanvas(data) {
    	ctx = new Chart(document.getElementById("trafficChart").getContext("2d"),data);
    }
    $(document).ready(function() {
        GetChartData("<c:url value='/ws/memberChartM' />");
    });
    
    function addData(ctx, data, datasetIndex, labelSet) {
    	if(datasetIndex !=5){
    	   ctx.data.datasets[datasetIndex].data = data.data.datasets[datasetIndex].data;
    	   ctx.data.datasets[datasetIndex+1].data = data.data.datasets[datasetIndex+1].data;
    	   ctx.options.scales.yAxes[0].ticks.max=totalmember[1]+40;
    	}else{
    		ctx.data.datasets[0].data = data.data.datasets[0].data;
    		ctx.data.datasets[1].data = null;
    		ctx.options.scales.yAxes[0].ticks.max = max+5;
    	}
    	   ctx.data.labels = labelSet;
    	   ctx.update();
    	}
    function selecta(period){
    	if(period=='day'){
    		 GetChartData("<c:url value='/ws/memberChartD' />");
    	}else if(period=='month'){
    		 GetChartData("<c:url value='/ws/memberChartM' />");
    	}else if(period=='year'){
    		 GetChartData("<c:url value='/ws/memberChartY' />");
    	}else if(period=='view'){
    		GetCiChartData("<c:url value='/ws/memberChartV' />");
    	}else if(period=='star'){
    		GetCiChartData("<c:url value='/ws/memberChartS' />");
    	}
    }
    
    var GetCiChartData = function (url,params) {
        $.ajax({
            url : url,
            type: 'POST',
            data : params,
            success: function(data) {
            	 labelSet =[];
            	 dataSet = [];
            	 totalmember =[0];
	           	 if ("${resultMap}" != "") {//index 첫화면 멤버
	                    $.each(
	                       data,
	                       function(i, item) {
	                     	   labelSet.push(item.CITY_NAME);
	                           dataSet.push(item.CITY_VIEWS);
	                       });
	                 }
	           	 max= 0;
	           	 for(var i = 0; i < dataSet.length; i++){
	           		 if(dataSet[i]>max)max=dataSet[i]; 
	           	 }
	           	chartData = {
            	        type: 'bar',
            	        data: {
            	            labels: labelSet,
            	            datasets: [
            	            {
            	              label: '',
            	              backgroundColor: convertHex(brandInfo, 10),
            	              borderColor: brandInfo,
            	              pointHoverBackgroundColor: '#fff',
            	              borderWidth: 2,
            	              data: dataSet	
            	          }
            	          ]
            	        },
            	        options: {
            	           /*  maintainAspectRatio: true,
            	            legend: {
            	                display: false
            	            }, */
            	            responsive: true,
            	            scales: {
            	                xAxes: [{
            	                  gridLines: {
            	                    drawOnChartArea: false
            	                  }
            	                }],
            	                yAxes: [ {
            	                      ticks: {
            	                        beginAtZero: true,
            	                        maxTicksLimit: 5,
            	                        stepSize: Math.ceil(250 / 5),
            	                        max: max+5
            	                      },
            	                      gridLines: {
            	                        display: true
            	                      }
            	                } ]
            	            } /*  ,
            	            elements: {
            	                point: {
            	                  radius: 0,
            	                  hitRadius: 5,
            	                  hoverRadius: 4,
            	                  hoverBorderWidth: 3
            	              }
            	          }   */


            	        }
            	    };
            	addData(ctx, chartData, 5, labelSet);
            	
            },
             error : function(xhr, status, exception) {
                alert("Failure \n (" + status + ")");
                return false;
             }
        });
    };
    
    
    var GetChartData = function (url,params) {
        $.ajax({
            url : url,
            type: 'POST',
            data : params,
            success: function(data) {
            	 labelSet =[0];
            	 dataSet = [0];
            	 totalmember =[0];
	           	 if ("${resultMap}" != "") {//index 첫화면 멤버
	                    $.each(
	                       data,
	                       function(i, item) {
	                    	   if(item.ym != undefined){
	                     	   labelSet.push(item.ym);
	                           dataSet.push(item.counts);
	                    	   }else{
	                    		   totalmember.push(item.countT);
	                    	   }
	                       });
	                 }
	           	 for(var i = 0; i< labelSet.length; i++){
	           		totalmember.push(totalmember[1]);
	           	 }
	           	 
	           	chartData = {
            	        type: 'line',
            	        data: {
            	            labels: labelSet,
            	            datasets: [
            	            {
            	              label: '가입자수',
            	              backgroundColor: convertHex(brandInfo, 10),
            	              borderColor: brandInfo,
            	              pointHoverBackgroundColor: '#fff',
            	              borderWidth: 2,
            	              data: dataSet	
            	          },
            	          {
            	              label: 'totalmember',
            	              backgroundColor: 'transparent',
            	              borderColor: brandDanger,
            	              pointHoverBackgroundColor: '#fff',
            	              borderWidth: 1,
            	              borderDash: [8, 5],
            	              data: totalmember 
            	          } 
            	          ]
            	        },
            	        options: {
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


            	            maintainAspectRatio: true,
            	            legend: {
            	                display: false
            	            },
            	            responsive: true,
            	            scales: {
            	                xAxes: [{
            	                  gridLines: {
            	                    drawOnChartArea: false
            	                  }
            	                }],
            	                yAxes: [ {
            	                      ticks: {
            	                        beginAtZero: true,
            	                        maxTicksLimit: 5,
            	                        stepSize: Math.ceil(250 / 5),
            	                        max: totalmember[1]+40
            	                      },
            	                      gridLines: {
            	                        display: true
            	                      }
            	                } ]
            	            } /* ,
            	            elements: {
            	                point: {
            	                  radius: 0,
            	                  hitRadius: 5,
            	                  hoverRadius: 4,
            	                  hoverBorderWidth: 3
            	              }
            	          }  */


            	        }
            	    };
            	if(!destoryCnt){
	               respondCanvas(chartData);
	               destoryCnt=true;
            	}else if(destoryCnt){
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
