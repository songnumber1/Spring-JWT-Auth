<div id="layoutSidenav">
	<div id="layoutSidenav_nav">
		<nav class="sb-sidenav accordion sb-sidenav-dark"
			id="sidenavAccordion">
			<div class="sb-sidenav-menu">
				<div class="nav">
					<!-- Profile -->
					<div class="sb-sidenav-menu-heading">Profile</div>

					<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseProfile" aria-expanded="false"
						aria-controls="collapseProfile">
						<div class="sb-nav-link-icon">
							<i class="fas fa-user"></i>
						</div> Personal
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>

					<div class="collapse" id="collapseProfile" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="#">
								Detail
							</a> 
						</nav>
					</div>
					
					<hr/>
					<!-- ========================================================================================================== -->

					<!-- Data -->
					<div class="sb-sidenav-menu-heading">Data</div>	
					
					<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePrograms" aria-expanded="false" aria-controls="collapsePrograms">
                        <div class="sb-nav-link-icon"><i class="fas fa-th-list"></i></div>
                        Programs
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="collapsePrograms" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#programsCollapseDB" aria-expanded="false" aria-controls="programsCollapseDB">
                                Database
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="programsCollapseDB" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="#">MS-Sql</a>
                                    <a class="nav-link" href="#">Oracle</a>
                                    <a class="nav-link" href="#">Postgre</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#programsCollapseSoftware" aria-expanded="false" aria-controls="programsCollapseSoftware">
                                Software
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="programsCollapseSoftware" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="#">Android</a>
                                    <a class="nav-link" href="/jwtauth/csharp">C#</a>
                                    <a class="nav-link" href="#">Java</a>
									<a class="nav-link" href="#">Java Script</a>
									<a class="nav-link" href="#">MFC</a>
									<a class="nav-link" href="#">React</a>
									<a class="nav-link" href="#">Vue.js</a>
									<a class="nav-link" href="#">WPF</a>
									<a class="nav-link" href="#">Xamarin</a>
                                </nav>
                            </div>
                        </nav>
                    </div>
                            
					<a class="nav-link" href="/jwtauth/storage">
						<div class="sb-nav-link-icon">
							<i class="fas fa-database"></i>
						</div> 
						Storage
					</a>

					<hr/>

					<!-- ========================================================================================================== -->
					
					<!-- Odds and Ends -->
					<div class="sb-sidenav-menu-heading">Etc</div>
					<a class="nav-link" href="#">
						<div class="sb-nav-link-icon"><i class="fas fa-users"></i></div>
						Account
					</a>
					<a class="nav-link" href="#">
						<div class="sb-nav-link-icon"><i class="fa fa-bars"></i></div>
						Oddments
					</a>
					<a class="nav-link" href="#">
						<div class="sb-nav-link-icon"><i class="fa fa-code"></i></div>
						Git
					</a>
					<a class="nav-link" href="#">
						<div class="sb-nav-link-icon"><i class="fas fa-desktop"></i></div>
						Windows
					</a>
					<a class="nav-link" href="/jwtauth/movie">
						<div class="sb-nav-link-icon"><i class="fas fa-film"></i></div>
						Movies
					</a>



					<!-- ========================================================================================================== -->

					<!-- 이전 코드 (3 dept, 2dept, 1dept) -->
					<!-- ========================================================================================================== -->
					<!--<div class="sb-sidenav-menu-heading">Profile</div>
					<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false"
						aria-controls="collapseLayouts">
						<div class="sb-nav-link-icon">
							<i class="fas fa-columns"></i>
						</div> Layouts
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
					<div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="layout-static.html">Static
								Navigation</a> <a class="nav-link" href="layout-sidenav-light.html">Light
								Sidenav</a>
						</nav>
					</div>
					<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false"
						aria-controls="collapsePages">
						<div class="sb-nav-link-icon">
							<i class="fas fa-book-open"></i>
						</div> Pages
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
					<div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
							<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth"
								aria-expanded="false" aria-controls="pagesCollapseAuth"> Authentication
								<div class="sb-sidenav-collapse-arrow">
									<i class="fas fa-angle-down"></i>
								</div>
							</a>
							<div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne"
								data-bs-parent="#sidenavAccordionPages">
								<nav class="sb-sidenav-menu-nested nav">
									<a class="nav-link" href="login.html">Login</a> <a class="nav-link" href="register.html">Register</a> <a
										class="nav-link" href="password.html">Forgot Password</a>
								</nav>
							</div>
							<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError"
								aria-expanded="false" aria-controls="pagesCollapseError"> Error
								<div class="sb-sidenav-collapse-arrow">
									<i class="fas fa-angle-down"></i>
								</div>
							</a>
							<div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne"
								data-bs-parent="#sidenavAccordionPages">
								<nav class="sb-sidenav-menu-nested nav">
									<a class="nav-link" href="401.html">401 Page</a> <a class="nav-link" href="404.html">404 Page</a> <a
										class="nav-link" href="500.html">500 Page</a>
								</nav>
							</div>
						</nav>
					</div>

					<div class="sb-sidenav-menu-heading">Storage</div>
					<a class="nav-link" href="charts.html">
						<div class="sb-nav-link-icon">
							<i class="fas fa-chart-area"></i>
						</div> Charts
					</a> 
					<a class="nav-link" href="tables.html">
						<div class="sb-nav-link-icon">
							<i class="fas fa-table"></i>
						</div> Tables
					</a>-->
					<!-- ========================================================================================================== -->
				</div>
			</div>
			<div class="sb-sidenav-footer">
				<div class="small">Logged in as:</div>
				Start Bootstrap
			</div>
		</nav>
	</div>