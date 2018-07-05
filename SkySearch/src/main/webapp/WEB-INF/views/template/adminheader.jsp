<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Askbootstrap">
<meta name="author" content="Askbootstrap">
      
<title>Sky Search - 특가의 모든 것</title>
      
  <!-- Favicon Icon -->
  <!--<link rel="icon" type="image/png" href="images/favicon.png'/>">-->
 
 <!-- CSS --> 
  <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link type='text/css'  href="<c:url value='/resources/assets/css/normalize.css'/>"rel="stylesheet"/>
    <link type='text/css'  href="<c:url value='/resources/assets/css/bootstrap.min.css'/>"rel="stylesheet"/>
    <link type='text/css'  href="<c:url value='/resources/assets/css/font-awesome.min.css'/>"rel="stylesheet"/>
    <link type='text/css'  href="<c:url value='/resources/assets/css/themify-icons.css'/>"rel="stylesheet"/>
    <link type='text/css'  href="<c:url value='/resources/assets/css/flag-icon.min.css'/>"rel="stylesheet"/>
    <link  type='text/css'  href="<c:url value='/resources/assets/css/cs-skin-elastic.css'/>"rel="stylesheet"/>
    <!-- <link type='text/css' href="<c:url value='/resources/assets/css/bootstrap-select.less'/>"rel="stylesheet"/> -->
    <link  type='text/css'  href="<c:url value='/resources/assets/scss/style.css'/>"rel="stylesheet"/>
    <link  type='text/css' href="<c:url value='/resources/assets/css/lib/vector-map/jqvmap.min.css'/>"rel="stylesheet"/>
	 <link type='text/css' href="<c:url value='/resources/assets/css/lib/datatable/dataTables.bootstrap.min.css'/>"rel="stylesheet"/>
    <!-- <link type='text/css' href="<c:url value='/resources/assets/css/bootstrap-select.less'/>"rel="stylesheet"/> -->
    <link type='text/css' href="<c:url value='/resources/assets/scss/style.css'/>"rel="stylesheet"/>

	<!-- JavaScript -->
    <link type='text/css' href="<c:url value='/resources/assets/css/google_font.css'/>" rel="stylesheet"/>
      
    <!-- <script type="text/javascript" src="<c:url value='/resources/assets/js/html5shiv.min'/>"> </script> -->
    <script type="text/javascript" src="<c:url value='/resources/assets/js/vendor/jquery-2.1.4.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/assets/js//popper.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/assets/js/plugins.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/assets/js/main.js'/>"></script>


    <script type="text/javascript" src="<c:url value='/resources/assets/js/lib/chart-js/Chart.bundle.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/assets/js/dashboard.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/assets/js/widgets.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/assets/js/lib/vector-map/jquery.vmap.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/assets/js/lib/vector-map/jquery.vmap.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/assets/js/lib/vector-map/jquery.vmap.sampledata.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/assets/js/lib/vector-map/country/jquery.vmap.world.js'/>"></script>
    
    <!-- data-table -->
    <script type="text/javascript" src="<c:url value='/assets/js/lib/data-table/datatables.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/assets/js/lib/data-table/dataTables.bootstrap.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/assets/js/lib/data-table/dataTables.buttons.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/assets/js/lib/data-table/buttons.bootstrap.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/assets/js/lib/data-table/jszip.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/assets/js/lib/data-table/pdfmake.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/assets/js/lib/data-table/vfs_fonts.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/assets/js/lib/data-table/buttons.html5.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/assets/js/lib/data-table/buttons.print.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/assets/js/lib/data-table/buttons.colVis.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/assets/js/lib/data-table/datatables-init.js'/>"></script>
  
    <script>
        ( function ( $ ) {
            "use strict";

            jQuery( '#vmap' ).vectorMap( {
                map: 'world_en',
                backgroundColor: null,
                color: '#ffffff',
                hoverOpacity: 0.7,
                selectedColor: '#1de9b6',
                enableZoom: true,
                showTooltip: true,
                values: sample_data,
                scaleColors: [ '#1de9b6', '#03a9f5' ],
                normalizeFunction: 'polynomial'
            } );
        } )( jQuery );
    </script>
      

    <script type="text/javascript">
        $(document).ready(function() {
          $('#bootstrap-data-table-export').DataTable();
        } );
    </script>
      
      
      
      
 