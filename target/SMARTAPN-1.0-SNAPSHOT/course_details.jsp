<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.smartapn.DB.SmartApnDB"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<!-- BEGIN HEAD -->


<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1" name="viewport" />
	<meta name="description" content="Responsive Admin Template" />
	<meta name="author" content="SmartUniversity" />
	<title>Smart University | Bootstrap Responsive Admin Template</title>
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet" type="text/css" />
	<!-- icons -->
	<link href="fonts/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
	<link href="fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="fonts/material-design-icons/material-icon.css" rel="stylesheet" type="text/css" />
	<!--bootstrap -->
	<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<!-- Material Design Lite CSS -->
	<link rel="stylesheet" href="assets/plugins/material/material.min.css">
	<link rel="stylesheet" href="assets/css/material_style.css">
	<!-- Theme Styles -->
	<link id="theme_styleCss" href="assets/css/theme/light/theme_style.css" rel="stylesheet" id="rt_style_components" type="text/css" />
	<link href="assets/css/theme/light/style.css" rel="stylesheet" type="text/css" />
	<link href="assets/css/plugins.min.css" rel="stylesheet" type="text/css" />
	<link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
	<link id="theme-colorCss" href="assets/css/theme/light/theme-color.css" rel="stylesheet" type="text/css" />
	<!-- favicon -->
	<link rel="shortcut icon" href="http://radixtouch.in/templates/admin/smart/source/assets/img/favicon.ico" />
</head>
<!-- END HEAD -->

