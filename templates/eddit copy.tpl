<html lang="en">
<head>{config_load file="i18n.conf" section=EDDIT::$languageID|default:EDDIT::config('defaultLG') scope="global"}
	<title>eddit content-management</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	{* <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> *}

	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.css"/>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/fixedheader/3.2.0/css/fixedHeader.bootstrap5.css"/>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.bootstrap5.css"/>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.3.3/css/select.bootstrap5.css"/>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/staterestore/1.0.1/css/stateRestore.bootstrap5.css"/>
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.3.12/themes/default/style.min.css" />

	<link rel="stylesheet" href="/eddit/css/eddit.css?t={$smarty.now}">
	{* <link rel="stylesheet" href="/eddit/css/_eddit-static.scss?t={$smarty.now}"> *}

	<script type="text/javascript">
	var eddit =
	{
		IDnode: {EDDIT::$nodeID|default:EDDIT::config('defaultPG')},
		IDobject: 0,
		IDlanguage: '{EDDIT::$languageID|default:EDDIT::config('defaultLG')}',
		IDscreen: '',
		IDtype: null,
		IS_SMESH_IP: {if IS_SMESH_IP}true{else}false{/if}

	};
	</script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script type="text/javascript" src="https://kit.fontawesome.com/c56ed75007.js" crossorigin="anonymous"></script>

	<script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/fixedheader/3.2.0/js/dataTables.fixedHeader.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/responsive/2.2.9/js/dataTables.responsive.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/responsive/2.2.9/js/responsive.bootstrap5.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/staterestore/1.0.1/js/dataTables.stateRestore.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/staterestore/1.0.1/js/stateRestore.bootstrap5.js"></script>

	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.3.12/jstree.min.js"></script>

	{* <script type="text/javascript" src="https://networx-static.s3.eu-central-1.amazonaws.com/tinymce-4.9.11/tinymce.min.js"></script> *}

	<script type="text/javascript" src="/prototype/i18n.js"></script>
	<script type="text/javascript" src="/eddit/js/split-grid.js"></script>

