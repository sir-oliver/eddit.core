<section class="wrapper scrollable animated fadeIn">
	<section class="title-bar" style="padding-right: 60px">
		<div style="text-align:center">
			<h1>click<sup> + </sup>edit</h1>
			<h6>CONTENT MANAGEMENT SYSTEM</h6>
		</div>
	</section>
{*
	<nav class="quick-launch-bar">
		<ul>
			<li>
				<a href="/eddit/dashboard/">
					<i class="fa fa-home"></i>
					<span>Dashboard</span>
				</a>
			</li>
			<li>
				<a href="/eddit/main/">
					<i class="fa fa-file-text-o"></i>
					<span>Content / Data</span>
				</a>
			</li>
			<li>
				<a href="/eddit/docs/">
					<i class="fa fa-info-circle"></i>
					<span>Documentation</span>
				</a>
			</li>
		</ul>
	</nav>
*}
	<div style="margin-top: 4em; text-align: center;">
		{assign var='user' value=EDDIT::user('clickedit')}
		<img src="{EDDIT::getGravatar($user.email)}" alt="{$user.email}" style="margin-bottom: 1em; border-radius: 15px">
		<p>{$user.firstname} {$user.lastname}</p>
	</div>

	<section class="container" id="dashboard" style="margin-top: 3em; text-align: center;">
		<!-- <img src="/eddit/assets/networx.png" alt="networx" style="margin: 100px auto"> -->
		<!-- <i id="currentLanguage" class="flag-icon flag-icon-at" style="font-size: 80px"></i> -->
	</section>


