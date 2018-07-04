
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>



      <!-- Main Slider With Form -->
      <section class="osahan-slider">
         <div id="osahanslider" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
               <li data-target="#osahanslider" data-slide-to="0" class="active"></li>
               <li data-target="#osahanslider" data-slide-to="1"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
               <div class="carousel-item active" style="background-image: url('<c:url value='/resources/img/slider/1.jpg'/>')">
                  <div class="overlay"></div>
               </div>
               <div class="carousel-item" style="background-image: url('<c:url value='/resources/img/slider/2.jpg'/>')">
                  <div class="overlay"></div>
               </div>
            </div>
            <a class="carousel-control-prev" href="#osahanslider" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#osahanslider" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
            </a>
         </div>
         <div class="slider-form inner-page-form">
            <div class="container">
               <h1 class="text-center text-white mb-5">Find Your Favorite Property</h1>
               <form>
                  <div class="row no-gutters">
                     <div class="col-lg-3 col-md-4 col-sm-6 col-6">
                        <div class="input-group">
                           <div class="input-group-addon"><i class="mdi mdi-map-marker-multiple"></i></div>
                           <select class="form-control select2" name="location">
                              <option disabled="" selected="">Any Location</option>
                              <option>Australia</option>
                              <option>Brazil</option>
                              <option>Cambodia</option>
                              <option>Dominica</option>
                              <option>France</option>
                              <option>Guyana</option>
                              <option>Hong Kong</option>
                              <option>Ireland</option>
                              <option>Japan</option>
                              <option>Malaysia</option>
                              <option>Nepal</option>
                              <option>Oman</option>
                              <option>Peru</option>
                           </select>
                        </div>
                     </div>
                     <div class="col-lg-3 col-md-4 col-sm-6 col-6">
                        <div class="input-group">
                           <div class="input-group-addon"><i class="mdi mdi-city"></i></div>
                           <select class="form-control select2" name="location">
                              <option disabled="" selected="">Any Status</option>
                              <option>Heigh </option>
                              <option>Midium</option>
                              <option>Normal</option>
                           </select>
                        </div>
                     </div>
                     <div class="col-lg-3 col-md-4 col-sm-6 col-6">
                        <div class="input-group">
                           <div class="input-group-addon"><i class="mdi mdi-home-modern"></i></div>
                           <select class="form-control select2" name="location">
                              <option disabled="" selected="">Any Type</option>
                              <option>Property Types</option>
                              <option value="">House/Villa</option>
                              <option value="">Flat</option>
                              <option value="">Plot/Land</option>
                              <option value="">Office Space</option>
                              <option value="">Shop/Showroom</option>
                              <option value="">Commercial Land</option>
                              <option value="">Warehouse/ Godown</option>
                              <option value="">Industrial Building</option>
                           </select>
                        </div>
                     </div>
                     <div class="col-lg-3 col-md-4 col-sm-6 col-6">
                        <div class="input-group">
                           <div class="input-group-addon"><i class="mdi mdi-hotel"></i></div>
                           <select class="form-control select2" name="location">
                              <option disabled="" selected="">Min. Bedrooms</option>
                              <option>1</option>
                              <option>2</option>
                              <option>3</option>
                              <option>4</option>
                              <option>5</option>
                              <option>6</option>
                              <option>7</option>
                              <option>8</option>
                              <option>9</option>
                              <option>10</option>
                           </select>
                        </div>
                     </div>
                     <div class="col-lg-3 col-md-4 col-sm-6 col-6">
                        <div class="input-group">
                           <div class="input-group-addon"><i class="mdi mdi-magnify-minus-outline"></i></div>
                           <select class="form-control select2" name="location">
                              <option disabled="" selected="">Min Size</option>
                              <option>100</option>
                              <option>200</option>
                              <option>300</option>
                              <option>400</option>
                              <option>500</option>
                              <option>600</option>
                              <option>700</option>
                              <option>800</option>
                              <option>900</option>
                              <option>1000</option>
                           </select>
                        </div>
                     </div>
                     <div class="col-lg-3 col-md-4 col-sm-6 col-6">
                        <div class="input-group">
                           <div class="input-group-addon"><i class="mdi mdi-magnify-plus-outline"></i></div>
                           <select class="form-control select2" name="location">
                              <option disabled="" selected="">Max Size</option>
                              <option>1000</option>
                              <option>2000</option>
                              <option>3000</option>
                              <option>4000</option>
                              <option>5000</option>
                              <option>6000</option>
                              <option>7000</option>
                              <option>8000</option>
                              <option>9000</option>
                              <option>10000</option>
                           </select>
                        </div>
                     </div>
                     <div class="col-lg-3 col-md-4 col-sm-6 col-6">
                        <div class="input-group">
                           <div class="input-group-addon"><i class="mdi mdi-hot-tub"></i></div>
                           <select class="form-control select2" name="location">
                              <option disabled="" selected="">Baths</option>
                              <option>1</option>
                              <option>2</option>
                              <option>3</option>
                              <option>4</option>
                              <option>5</option>
                              <option>6</option>
                              <option>7</option>
                              <option>8</option>
                              <option>9</option>
                              <option>10</option>
                           </select>
                        </div>
                     </div>
                     <div class="col-lg-3 col-md-4 col-sm-6 col-6">
                        <div class="input-group"><button type="submit" class="btn btn-success btn-block no-radius font-weight-bold">SEARCH</button>   </div>
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </section>
      <!-- End Main Slider With Form -->
      
      <!-- Add Product List -->
      <section class="section-padding">
         <div class="container">
            <div class="row" >
             
              <div class="col-lg-12 col-md-12">
                  <div class="osahan_top_filter row">
                     <div class="col-lg-11 col-md-11 tags-action">
                        <h4> 이 특가 추천 </h4>
                        <!-- <span>Plot/Land <a href="#"><i class="mdi mdi-window-close"></i></a></span> --> 
                    </div>
                     <div class="col-lg-1 col-md-1 sort-by-btn float-right">
                     <em>광고</em><i class="mdi-help-circle-outline"></i>
                       <!--  <div class="view-mode float-right">
                           <a class="active" href="properties-grid.html"><i class="mdi mdi-grid"></i></a><a href="properties-list.html"><i class="mdi mdi-format-list-bulleted"></i></a>
                        </div>
                        <div class="dropdown float-right">
                        
                             <button class="btn btn-success btn-sm dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <i class="mdi mdi-filter"></i> Sort by 
                           </button>
                         <div class="dropdown-menu float-right" aria-labelledby="dropdownMenuButton">
                              <a class="dropdown-item" href="#"><i class="mdi mdi-chevron-right"></i> Popularity </a>
                              <a class="dropdown-item" href="#"><i class="mdi mdi-chevron-right"></i> New </a>
                              <a class="dropdown-item" href="#"><i class="mdi mdi-chevron-right"></i> Discount </a>
                              <a class="dropdown-item" href="#"><i class="mdi mdi-chevron-right"></i> Price: Low to High </a>
                              <a class="dropdown-item" href="#"><i class="mdi mdi-chevron-right"></i> Price: High to Low </a>
                           </div>
                        </div> -->
                     </div>
                  </div>
             
                  <div class="row">
                     <div class="col-lg-4 col-md-4">
                        <div class="card card-list">
                           <a href="#">
                              <span class="badge badge-success">For Sale</span>
                              <img class="card-img-top" src="<c:url value='/resources/img/list/1.png'/>" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">House in Kent Street</h5>
                                 <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i> 127 Kent Sreet, Sydny, NEW 2000</h6>
                                 <h2 class="text-success mb-0 mt-3">
                                    $130,000 <small>/month</small>
                                 </h2>
                              </div>
                              <div class="card-footer">
                                 <span><i class="mdi mdi-sofa"></i> Beds : <strong>3</strong></span>
                                 <span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>2</strong></span>
                                 <span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>587 sq ft</strong></span>
                              </div>
                           </a>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-4">
                        <div class="card card-list">
                           <a href="#">
                              <span class="badge badge-secondary">For Rent</span>
                              <img class="card-img-top" src="<c:url value='/resources/img/list/2.png'/>" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">Family House in Hudson</h5>
                                 <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i> Hoboken, NJ, USA</h6>
                                 <h2 class="text-success mb-0 mt-3">
                                    $127,000 <small>/month</small>
                                 </h2>
                              </div>
                              <div class="card-footer">
                                 <span><i class="mdi mdi-sofa"></i> Beds : <strong>5</strong></span>
                                 <span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>3</strong></span>
                                 <span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>300 sq ft</strong></span>
                              </div>
                           </a>
                        </div>
                     </div>
                      <div class="col-lg-4 col-md-4">
                        <div class="card card-list">
                           <a href="#">
                              <span class="badge badge-secondary">For Rent</span>
                              <img class="card-img-top" src="<c:url value='/resources/img/list/2.png'/>" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">Family House in Hudson</h5>
                                 <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i> Hoboken, NJ, USA</h6>
                                 <h2 class="text-success mb-0 mt-3">
                                    $127,000 <small>/month</small>
                                 </h2>
                              </div>
                              <div class="card-footer">
                                 <span><i class="mdi mdi-sofa"></i> Beds : <strong>5</strong></span>
                                 <span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>3</strong></span>
                                 <span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>300 sq ft</strong></span>
                              </div>
                           </a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
      </section>
       <!-- End Add Product List -->
      
      <!-- SpecialPrice Product List -->
      <section class="section-padding">
         <div class="container">
            <div class="row" >
               <div class="col-lg-12 col-md-12">
                  <div class="osahan_top_filter row">
                     
                     <div class="col-lg-12 col-md-12 sort-by-btn float-right">
                   
                        <div class="dropdown float-right">
                           <button class="btn btn-success btn-sm dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <i class="mdi mdi-filter"></i> Sort by 
                           </button>
                           <div class="dropdown-menu float-right" aria-labelledby="dropdownMenuButton">
                              <a class="dropdown-item" href="#"><i class="mdi mdi-chevron-right"></i> 진행중인 특가 </a>
                              <a class="dropdown-item" href="#"><i class="mdi mdi-chevron-right"></i> 종료된 특가 </a>
                            
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-lg-4 col-md-4">
                        <div class="card card-list">
                           <a href="#">
                              <span class="badge badge-success">For Sale</span>
                              <img class="card-img-top" src="<c:url value='/resources/img/list/1.png'/>" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">House in Kent Street</h5>
                                 <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i> 127 Kent Sreet, Sydny, NEW 2000</h6>
                                 <h2 class="text-success mb-0 mt-3">
                                    $130,000 <small>/month</small>
                                 </h2>
                              </div>
                              <div class="card-footer">
                                 <span><i class="mdi mdi-sofa"></i> Beds : <strong>3</strong></span>
                                 <span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>2</strong></span>
                                 <span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>587 sq ft</strong></span>
                              </div>
                           </a>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-4">
                        <div class="card card-list">
                           <a href="#">
                              <span class="badge badge-secondary">For Rent</span>
                              <img class="card-img-top" src="<c:url value='/resources/img/list/2.png'/>" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">Family House in Hudson</h5>
                                 <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i> Hoboken, NJ, USA</h6>
                                 <h2 class="text-success mb-0 mt-3">
                                    $127,000 <small>/month</small>
                                 </h2>
                              </div>
                              <div class="card-footer">
                                 <span><i class="mdi mdi-sofa"></i> Beds : <strong>5</strong></span>
                                 <span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>3</strong></span>
                                 <span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>300 sq ft</strong></span>
                              </div>
                           </a>
                        </div>
                     </div>
                      <div class="col-lg-4 col-md-4">
                        <div class="card card-list">
                           <a href="#">
                              <span class="badge badge-secondary">For Rent</span>
                              <img class="card-img-top" src="<c:url value='/resources/img/list/2.png'/>" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">Family House in Hudson</h5>
                                 <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i> Hoboken, NJ, USA</h6>
                                 <h2 class="text-success mb-0 mt-3">
                                    $127,000 <small>/month</small>
                                 </h2>
                              </div>
                              <div class="card-footer">
                                 <span><i class="mdi mdi-sofa"></i> Beds : <strong>5</strong></span>
                                 <span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>3</strong></span>
                                 <span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>300 sq ft</strong></span>
                              </div>
                           </a>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-lg-4 col-md-4">
                        <div class="card card-list">
                           <a href="#">
                              <span class="badge badge-danger">For Sale</span>
                              <img class="card-img-top" src="<c:url value='/resources/img/list/4.png'/>" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">Store Space Greenville</h5>
                                 <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i> 250-260 3rd St, Hoboken, NJ 07030, USA</h6>
                                 <h2 class="text-success mb-0 mt-3">
                                    $25,000 <small>/month</small>
                                 </h2>
                              </div>
                              <div class="card-footer">
                                 <span><i class="mdi mdi-sofa"></i> Beds : <strong>6</strong></span>
                                 <span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>4</strong></span>
                                 <span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>987 sq ft</strong></span>
                              </div>
                           </a>
                        </div>
                     </div>
                      <div class="col-lg-4 col-md-4">
                        <div class="card card-list">
                           <a href="#">
                              <span class="badge badge-danger">For Sale</span>
                              <img class="card-img-top" src="<c:url value='/resources/img/list/4.png'/>" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">Store Space Greenville</h5>
                                 <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i> 250-260 3rd St, Hoboken, NJ 07030, USA</h6>
                                 <h2 class="text-success mb-0 mt-3">
                                    $25,000 <small>/month</small>
                                 </h2>
                              </div>
                              <div class="card-footer">
                                 <span><i class="mdi mdi-sofa"></i> Beds : <strong>6</strong></span>
                                 <span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>4</strong></span>
                                 <span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>987 sq ft</strong></span>
                              </div>
                           </a>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-4">
                        <div class="card card-list">
                           <a href="#">
                              <span class="badge badge-warning">For Rent</span>
                              <img class="card-img-top" src="<c:url value='/resources/img/list/5.png'/>" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">Villa in Melbourne</h5>
                                 <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i> NJ 07305, USA</h6>
                                 <h2 class="text-success mb-0 mt-3">
                                    $12,000 <small>/month</small>
                                 </h2>
                              </div>
                              <div class="card-footer">
                                 <span><i class="mdi mdi-sofa"></i> Beds : <strong>8</strong></span>
                                 <span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>4</strong></span>
                                 <span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>120 sq ft</strong></span>
                              </div>
                           </a>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-lg-4 col-md-4">
                        <div class="card card-list">
                           <a href="#">
                              <span class="badge badge-danger">For Sale</span>
                              <img class="card-img-top" src="<c:url value='/resources/img/list/4.png'/>" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">Store Space Greenville</h5>
                                 <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i> 250-260 3rd St, Hoboken, NJ 07030, USA</h6>
                                 <h2 class="text-success mb-0 mt-3">
                                    $25,000 <small>/month</small>
                                 </h2>
                              </div>
                              <div class="card-footer">
                                 <span><i class="mdi mdi-sofa"></i> Beds : <strong>6</strong></span>
                                 <span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>4</strong></span>
                                 <span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>987 sq ft</strong></span>
                              </div>
                           </a>
                        </div>
                     </div>
                      <div class="col-lg-4 col-md-4">
                        <div class="card card-list">
                           <a href="#">
                              <span class="badge badge-danger">For Sale</span>
                              <img class="card-img-top" src="<c:url value='/resources/img/list/4.png'/>" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">Store Space Greenville</h5>
                                 <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i> 250-260 3rd St, Hoboken, NJ 07030, USA</h6>
                                 <h2 class="text-success mb-0 mt-3">
                                    $25,000 <small>/month</small>
                                 </h2>
                              </div>
                              <div class="card-footer">
                                 <span><i class="mdi mdi-sofa"></i> Beds : <strong>6</strong></span>
                                 <span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>4</strong></span>
                                 <span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>987 sq ft</strong></span>
                              </div>
                           </a>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-4">
                        <div class="card card-list">
                           <a href="#">
                              <span class="badge badge-success">For Sale</span>
                              <img class="card-img-top" src="<c:url value='/resources/img/list/3.png'/>" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">Loft Above The City</h5>
                                 <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i> Hope Street (Stop P), London SW11, UK</h6>
                                 <h2 class="text-success mb-0 mt-3">
                                    $55,000 <small>/month</small>
                                 </h2>
                              </div>
                              <div class="card-footer">
                                 <span><i class="mdi mdi-sofa"></i> Beds : <strong>2</strong></span>
                                 <span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>1</strong></span>
                                 <span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>100 sq ft</strong></span>
                              </div>
                           </a>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-lg-4 col-md-4">
                        <div class="card card-list">
                           <a href="#">
                              <span class="badge badge-danger">For Sale</span>
                              <img class="card-img-top" src="<c:url value='/resources/img/list/4.png'/>" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">Store Space Greenville</h5>
                                 <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i> 250-260 3rd St, Hoboken, NJ 07030, USA</h6>
                                 <h2 class="text-success mb-0 mt-3">
                                    $25,000 <small>/month</small>
                                 </h2>
                              </div>
                              <div class="card-footer">
                                 <span><i class="mdi mdi-sofa"></i> Beds : <strong>6</strong></span>
                                 <span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>4</strong></span>
                                 <span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>987 sq ft</strong></span>
                              </div>
                           </a>
                        </div>
                     </div>
                      <div class="col-lg-4 col-md-4">
                        <div class="card card-list">
                           <a href="#">
                              <span class="badge badge-danger">For Sale</span>
                              <img class="card-img-top" src="<c:url value='/resources/img/list/4.png'/>" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">Store Space Greenville</h5>
                                 <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i> 250-260 3rd St, Hoboken, NJ 07030, USA</h6>
                                 <h2 class="text-success mb-0 mt-3">
                                    $25,000 <small>/month</small>
                                 </h2>
                              </div>
                              <div class="card-footer">
                                 <span><i class="mdi mdi-sofa"></i> Beds : <strong>6</strong></span>
                                 <span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>4</strong></span>
                                 <span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>987 sq ft</strong></span>
                              </div>
                           </a>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-4">
                        <div class="card card-list">
                           <a href="#">
                              <span class="badge badge-success">For Sale</span>
                              <img class="card-img-top" src="<c:url value='/resources/img/list/3.png'/>" alt="Card image cap">
                              <div class="card-body">
                                 <h5 class="card-title">Loft Above The City</h5>
                                 <h6 class="card-subtitle mb-2 text-muted"><i class="mdi mdi-home-map-marker"></i> Hope Street (Stop P), London SW11, UK</h6>
                                 <h2 class="text-success mb-0 mt-3">
                                    $55,000 <small>/month</small>
                                 </h2>
                              </div>
                              <div class="card-footer">
                                 <span><i class="mdi mdi-sofa"></i> Beds : <strong>2</strong></span>
                                 <span><i class="mdi mdi-scale-bathroom"></i> Baths : <strong>1</strong></span>
                                 <span><i class="mdi mdi-move-resize-variant"></i> Area : <strong>100 sq ft</strong></span>
                              </div>
                           </a>
                        </div>
                     </div>
                  </div>
                  <nav class="mt-5">
                     <ul class="pagination justify-content-center">
                        <li class="page-item disabled">
                           <a class="page-link" href="#" tabindex="-1"><i class="mdi mdi-chevron-left"></i></a>
                        </li>
                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                        <li class="page-item"><a class="page-link" href="#">5</a></li>
                        <li class="page-item">
                           <a class="page-link" href="#"><i class="mdi mdi-chevron-right"></i></a>
                        </li>
                     </ul>
                  </nav>
               </div>
            </div>
         </div>
      </section>
      <!-- End SpecialPrice Product List -->
    