</head>
<body class="">
<div id="grid" class="web">
	<div id="nav">
		<div class="d-flex flex-column h-100">

				<a class="" href="" title="Home">
					<div class="icn">
						{assign var='user' value=EDDIT::user('clickedit')}<img src="{EDDIT::getGravatar($user.email)}" alt="{$user.email}" alt="{$user.firstname} {$user.lastname}" style="width:40px;height:40px;border-radius: 50%">
					</div>
					<span class="txt txt-visible">{$user.firstname|upper} {$user.lastname|upper}</span>
				</a>
				<div class="nav">
					<a class="" href="#languages" data-target="languages" data-bs-toggle="tab" title="Sprache">
						<span class="icn"><img src="https://flagcdn.com/at.svg" width="24" alt="AT"></span>
						<span class="txt">SPRACHE</span>
					</a>
					<a class="active" href="#pages" data-target="pages" data-bs-toggle="tab" title="Seiten">
						<span class="icn"><i class="fas fa-sitemap"></i></span>
						<span class="txt">SITEMAP</span>
					</a>
					<a class="" href="#objects" data-target="objects" data-bs-toggle="tab" title="Seiteninhalt">
						<span class="icn"><i class="far fa-file-alt"></i></span>
						<span class="txt">INHALT</span>
					</a>
					<a class="" href="#files" data-target="files" data-bs-toggle="tab" title="Dateien">
						<span class="icn"><i class="far fa-images"></i></span>
						<span class="txt">DATEIEN</span>
					</a>
					<a class="" href="#publish" data-target="publish" data-bs-toggle="tab" title="Publish">
						<span class="icn"><i class="fas fa-bolt"></i></span>
						<span class="txt">PUBLISH</span>
					</a>
					<a class="" href="#linkcheck" data-target="linkcheck" data-bs-toggle="tab" title="Link Checker">
						<span class="icn"><i class="fas fa-code"></i></span>
						<span class="txt">CHECK <br>LINKS</span>
					</a>
					<a class="" href="#settings" data-target="settings" data-bs-toggle="tab" title="Settings">
						<span class="icn"><i class="fas fa-cog"></i></span>
						<span class="txt">SETTINGS</span>
					</a>
				</div>
				<div class="mt-auto mb-auto">
					<div class="eddit-logo"><b>eddit.online</b><span> © busta.digital</span></div>
				</div>
				<a class="" href="" title="Logout">
					<span class="icn"><i class="fas fa-sign-out-alt"></i></span>
					<span class="txt">LOGOUT</span>
				</a>
			</div>
	</div>
	<div class="" id="lists">


		<div class="tab-content">

			<div class="tab-pane fade show active" id="pages">
				<div class="h-100 d-flex flex-column">
					<div class="toolbar">
						<div class="input-group input-group-sm">
							<input type="text" class="form-control" placeholder="Suche" id="nodesFilter">
							<button class="btn btn-light btn-search" type="button"><i class="fa fa-search"></i></button>
						</div>
					</div>
					<div class="scrollable flex-grow-1">
						<div id="nodeTree"></div>
					</div>
				</div>
			</div>

			<div class="tab-pane fade" id="objects">
				<div class="h-100 d-flex flex-column">
					<div class="toolbar">
						<div class="input-group input-group-sm">
							<input type="text" class="form-control" placeholder="Suche" id="objectsFilter">
							<button class="btn btn-light btn-search" type="button"><i class="fa fa-search"></i></button>
							<button class="btn btn-light" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-plus-square-o"></i></button>
							<button class="btn btn-light" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-copy"></i></button>
						</div>
					</div>
					<div class="pathbar">Home > Unser Angebot > Speisen</div>
					<div class="scrollable flex-grow-1">
						<div id="objectTree"></div>
					</div>
				</div>
			</div>

			<div class="tab-pane fade" id="files">
				<div class="folders d-flex flex-column" style="height: 37vh">
					<div class="toolbar">
						<div class="input-group input-group-sm">
							<input type="text" class="form-control" placeholder="Suche" id="foldersFilter">
							<button class="btn btn-light btn-search" type="button"><i class="fa fa-search"></i></button>
							<button class="btn btn-light" type="button"><i class="fa fa-cloud-upload"></i></button>
							<button class="btn btn-light" type="button" onclick="ce.filetree.tree.refresh()" data-toggle="tooltip" data-placement="right" data-container=".sidebar" title="" data-original-title="Ordner aktualisieren"><i class="fa fa-refresh"></i></button>
						</div>
					</div>
					<div class="scrollable flex-grow-1">
						<div id="fileTree" class="jstree jstree-3 jstree-default jstree-default-responsive" role="tree" aria-multiselectable="true" tabindex="0" aria-activedescendant="images" aria-busy="false"><ul class="jstree-container-ul jstree-children jstree-contextmenu" role="group"><li role="treeitem" aria-selected="false" aria-level="1" aria-labelledby="images_anchor" aria-expanded="true" id="images" class="jstree-node  jstree-open"><i class="jstree-icon jstree-ocl" role="presentation"></i><a class="jstree-anchor" href="#" tabindex="-1" id="images_anchor"><i class="jstree-icon jstree-themeicon fa fa-folder-o jstree-themeicon-custom" role="presentation"></i>images</a><ul role="group" class="jstree-children"><li role="treeitem" aria-selected="false" aria-level="2" aria-labelledby="images/cocktails_anchor" id="images/cocktails" class="jstree-node  jstree-leaf"><i class="jstree-icon jstree-ocl" role="presentation"></i><a class="jstree-anchor" href="#" tabindex="-1" id="images/cocktails_anchor"><i class="jstree-icon jstree-themeicon fa fa-folder-o jstree-themeicon-custom" role="presentation"></i>cocktails</a></li><li role="treeitem" aria-selected="true" aria-level="2" aria-labelledby="images/karte_anchor" id="images/karte" class="jstree-node  jstree-leaf"><i class="jstree-icon jstree-ocl" role="presentation"></i><a class="jstree-anchor jstree-clicked" href="#" tabindex="-1" id="images/karte_anchor"><i class="jstree-icon jstree-themeicon fa fa-folder-o jstree-themeicon-custom" role="presentation"></i>karte</a></li><li role="treeitem" aria-selected="false" aria-level="2" aria-labelledby="images/slideshow_anchor" id="images/slideshow" class="jstree-node  jstree-leaf"><i class="jstree-icon jstree-ocl" role="presentation"></i><a class="jstree-anchor" href="#" tabindex="-1" id="images/slideshow_anchor"><i class="jstree-icon jstree-themeicon fa fa-folder-o jstree-themeicon-custom" role="presentation"></i>slideshow</a></li><li role="treeitem" aria-selected="false" aria-level="2" aria-labelledby="images/sushi_anchor" aria-expanded="false" id="images/sushi" class="jstree-node  jstree-closed jstree-last"><i class="jstree-icon jstree-ocl" role="presentation"></i><a class="jstree-anchor" href="#" tabindex="-1" id="images/sushi_anchor"><i class="jstree-icon jstree-themeicon fa fa-folder-o jstree-themeicon-custom" role="presentation"></i>sushi</a></li></ul></li><li role="treeitem" aria-selected="false" aria-level="1" aria-labelledby="layout_anchor" aria-expanded="true" id="layout" class="jstree-node  jstree-open"><i class="jstree-icon jstree-ocl" role="presentation"></i><a class="jstree-anchor" href="#" tabindex="-1" id="layout_anchor"><i class="jstree-icon jstree-themeicon fa fa-folder-o jstree-themeicon-custom" role="presentation"></i>layout</a><ul role="group" class="jstree-children"><li role="treeitem" aria-selected="false" aria-level="2" aria-labelledby="layout/icons_anchor" id="layout/icons" class="jstree-node  jstree-leaf jstree-last"><i class="jstree-icon jstree-ocl" role="presentation"></i><a class="jstree-anchor" href="#" tabindex="-1" id="layout/icons_anchor"><i class="jstree-icon jstree-themeicon fa fa-folder-o jstree-themeicon-custom" role="presentation"></i>icons</a></li></ul></li><li role="treeitem" aria-selected="false" aria-level="1" aria-labelledby="presse_anchor" id="presse" class="jstree-node  jstree-leaf jstree-last"><i class="jstree-icon jstree-ocl" role="presentation"></i><a class="jstree-anchor" href="#" tabindex="-1" id="presse_anchor"><i class="jstree-icon jstree-themeicon fa fa-folder-o jstree-themeicon-custom" role="presentation"></i>presse</a></li></ul></div>
					</div>
				</div>

				<div class="files d-flex flex-column" style="height: 63vh">
					<div class="toolbar">
						<div class="input-group input-group-sm">
							<input type="search" class="form-control" placeholder="Dateisuche" id="filesFilter">
							<button class="btn btn-light btn-search" type="button"><i class="fa fa-search"></i></button>
							<button class="btn btn-light" type="button" onclick="ce.filetree.rename();" data-toggle="tooltip" data-placement="right" data-container=".sidebar" title="" data-original-title="Datei umbenennen"><i class="fa fa-exchange"></i></button>
							<button class="btn btn-light" type="button" onclick="ce.filetree.delete();" data-toggle="tooltip" data-placement="right" data-container=".sidebar" title="" data-original-title="Datei(en) löschen"><i class="fa fa-trash-o"></i></button>
						</div>
					</div>
					<div id="total-progress" style="display: none" class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0">
						<div class="progress-bar progress-bar-success" style="width:0%;" data-dz-uploadprogress=""></div>
					</div>
					<div class="scrollable flex-grow-1">
						<table id="fileList" class="table table-striped" style="width:100%">
							<thead>
								<tr>
									<th>Name</th>
									<th>Größe</th>
									<th>Datum</th>
								</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>

			<div class="tab-pane" id="languages">
				<div class="container d-flex flex-column h-100">
					<div class="mt-3">
						<h3>SPRACHEN</h3>
					</div>
					<div class="scrollable d-flex flex-column justify-content-evenly flex-grow-1">
						<a class="btn btn-secondary d-block" href="/c+e/main/lg=de-at">        <img class="float-start" src="https://flagcdn.com/at.svg" height="20" alt="AT"> AT deutsch</a>
						<a class="btn btn-outline-secondary d-block" href="#lg=de-de"><img class="float-start" src="https://flagcdn.com/de.svg" height="20" alt="AT"> DE deutsch</a>
						<a class="btn btn-outline-secondary d-block" href="#lg=de-ch"><img class="float-start" src="https://flagcdn.com/ch.svg" height="20" alt="AT"> CH deutsch</a>
						<a class="btn btn-outline-secondary d-block" href="#lg=it-ch"><img class="float-start" src="https://flagcdn.com/ch.svg" height="20" alt="AT"> CH italienisch</a>
						<a class="btn btn-outline-secondary d-block" href="#lg=fr-ch"><img class="float-start" src="https://flagcdn.com/ch.svg" height="20" alt="AT"> CH französisch</a>
						<a class="btn btn-outline-secondary d-block" href="#lg=fr-fr"><img class="float-start" src="https://flagcdn.com/fr.svg" height="20" alt="AT"> FR französisch</a>
						<a class="btn btn-outline-secondary d-block" href="#lg=it-it"><img class="float-start" src="https://flagcdn.com/it.svg" height="20" alt="AT"> IT italienisch</a>
						<a class="btn btn-outline-secondary d-block" href="#lg=en-gb"><img class="float-start" src="https://flagcdn.com/gb.svg" height="20" alt="AT"> GB englisch</a>
						<a class="btn btn-outline-secondary d-block" href="#lg=fr-be"><img class="float-start" src="https://flagcdn.com/be.svg" height="20" alt="AT"> BE französisch</a>
						<a class="btn btn-outline-secondary d-block" href="#lg=nl-be"><img class="float-start" src="https://flagcdn.com/be.svg" height="20" alt="AT"> BE flämisch</a>
						<a class="btn btn-outline-secondary d-block" href="#lg=nl-nl"><img class="float-start" src="https://flagcdn.com/nl.svg" height="20" alt="AT"> NL niederländisch</a>
						<a class="btn btn-outline-secondary d-block" href="#lg=es-es"><img class="float-start" src="https://flagcdn.com/es.svg" height="20" alt="AT"> ES spanisch</a>
					</div>
				</div>
			</div>

			<div class="tab-pane fade" id="publish">
				<div class="container d-flex flex-column h-100">
					<div class="mt-3">
						<h3>PUBLISH</h3>
					</div>
					<div class="scrollable d-flex flex-column justify-content-start flex-grow-1">
						<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Alias sit non exercitationem beatae consequatur unde rerum velit sequi impedit. Ad, at repellat veritatis esse beatae dolores qui officia eum accusantium!</p>

						<button class="btn btn-lg btn-primary">Setze die aktuelle Seite online</button>
					</div>
				</div>
			</div>

			<div class="tab-pane fade" id="linkcheck">
				<div class="container d-flex flex-column h-100">
					<div class="mt-3">
						<h3>LINK CHECK</h3>
					</div>
					<div class="scrollable d-flex flex-column justify-content-start flex-grow-1">
						<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Alias sit non exercitationem beatae consequatur unde rerum velit sequi impedit. Ad, at repellat veritatis esse beatae dolores qui officia eum accusantium!</p>

						<button class="btn btn-lg btn-primary">Prüfe alle Links</button>
					</div>
				</div>
			</div>

			<div class="tab-pane fade" id="settings">
				<div class="container d-flex flex-column h-100">
					<div class="mt-3">
						<h3>SETTINGS</h3>
					</div>
					<div class="scrollable d-flex flex-column justify-content-start flex-grow-1">

						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon1">@</span>
							<input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
						</div>
						
						<div class="input-group mb-3">
							<input type="text" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="basic-addon2">
							<span class="input-group-text" id="basic-addon2">@example.com</span>
						</div>
						
						<label for="basic-url" class="form-label">Your vanity URL</label>
						<div class="input-group mb-3">
							<span class="input-group-text" id="basic-addon3">https://example.com/users/</span>
							<input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3">
						</div>
						
						<div class="input-group mb-3">
							<span class="input-group-text">$</span>
							<input type="text" class="form-control" aria-label="Amount (to the nearest dollar)">
							<span class="input-group-text">.00</span>
						</div>
						
						<div class="input-group mb-3">
							<input type="text" class="form-control" placeholder="Username" aria-label="Username">
							<span class="input-group-text">@</span>
							<input type="text" class="form-control" placeholder="Server" aria-label="Server">
						</div>
						
						<div class="input-group">
							<span class="input-group-text">With textarea</span>
							<textarea class="form-control" aria-label="With textarea"></textarea>
						</div>
						
						<div class="btn-group mt-4" role="group">
							<button class="btn btn-outline-secondary" onclick="$('#grid').removeClass('data').addClass('web')">WEB</button>
							<button class="btn btn-outline-secondary" onclick="$('#grid').removeClass('web').addClass('data')">DATA</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="gutter-col gutter-column-1">
		<div class="handle"></div>
	</div>
	<div id="content">
		<iframe id="web" src="/de/2/" frameborder="0"></iframe>
		<table id="data" class="table table-striped" style="width:100%">
			<thead>
				<tr>
					<th>First name</th>
					<th>Last name</th>
					<th>Position</th>
					<th>Office</th>
					<th>Start date</th>
					<th>Salary</th>
				</tr>
			</thead>
		</table>
	</div>
	</div>

	<div class="modal fade" id="exampleModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg XXXmodal-dialog-centered modal-dialog-scrollable">
	<div class="modal-content">
		<div class="modal-header">
		<h5 class="modal-title" id="exampleModalLabel">Neues Objekt / Inhalt kopieren</h5>
		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		</div>
		<div class="modal-body">
		...
		</div>
		<div class="modal-footer">
		<button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Abbrechen</button>
		<button type="button" class="btn btn-primary">Anlegen</button>
		</div>
	</div>
	</div>
	</div>

	<div class="offcanvas offcanvas-end" data-bs-backdrop="false" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
	<div class="offcanvas-header">
	<h3>EDITOR</h3>
	<button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
	</div>
	<div class="offcanvas-body">
	<div>
		Some text as placeholder. In real life you can have the elements you have chosen. Like, text, images, lists, etc.
	</div>
	<p>Clicked on ROW ID <span id="row_id">_</span></p>
	<p id="row_data"></p>
	<div class="dropdown mt-3">
		<button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown">
		Dropdown button
		</button>
		<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
		<li><a class="dropdown-item" href="#">Action</a></li>
		<li><a class="dropdown-item" href="#">Another action</a></li>
		<li><a class="dropdown-item" href="#">Something else here</a></li>
		</ul>
	</div>
	</div>
</div>

<script type="text/javascript" src="/eddit/js/eddit.js"></script>
</body>
</html>