{*
	<section class="widget-group">
		<div id="messages-widget" class="widget animated fadeIn messages">
			<div class="panel panel-default back">
				<div class="panel-heading">
					<i class="fa fa-cog"></i>
					<span>Settings</span>
					<div class="toggle-widget-setup">
						<i class="fa fa-ok"></i>
						<span>DONE</span>
					</div>
				</div>
				<ul class="list-group">
					<li class="list-group-item">
						<div class="form-group">
							<label>Filter by Location</label>
							<div>
								<select class="select2">
									<option selected="" value="Any">Any</option>
									<option value="Europe">Europe</option>
									<option value="Asia">Asia</option>
									<option value="North America">North America</option>
									<option value="Other">Other</option>
								</select>
							</div>
						</div>
					</li>
					<li class="list-group-item">
						<div class="form-group">
							<label>Filter by Time</label>
							<div>
								<select class="select2">
									<option>Any</option>
									<option>Last Hour</option>
									<option>Today</option>
									<option selected="">This Week</option>
									<option>This Month</option>
									<option>This Year</option>
								</select>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="panel panel-success front">
				<div class="panel-heading">
					<i class="fa fa-envelope-o"></i>
					<span>Messages</span>
					<i class="fa fa-cog toggle-widget-setup"></i>
				</div>
				<div>
					<ul class="list-group pending">
						<li class="list-group-item">
							<i class="fa fa-user fa-2x"></i>
							<div class="text-holder">
								<span class="title-text">
									Nunc Cenenatis:
								</span>
								<span class="description-text">
									Hi, can you meet me at the office tomorrow morning?
								</span>
							</div>
							<span class="stat-value">
								5 mins ago
							</span>
						</li>
						<li class="list-group-item">
							<i class="fa fa-user fa-2x"></i>
							<div class="text-holder">
								<span class="title-text">
									Prasent Neque:
								</span>
								<span class="description-text">
									Just a quick question: do you know the balance on the adsense account?
								</span>
							</div>
							<span class="stat-value">
								17 mins ago
							</span>
						</li>
						<li class="list-group-item">
							<i class="fa fa-user fa-2x"></i>
							<div class="text-holder">
								<span class="title-text">
									Flor Demoa:
								</span>
								<span class="description-text">
									Hey, we're going surfing tomorrow. Feel free to join in.
								</span>
							</div>
							<span class="stat-value">
								3 hrs ago
							</span>
						</li>
						<li class="list-group-item">
							<i class="fa fa-user fa-2x"></i>
							<div class="text-holder">
								<span class="title-text">
									Nunc Cenenatis:
								</span>
								<span class="description-text">
									Did you remember to get the tickets?
								</span>
							</div>
							<span class="stat-value">
								1 day ago
							</span>
						</li>
						<li class="list-group-item">
							<i class="fa fa-user fa-2x"></i>
							<div class="text-holder">
								<span class="title-text">
									Morbi Demoa:
								</span>
								<span class="description-text">
									Great seeing you at the show yesterday.
								</span>
							</div>
							<span class="stat-value">
								2 days ago
							</span>
						</li>
					</ul>
				</div>
			</div>
		</div>



		<div id="general-stats-widget" class="widget animated fadeIn general-stats">
			<div class="panel panel-default back">
				<div class="panel-heading">
					<i class="fa fa-cog"></i>
					<span>Settings</span>
					<div class="toggle-widget-setup">
						<i class="fa fa-ok"></i>
						<span>DONE</span>
					</div>
				</div>
				<ul class="list-group">
					<li class="list-group-item">
						<div class="form-group">
							<label>Filter by Location</label>
							<div>
								<select class="select2">
									<option value="Any">Any</option>
									<option selected="" value="Europe">Europe</option>
									<option value="Asia">Asia</option>
									<option value="North America">North America</option>
									<option value="Other">Other</option>
								</select>
							</div>
						</div>
					</li>
					<li class="list-group-item">
						<div class="form-group">
							<label>Filter by Time</label>
							<div>
								<select class="select2">
									<option>Any</option>
									<option>Last Hour</option>
									<option>Today</option>
									<option>This Week</option>
									<option>This Month</option>
									<option selected="">This Year</option>
								</select>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="panel panel-primary front">
				<div class="panel-heading">
					<i class="fa fa-sort"></i>
					<span>General Stats</span>
					<i class="fa fa-cog toggle-widget-setup"></i>
				</div>
				<ul class="list-group">
					<li class="list-group-item">
						<div class="text-holder">
							<span class="title-text">
								2,511
							</span>
							<span class="description-text">
								Registered Users
							</span>
						</div>
						<span class="stat-value">
							+ 0.6%
							<i class="fa fa-sort-up"></i>
						</span>
					</li>
					<li class="list-group-item">
						<div class="text-holder">
							<span class="title-text">
								$1,132
							</span>
							<span class="description-text">
								Revenue
							</span>
						</div>
						<span class="stat-value">
							+ 2.1%
							<i class="fa fa-sort-up"></i>
						</span>
					</li>
					<li class="list-group-item">
						<div class="text-holder">
							<span class="title-text">
								53
							</span>
							<span class="description-text">
								Viking Users
							</span>
						</div>
						<span class="stat-value">
							0%
							<i class="fa fa-sort"></i>
						</span>
					</li>
					<li class="list-group-item">
						<div class="text-holder">
							<span class="title-text">
								24
							</span>
							<span class="description-text">
								Donuts consumed
							</span>
						</div>
						<span class="stat-value">
							- 6.5%
							<i class="fa fa-sort-down"></i>
						</span>
					</li>
					<li class="list-group-item">
						<div class="text-holder">
							<span class="title-text">
								312
							</span>
							<span class="description-text">
								Orders Received
							</span>
						</div>
						<span class="stat-value">
							+ 12.1%
							<i class="fa fa-sort-up"></i>
						</span>
					</li>
				</ul>
			</div>
		</div>





		<div id="task-completion-widget" class="widget animated fadeIn task-completion">
			<div class="panel panel-default back">
				<div class="panel-heading">
					<i class="fa fa-cog"></i>
					<span>Settings</span>
					<div class="toggle-widget-setup">
						<i class="fa fa-ok"></i>
						<span>DONE</span>
					</div>
				</div>
				<ul class="list-group">
					<li class="list-group-item">
						<div class="form-group">
							<label>Filter by Origin</label>
							<div>
								<select class="select2">
									<option value="Any">Any</option>
									<option value="Europe">Europe</option>
									<option value="Asia">Asia</option>
									<option selected="" value="North America">North America</option>
									<option value="Other">Other</option>
								</select>
							</div>
						</div>
					</li>
					<li class="list-group-item">
						<div class="form-group">
							<label>Filter by Time</label>
							<div>
								<select class="select2">
									<option>Any</option>
									<option>Last Hour</option>
									<option>Today</option>
									<option>This Week</option>
									<option selected="">This Month</option>
									<option>This Year</option>
								</select>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="panel panel-warning front">
				<div class="panel-heading">
					<i class="fa fa-tasks"></i>
					<span>Task Completion</span>
					<i class="fa fa-cog toggle-widget-setup"></i>
				</div>
				<ul class="list-group">
					<li class="sub-list">
						<ul>
							<li class="list-group-item">
								<span class="title-text">
									Processed orders
								</span>
								<span class="processed-value">
									56
								</span>
							</li>
							<li class="list-group-item">
								<span class="title-text">
									Pending orders
								</span>
								<span class="processed-value">
									14
								</span>
							</li>
							<li class="list-group-item">
								<span class="title-text">
									Unproc. orders
								</span>
								<span class="processed-value">
									12
								</span>
							</li>
						</ul>
					</li>
					<li class="widget-progress-bar">
						<div class="form-group">
							<label>Processed orders: 63%</label>
							<div class="progress">
								<div class="progress-bar progress-bar-warning" role="progressbar" role="progressbar" aria-valuenow="63" aria-valuemin="0" aria-valuemax="100" style="width: 63%">
									<span class="sr-only">63% Complete</span>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>

	</section>
*}
</section>
