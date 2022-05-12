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
		<li><a href="#pages" data-toggle="tab"><i class="fa fa-envelope-o"></i> {#newsletter_head#}</a></li>
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

<section id="wrapper" class="wrapper retracted animated fadeIn datatable">
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
	        <div class="btn-group pull-right">
	            <a href="javascript:;" class="btn btn-lg btn-flat fa fa-list" data-toggle="dropdown" aria-expanded="false" title="{#button_viewoptions#}"></a>
	            <ul class="dropdown-menu dropdown-menu-arrow dropdown-menu-right themes" role="menu">
	                <li class="dropdown-header">{#dropdown_view#}</li>
	                <li><a href="javascript:;" onclick="ce.newsletter.setPageLength(10)">{#dropdown_viewoptions#|sprintf:10}</a></li>
	                <li><a href="javascript:;" onclick="ce.newsletter.setPageLength(20)">{#dropdown_viewoptions#|sprintf:20}</a></li>
	                <li><a href="javascript:;" onclick="ce.newsletter.setPageLength(30)">{#dropdown_viewoptions#|sprintf:30}</a></li>
	            </ul>
	        </div>
			<div class="btn-group">
				<a href="javascript:;" class="btn btn-lg btn-flat fa fa-plus-square-o" data-toggle="tooltip" data-placement="bottom" data-container="nav.user-menu" data-viewport="#wrapper" title="{#button_newsletter_new#}" onclick="ce.newsletter.new()"></a>
			</div>
{*
			<div class="btn-group" style="margin-left:-">
				<a href="javascript:;" class="btn btn-lg btn-flat fa fa-pencil-square-o" data-toggle="tooltip" data-placement="bottom" data-container="nav.user-menu" title="{#button_newsletter_edit#}" onclick="ce.newsletter.edit()"></a>
			</div>
			<div class="btn-group">
				<a href="javascript:;" class="btn btn-lg btn-flat fa fa-clone" data-toggle="tooltip" data-placement="bottom" data-container="nav.user-menu" title="{#button_newsletter_clone#}" onclick="ce.newsletter.clone()"></a>
			</div>
			<div class="btn-group">
				<a href="javascript:;" class="btn btn-lg btn-flat fa fa-trash-o" data-toggle="tooltip" data-placement="bottom" data-container="nav.user-menu" title="{#button_newsletter_delete#}" onclick="ce.newsletter.delete()"></a>
			</div>
*}
		</section>
		<div id="messages" class="animated"></div>
	</nav>
	<div class="datatable" id="datatable_container">
		<table id="newsletters" class="table table-hover table-striped table-condensed display responsive datatable" width="100%"></table>
	</div>
	<div id="editor" class="property-editor animated">
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
		                <a href="javascript:;" onclick="ce.newsletter.save()" class="btn btn-success">
		                    <i class="icon-check-sign"></i>
		                    <span>
		                        Senden
		                    </span>
		                </a>
		                <a href="javascript:;" onclick="ce.newsletter.close()" class="btn btn-danger cancel">
		                    <i class="icon-remove"></i>
		                    <span>
		                        {#form_cancel#}
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

		</div>
	</div>
</section>
<div class="modal fade" id="modal" tabindex="-1" role="dialog"></div>