<body id = "bodyId"
	class="page-header-fixed sidemenu-closed-hidelogo page-content-white page-md header-white white-sidebar-color logo-indigo">
	<div class="page-wrapper">
		<!-- start header -->
		<%@ include file="header.jsp" %>
		<!-- end header -->
		<!-- start color quick setting -->
		<%@ include file="color_quick.html" %>
		<!-- end color quick setting -->
		<!-- start page container -->
		<div class="page-container">
			<!-- start sidebar menu -->
		<%@include file="sidebaradmin.jsp" %>
			<!-- end sidebar menu -->
			<!-- start page content -->
			<div class="page-content-wrapper">
				<div class="page-content">
					<div class="page-bar">
						<div class="page-title-breadcrumb">
							<div class=" pull-left">
								<div class="page-title">Course Details</div>
							</div>
							<ol class="breadcrumb page-breadcrumb pull-right">
								<li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
										href="<%=session.getAttribute("page")%>.jsp">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
								</li>
								<li><a class="parent-item" href="#">Course</a>&nbsp;<i class="fa fa-angle-right"></i>
								</li>
								<li class="active">Course Details</li>
							</ol>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<!-- BEGIN PROFILE SIDEBAR -->
							<div class="profile-sidebar">
								<div class="card card-topline-aqua">
									<div class="card-body no-padding height-9">
										<div class="row">
											<div class="course-picture">
												<img src="assets/img/course/course1.jpg" class="img-responsive"
													alt=""> </div>
                                                                                    
                                                                                    <%
                                        Connection con = SmartApnDB.conectdb();
                                        Statement st = null;
                                        try {
                                            int a = Integer.parseInt(request.getParameter("id"));
                                            String sql = "select * from department where id ='"+a+"'";
                                            st = con.createStatement();
                                            ResultSet rs = st.executeQuery(sql);
                                            while (rs.next()) {
                                    %>
										</div>
										<div class="profile-usertitle">
											<div class="profile-usertitle-name"> <%= rs.getString("name")%> </div>
										</div>
										<!-- END SIDEBAR USER TITLE -->
									</div>
								</div>
								<div class="card">
									<div class="card-head card-topline-aqua">
										<header>About Course</header>
									</div>
									<div class="card-body no-padding height-9">
										<div class="profile-desc">
											<%= rs.getString("dept_details")%>
										</div>
										<ul class="list-group list-group-unbordered">
											<li class="list-group-item">
												<b>Duration </b>
												<div class="profile-desc-item pull-right">6 Months</div>
											</li>
											<li class="list-group-item">
												<b>Price </b>
												<div class="profile-desc-item pull-right">Rs.<%= rs.getInt("dept_prize")%></div>
											</li>
											<li class="list-group-item">
												<b>Student Capacity </b>
												<div class="profile-desc-item pull-right"><%= rs.getInt("student_capacity")%></div>
											</li>
											<li class="list-group-item">
												<b>Date</b>
												<div class="profile-desc-item pull-right"><%= rs.getString("start_date")%></div>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<!-- END BEGIN PROFILE SIDEBAR -->
							<!-- BEGIN PROFILE CONTENT -->
							<div class="profile-content">
								<div class="row">
									<div class="card">
										<div class="card-topline-aqua">
											<header></header>
										</div>
										<div class="white-box">
											<!-- Nav tabs -->
											<!-- Tab panes -->
											<div class="tab-content">
												<div class="tab-pane active fontawesome-demo">
													<div id="biography">
														<p>Open after rule place He earth earth good called days unto
															which wherein day doesn't said day image
															signs fish days forth for evening whose his make his bearing
															years gathering good brought without. </p>
														<p>Years living creepeth. Form them yielding behold greater
															divided void was fowl earth in. Spirit Bring
															grass they're you have shall years so morning. Grass
															gathering won't heaven set greater darkness forth
															abundantly he. </p>
														<p>sn't hath, forth. Brought sea subdue, from divided replenish
															creature after creeping abundantly fly is
															cattle fill were years years may darkness blessed which land
															creepeth good moving good. Life living
															you're.</p>
														<p>Open after rule place He earth earth good called days unto
															which wherein day doesn't said day image
															signs fish days forth for evening whose his make his bearing
															years gathering good brought without. </p>
														<p>Years living creepeth. Form them yielding behold greater
															divided void was fowl earth in. Spirit Bring
															grass they're you have shall years so morning. Grass
															gathering won't heaven set greater darkness forth
															abundantly he. </p>
														<p>sn't hath, forth. Brought sea subdue, from divided replenish
															creature after creeping abundantly fly is
															cattle fill were years years may darkness blessed which land
															creepeth good moving good. Life living
															you're.</p>
														<br>
														<h4 class="font-bold">Course Syllabus</h4>
														<hr>
														<ul>
															<li>Introduction to Computer and Internet.</li>
															<li>Microsoft Application Tools such MS Word, MS Excel, MS
																PowerPoint.</li>
															<li>Computer Organizations and Operating Systems.</li>
															<li>Programming in C.</li>
															<li>Object Oriented Programming Languages such as C++/Java.
															</li>
															<li>RDBMS and Data Management</li>
															<li>Web Technologies such as creation of dynamic website.
															</li>
														</ul>
														<br>
														<h4 class="font-bold">After the completion of course the
															students will be able to: </h4>
														<hr>
														<ul>
															<li>Understand computers, its basic components and
																applications.</li>
															<li>Understand and Identify the Concepts of Computer
																Hardware and software.</li>
															<li>Implement Word Processing Basics.</li>
															<li>Create Spread sheets and use of formulas and functions.
															</li>
															<li>Create and develop a presentation.</li>
															<li>Understand basic concepts in Networking and
																Troubleshooting.</li>
															<li>Develop the skills for effective compose of E-mails and
																its features.</li>
															<li>Create and develop forms, queries and reports.</li>
															<li>Understand the concepts of multimedia and its
																applications.</li>
															<li>Develop the understanding of HTML.</li>
															<li>Understand the concepts of Tally and its applications.
															</li>
															<li>Maintenance of PC.</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
                                                        
                                                        <%
                                            }
                                        } catch (Exception e) {
                                            System.out.println(e.getMessage());
                                        }
                                    %>
							<!-- END PROFILE CONTENT -->
						</div>
					</div>
				</div>
				<!-- end page content -->
				<!-- start chat sidebar -->
				<%@include file="chat_sidebar.jsp" %>
				<!-- end chat sidebar -->
			</div>
			<!-- end page container -->
			<!-- start footer -->
			<%@ include file="footer.html" %>
			<!-- end footer -->
		</div>
	</div>
	<!-- start js include path -->
	<script src="assets/plugins/jquery/jquery.min.js"></script>
	<script src="assets/plugins/popper/popper.js"></script>
	<script src="assets/plugins/jquery-blockui/jquery.blockui.min.js"></script>
	<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>
	<!-- bootstrap -->
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
	<!-- Common js-->
	<script src="assets/js/app.js"></script>
	<script src="assets/js/layout.js"></script>
	<script src="assets/js/theme-color.js"></script>
	<!-- Material -->
	<script src="assets/plugins/material/material.min.js"></script>
	<!-- end js include path -->
</body>


</html>