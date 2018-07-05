<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

      <!-- Properties List -->
      <section class="section-padding">
         <div class="container">
            <div class="row">
               <div class="col-lg-3 col-md-3">
                  <div class="card sidebar-card">
                     <div class="card-body">
                        <h5 class="card-title mb-3">Property Type</h5>
                        <ul class="sidebar-card-list">
                           <li><a href="#"><i class="mdi mdi-chevron-right"></i> House/Villa <span class="sidebar-badge">90</span></a></li>
                           <li><a href="#"><i class="mdi mdi-chevron-right"></i> Flat <span class="sidebar-badge">60</span></a></li>
                           <li><a href="#"><i class="mdi mdi-chevron-right"></i> Plot/Land <span class="sidebar-badge">44</span></a></li>
                           <li><a href="#"><i class="mdi mdi-chevron-right"></i> Office Space <span class="sidebar-badge">38</span></a></li>
                           <li><a href="#"><i class="mdi mdi-chevron-right"></i> Shop/Showroom <span class="sidebar-badge">29</span></a></li>
                           <li><a href="#"><i class="mdi mdi-chevron-right"></i> Commercial Land <span class="sidebar-badge">28</span></a></li>
                           <li><a href="#"><i class="mdi mdi-chevron-right"></i> Warehouse/ Godown <span class="sidebar-badge">12</span></a></li>
                           <li><a href="#"><i class="mdi mdi-chevron-right"></i> Industrial Building <span class="sidebar-badge">8</span></a></li>
                        </ul>
                     </div>
                  </div>
                  <div class="card sidebar-card">
                     <div class="card-body">
                        <h5 class="card-title mb-3">Property Status</h5>
                        <ul class="sidebar-card-list">
                           <li><a href="#"><i class="mdi mdi-chevron-right"></i> For Rent <span class="sidebar-badge">600</span></a></li>
                           <li><a href="#"><i class="mdi mdi-chevron-right"></i> For Sale <span class="sidebar-badge">1200</span></a></li>
                        </ul>
                     </div>
                  </div>
                  <div class="card sidebar-card">
                     <div class="card-body">
                        <h5 class="card-title mb-3">Property By City</h5>
                        <ul class="sidebar-card-list">
                           <li><a href="#"><i class="mdi mdi-chevron-right"></i> New York <span class="sidebar-badge">220</span></a></li>
                           <li><a href="#"><i class="mdi mdi-chevron-right"></i> Los Angeles <span class="sidebar-badge">150</span></a></li>
                           <li><a href="#"><i class="mdi mdi-chevron-right"></i> Chicago <span class="sidebar-badge">100</span></a></li>
                           <li><a href="#"><i class="mdi mdi-chevron-right"></i> Houston <span class="sidebar-badge">50</span></a></li>
                           <li><a href="#"><i class="mdi mdi-chevron-right"></i> Philadelphia <span class="sidebar-badge">23</span></a></li>
                        </ul>
                     </div>
                  </div>
               </div>
               <div class="col-lg-9 col-md-9">
                  <div class="osahan_top_filter row">
                     <div class="col-lg-6 col-md-6 tags-action">
                        <span>For Rent <a href="#"><i class="mdi mdi-window-close"></i></a></span>
                        <span>Plot/Land <a href="#"><i class="mdi mdi-window-close"></i></a></span>
                     </div>
                     <div class="col-lg-6 col-md-6 sort-by-btn float-right">
                        <div class="view-mode float-right">
                           <a href="properties-grid.html"><i class="mdi mdi-grid"></i></a><a class="active" href="properties-list.html"><i class="mdi mdi-format-list-bulleted"></i></a>
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
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-lg-12 col-md-12">
                        <div class="card card-list card-list-view">
                           <a href="#">
                              <div class="row no-gutters">
                                 <div class="col-lg-5 col-md-5">					 
                                    <span class="badge badge-success">For Sale</span>
                                    <img class="card-img-top" src="img/list/1.png" alt="Card image cap">
                                 </div>
                                 <div class="col-lg-7 col-md-7">
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
                                 </div>
                              </div>
                           </a>
                        </div>
                     </div>
                 </div>
            
<!--                   <nav class="mt-5">
                     <ul class="pagination justify-content-center">
                        <li class="page-item disabled">
                           <a class="page-link" href="#" tabindex="-1"><i class="mdi mdi-chevron-left"></i></a>
                        </li>
                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">...</a></li>
                        <li class="page-item"><a class="page-link" href="#">10</a></li>
                        <li class="page-item">
                           <a class="page-link" href="#"><i class="mdi mdi-chevron-right"></i></a>
                        </li>
                     </ul>
                  </nav> -->
               </div>
            </div>
         </div>
      </section>
      <!-- End Properties List -->
 