<!doctype html>
<html lang="de">
<head>
	<title>CE dev</title>
	<meta name="robots" content="noindex, nofollow">
	<meta name="author" content="networx.at">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width">
	<link rel="stylesheet" href="/min.css">
</head>
<body>

<header role="navigation">
	<div class="container-fluid center-block">
		<!-- <div class="row"> -->
			<nav class="navbar navbar-default" role="navigation" id="topnavbar">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#topnav">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a href="nodes.php" class="navbar-brand logo">DEV.click-edit.com</a>
				</div>
				<div class="collapse navbar-collapse" id="topnav">
					{*include file='nav.tpl'*}
				</div>
			</nav>
		<!-- </div> -->
	</div>
</header>

<div class="container-fluid center-block">
	<div class="row">
		<div class="col-md-2 col-sm-3 col-xs-4">
			{plugin name='nav' root=1 class='nav nav-pills nav-stacked'}
		</div>
		<div class="col-md-10 col-sm-9 col-xs-8">
			<h1>NODE NOT FOUND!</h1>
		</div>
	</div>
</div>

<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="/min.js"></script>
{if EDDIT::requestVar('ce')}
<link rel="stylesheet" href="/eddit/styles/iframe-inject.css">
<script src="/eddit/scripts/ce/iframe-inject.js"></script>
{/if}

</body>
</html>
