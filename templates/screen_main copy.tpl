<section class="sidebar extended navtree animated fadeIn">
	<script>
	// if ($.cookie('ceSidebar') == 'retracted') {
	//     $('.sidebar').removeClass('extended').addClass('retracted');
	//     $('.wrapper').removeClass('retracted').addClass('extended');
	// }
	// if ($.cookie('ceSidebar') == 'extended') {
	//     $('.wrapper').removeClass('extended').addClass('retracted');
	//     $('.sidebar').removeClass('retracted').addClass('extended');
	// }
	</script>
	<ul class="nav nav-tabs nav-justified">
		<li class="active"><a href="#pages" data-toggle="tab"><i class="fa fa-sitemap"></i> {#nodetree_head#}</a></li>
		<li><a href="#objects" data-toggle="tab"><i class="fa fa-th-list"></i> {#objecttree_head#}</a></li>
		<li><a href="#files" data-toggle="tab"><i class="fa fa-picture-o"></i> {#filetree_head#}</a></li>
	</ul>
	<div class="tab-content panel panel-default">

		<div class="tab-pane active" id="pages">
			<div class="panel-body">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="{#nodetree_search#}" id="nodesFilter">
					<div class="input-group-btn">
						<button class="btn btn-default btn-search" type="button"><i class="fa fa-search"></i></button>
					</div>
				</div>
			</div>
			<div class="panel-body tree-body">
				<div class="scrollable">
					<div id="nodeTree" Xstyle="margin-left: -22px"></div>
				</div>
			</div>
		</div>

		<div class="tab-pane" id="objects">
			<div class="panel-body">
				<div class="input-group">
					<div class="input-group-btn">
						<button class="btn btn-default" type="button" onclick="ce.objecttree.modal('ce.objecttree.new',{ IDparent: 0 });" data-toggle="tooltip" data-placement="right" data-container=".sidebar" title="{#button_objects_new#}"><i class="fa fa-plus"></i></button>
					</div>
					<input type="text" class="form-control" placeholder="{#objecttree_search#}" id="objectsFilter">
					<div class="input-group-btn">
						<button class="btn btn-default btn-search" type="button"><i class="fa fa-search"></i></button>
					</div>
				</div>
			</div>
			<div class="panel-body tree-body">
				<div class="scrollable">
					<div id="objectTree" Xstyle="margin-left: -22px"></div>
				</div>
			</div>
		</div>

		<div class="tab-pane" id="files">
			<div class="panel-body">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="{#filetree_search#}" id="foldersFilter">
					<div class="input-group-btn">
						<button class="btn btn-default btn-search" type="button"><i class="fa fa-search"></i></button>
					</div>
				</div>
			</div>
			<div class="panel-body tree-body">
				<div class="scrollable half-height" style="clear: left; height: 20%">
					<div id="fileTree"></div>
				</div>
				<div class="filesContainer half-height" id="filesDropzone" style="height: 80%">
					<div class="scrollable">
						<div class="panel-body">
							<div class="input-group">
								<input type="search" class="form-control" placeholder="{#filelist_search#}" id="filesFilter">
								<div class="input-group-btn">
									<button class="btn btn-default btn-search" type="button"><i class="fa fa-search"></i></button>
								</div>
							</div>
							<div id="total-progress" style="display: none" class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0">
								<div class="progress-bar progress-bar-success" style="width:0%;" data-dz-uploadprogress></div>
							</div>
						</div>

						<div id="filesContainer" class="">
							<table id="filesLister" class="table XXtable-bordered table-striped table-condensed display responsive datatable dataTable no-footer dtr-inline" style="width:100%">
								<thead>
									<tr>
										<th class="nosort"></th>
										<th>{#filelist_name#}</th>
										<th>{#filelist_date#}</th>
									</tr>
								</thead>
							</table>
							<div id="filesUploader" class="table table-striped table-condensed display" style="width:100%"></div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<div class="sidebar-handle">
		<i class="fa fa-ellipsis-v"></i>
	</div>
{*include file="loading.tpl"*}
</section>

<section id="wrapper" class="wrapper retracted animated fadeIn">

	<script>
	// if (!($('body').is('.dashboard')))
	// {
	//     if ($.cookie('clickeditSidebar') == 'retracted') {
	//         $('.wrapper').removeClass('retracted').addClass('extended');
	//     }
	//     if ($.cookie('clickeditSidebar') == 'extended') {
	//         $('.wrapper').removeClass('extended').addClass('retracted');
	//     }
	// }
	</script>

	<nav class="user-menu">
		<section class="user-menu-wrapper datatable">
			<div class="btn-group" style="margin-left:-">
				<a href="javascript:;" class="btn btn-lg btn-flat fa fa-pencil-square-o" data-toggle="tooltip" data-placement="bottom" data-container="nav.user-menu" title="{#button_datatable_edit#}" onclick="ce.datatable.edit()"></a>
			</div>
			<div class="btn-group">
				<a href="javascript:;" class="btn btn-lg btn-flat fa fa-plus-square-o" data-toggle="tooltip" data-placement="bottom" data-container="nav.user-menu" title="{#button_datatable_new#}" onclick="ce.datatable.new()"></a>
			</div>
			<div class="btn-group">
				<a href="javascript:;" class="btn btn-lg btn-flat fa fa-clone" data-toggle="tooltip" data-placement="bottom" data-container="nav.user-menu" title="{#button_datatable_clone#}" onclick="ce.datatable.clone()"></a>
			</div>
			<div class="btn-group">
				<a href="javascript:;" class="btn btn-lg btn-flat fa fa-trash-o" data-toggle="tooltip" data-placement="bottom" data-container="nav.user-menu" title="{#button_datatable_delete#}" onclick="ce.datatable.delete()"></a>
			</div>
			<div class="btn-group">
				<a href="javascript:;" class="btn btn-lg btn-flat fa fa-cloud-upload" data-toggle="tooltip" data-placement="bottom" data-container="nav.user-menu" title="{#button_datatable_upload#}" onclick="ce.datatable.upload()"></a>
			</div>
			<div class="btn-group">
				<a href="javascript:;" class="btn btn-lg btn-flat fa fa-cloud-download" data-toggle="tooltip" data-placement="bottom" data-container="nav.user-menu" title="{#button_datatable_download#}" onclick="ce.datatable.download()"></a>
			</div>
		</section>
		<div id="messages" class="animated"></div>
	</nav>
	<ol class="breadcrumb breadcrumb-nav"></ol>
	<div class="web-preview">
		<iframe id="webpreview" name="webpreview" src="{* url foo=1 bar=2 *}" style="width: 100%; height: 100%; border:0; position: absolute;"></iframe>
	</div>
	<div class="mobile-preview">
		<div id="top" class="panel panel-default panel-block panel-title-block">
			<div class="panel-heading">
				<div>
					<i class="fa fa-edit"></i>
					<h1>
						<span class="page-title">Mobile Ansicht</span>
						<small>
							Sie sehen ihre Website nun in der mobilen Ansicht.
						</small>
					</h1>
				</div>
			</div>
		</div>
		<div class="panel panel-default panel-block preface">
			<div class="list-group">
				<div class="list-group-item button-demo">
					<h4 class="section-title preface-title">Ansicht</h4>
					<p>Die Darstellung ihrer Website erfolgt ähnlich wie auf einem mobilen Endgerät.</p>
				</div>
			</div>
		</div>
		<div class="panel panel-default panel-block preface">
			<div class="list-group">
				<div class="list-group-item button-demo">
					<h4 class="section-title preface-title">Editieren</h4>
					<p>Die Möglichkeiten zur Inline Bearbeitung sind in dieser Ansicht sehr eingeschränkt.</p>
				</div>
			</div>
		</div>
	</div>
	<div class="datatable" id="datatable_container">
	</div>
	<div id="editor" class="property-editor animated"></div>
</section>
<div class="modal fade" id="modal" tabindex="-1" role="dialog"></div>
<div id="filepicker-dropper"><i class="fa fa-arrow-circle-o-down"></i></div>
<div style="display:none" id="template">
	<div class="dz-preview dz-file-preview">
		<div class="dz-image">
			<img data-dz-thumbnail />
		</div>
		<div class="dz-details">
			<div class="dz-filename"><span data-dz-name></span></div>
			<div class="dz-size" data-dz-size></div>
		</div>
		<div class="dz-status">
			<div class="dz-progress progress progress-striped"><div class="progress-bar progress-bar-success active" style="width:0%;" data-dz-uploadprogress></div></div>
			<div class="dz-success-mark" style="display: none"><span>✔</span></div>
			<div class="dz-error-mark" style="display: none"><span>✘</span></div>
			<div class="dz-error-message"><span data-dz-errormessage></span></div>
		</div>
	</div>
</div>
