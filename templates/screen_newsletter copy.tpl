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
		<li><a href="#pages" data-toggle="tab"><i class="fa fa-sitemap"></i> {#nodetree_head#}</a></li>
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

	</div>
	<div class="sidebar-handle">
		<i class="fa fa-ellipsis-v"></i>
	</div>
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
			<div class="btn-group">
				<a href="javascript:;" class="btn btn-lg btn-flat resetfilter hidden hidden-xs" onclick="ce.datatable.searchMerged[ce.IDnode]={};ce.datatable.page(0);ce.datatable.load()"><span class="fa fa-ban"></span> &nbsp; <small>{#button_datatable_resetfilter#}</small></a>
			</div>
		</section>
		<div id="messages" class="animated"></div>
	</nav>
	<div id="editor" class="property-editor animated" style="opacity:1;z-index:100">



		<div class="panel panel-default panel-block panel-title-block">
		    <div class="panel-heading">
		        <div>
		            <i class="icon-edit"></i>
		            <h1 style="padding-top: 5px">
		                <span class="page-title">NEWSLETTER</span>
		                <small>
		                    {#form_editnow#}
		                </small>
		            </h1>
		            <div class="pull-right">
		                <a href="javascript:;" onclick="ce.editor.save()" class="btn btn-success">
		                    <i class="icon-check-sign"></i>
		                    <span>
		                        Senden
		                    </span>
		                </a>
		            </div>
		        </div>
		    </div>
		</div>
		<div class="properties">
		    <form>
		    	<h6>Seite</h6>
				<div class="input-group">
				    <span class="input-group-addon">
				        <i class="fa fa-file-text-o"></i>
				    </span>
					<div class="link-field clearfix">
					    <div class="dropzone-link" data-accept-type="objects">
					        <div class="dropzone"></div>
					        <input name="page" type="hidden" class="link" value="">
					        <span class="unselectable">Drop page here</span>
					    </div>
					</div>
				</div>
		    	<h6>Betreff</h6>
				<div class="input-group">
				    <span class="input-group-addon">
				        <i class="fa fa-comment-o"></i>
				    </span>
					<input name="subject" type="text" class="form-control" placeholder="Write your subject here" value="">
				</div>
		    	<h6>Versandliste</h6>
				<div class="input-group">
				    <span class="input-group-addon">
				        <i class="fa fa-list-ul"></i>
				    </span>
					<div class="link-field clearfix">
					    <div class="dropzone-link" data-accept-type="newsletter">
					        <div class="dropzone"></div>
					        <input name="data" type="hidden" class="link" value="">
					        <span class="unselectable">Drop list here</span>
					    </div>
					</div>
				</div>
			</form>

<div style="clear:both; height: 40px"></div>

<table id="newsletters" class="sessions table table-bordered table-striped table-condensed table-small datatable"></table>
{literal}
<script type="text/javascript">
		newsletters = $('#newsletters')
		.DataTable(
		{
			// "processing": false,
			// "serverSide": true,
			"columnDefs": [
				{"targets":0,"orderable":true,"searchable":true,"type":"text","name":"site","title":"Site"},
				{
					"targets":1,
					"orderable":true,
					"searchable":false,
					"type":"num",
					"name":"visitors",
					"title":"Visitors",
                    "render": function ( data, type, row )
                    {
						if ( type === 'display' || type === 'filter' )
                    	{
                    		return '<div class="progress progress-striped" style="height: 12px"><div class="progress-bar progress-bar-success" style="width:'+data+'%;"></div></div>';
                    	}
                    	else
                    	{
                    		return data;
                    	}
                    }

				},
				{"targets":2,"orderable":true,"searchable":false,"type":"text","name":"logins","title":"Logins"},
				{"targets":3,"orderable":true,"searchable":true,"type":"text","name":"admins","title":"Admins"},
			],
			"dom": 'T<"clear">rtip',
			"order": [[1, "desc"]],
	        "paging": true,
			"pagingType": "full_numbers",
	        "searching": true,
	        "info": true,
	        "responsive": true,
			"pageLength": 10,
			"tableTools": {
				"sRowSelect": "os",
				"aButtons": []
			},
			"language": {
        		"search": ""
  			},
			"ajax":
			{
				"url": "/eddit/ajax/newsletter.php",
				"data": { lg : ce.IDlanguage },
				"method": 'POST'
			}
		});

	// $('<div class="input-group"><span class="input-group-addon">Suche</span></div>').prependTo('#DataTables_Table_0_filter label');
	// $('#DataTables_Table_0_filter input').appendTo('.input-group');
</script>
{/literal}
		</div>
	</div>
</section>
<div class="modal fade" id="modal" tabindex="-1" role="dialog"></div>

