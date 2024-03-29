var eddit_state = 
{
	contentWidth: 0,
	gridSizes: '64px 250px 1px 1fr'
}

loadState();

function resizeContent() {
	console.log('resizeContent');
	eddit_state.gridSizes = document.querySelector('#grid').style['grid-template-columns'];
	eddit_state.contentWidth = $('#content').outerWidth() + 1;
	// if ($('#lists').width() == 0)
	// {
	// 	$('#nav .nav').hide();
	// }
	// else
	// {
	// 	$('#nav .nav').show();
	// }
	$('#offcanvasExample').css( { width: eddit_state.contentWidth } );
}
function loadState() {
	var _state = JSON.parse( window.localStorage.getItem('eddit_state') );
	if (typeof _state == 'object' && _state != null)
	{
		console.log(_state)
		eddit_state = _state;
		$('#grid').css('grid-template-columns', eddit_state.gridSizes);
		console.log( 'loadState', eddit_state);
	}
}
function saveState() {
	window.localStorage.setItem('eddit_state', JSON.stringify(eddit_state));
	console.log( 'saveState', eddit_state);
}
function hideLists() {
	
	$('#grid').css('grid-template-columns', '64px 0px 1px 1fr');
}
// https://split.js.org/#/split-grid
// https://github.com/nathancahill/split/tree/master/packages/split-grid
var grid = Split({ // gutters specified in options
	columnGutters: [{
		track: 2,
		element: document.querySelector('.gutter-column-1'),
	}],
	columnMinSizes: { 1: 250 },
	snapOffset: 0,
	onDrag: resizeContent,
	onDragEnd: saveState
})
var debugRow = {};
$(document).ready( function () {

	resizeContent();
	var bsOffcanvas = new bootstrap.Offcanvas( $('#offcanvasExample') );

	var dataTable = $('#data')
		.DataTable( {
			fixedHeader: {
				header: true,
				headerOffset: 37
			},
			dom: '<"data d-flex flex-column h-100"<"toolbar d-flex justify-content-between"fl><"scrollable flex-grow-1"t><"toolbar-bottom d-flex justify-content-between align-items-center"ip>>',
			ajax: "/prototype/datatable.json",
			select: true,
			stateSave: true,
			responsive: true,
			pagingType: "full_numbers",
			language: {
				"sEmptyTable":   	ce.i18n.datatable_sEmptyTable,
				"sInfo":         	ce.i18n.datatable_sInfo,
				"sInfoEmpty":    	ce.i18n.datatable_sInfoEmpty,
				"sInfoFiltered": 	ce.i18n.datatable_sInfoFiltered,
				"sInfoPostFix":  	ce.i18n.datatable_sInfoPostFix,
				"sInfoThousands":  	ce.i18n.datatable_sInfoThousands,
				"sLengthMenu":   	ce.i18n.datatable_sLengthMenu,
				"sLoadingRecords": 	ce.i18n.datatable_sLoadingRecords,
				"sProcessing":   	ce.i18n.datatable_sProcessing,
				"sSearch":       	ce.i18n.datatable_sSearch,
				"sZeroRecords":  	ce.i18n.datatable_sZeroRecords,
				"select": {
					"rows": {
						_: ce.i18n.datatable_select_rowsX,
						0: ce.i18n.datatable_select_rows0,
						1: ce.i18n.datatable_select_rows1
					}
				},
				"oPaginate": {
					"sFirst":    	ce.i18n.datatable_oPaginate_sFirst,
					"sPrevious": 	ce.i18n.datatable_oPaginate_sPrevious,
					"sNext":     	ce.i18n.datatable_oPaginate_sNext,
					"sLast":     	ce.i18n.datatable_oPaginate_sLast
				},
				"oAria": {
					"sSortAscending":  ce.i18n.datatable_oAria_sSortAscending,
					"sSortDescending": ce.i18n.datatable_oAria_sSortDescending
				}
			}
		} )
		.on('dblclick', 'tr', function () {
			dataTable.rows(this).select();
			bsOffcanvas.show();

			debugRow = dataTable.row(this);
			var index = dataTable.row(this).index();
			$('#offcanvasExample #row_id').html(index);
			$('#offcanvasExample #row_data').html(debugRow.data().toString());
			// console.log('dblclick debugRow',debugRow);
		});

	var filesTable = $('#fileList')
		.DataTable( {
			dom: 't',
			ajax: "/prototype/files.json",
			select: true,
			stateSave: true,
			responsive: false,
			"columnDefs": [
				{
					"targets": 0,
					"orderable": false,
					"render": function ( data, type, row )	// bild
					{
						if (data.match(/svg$/))
							return '<div class="draggable" data-file="'+data+'" data-size="'+row[2]+'" data-date="'+row[3]+" "+row[4]+'"><img src="/assets/'+data+'" style="max-width:60px"><i class="icon"></i></div>'; // +' ('+ row[1]+')';
						else if (data.match(/gif|jp?g|png$/i))
							return '<div class="draggable" data-file="'+data+'" data-size="'+row[2]+'" data-date="'+row[3]+" "+row[4]+'"><img src="/media/W/60/'+data+'"><i class="icon"></i></div>'; // +' ('+ row[1]+')';
						else
							return '<div class="draggable" data-file="'+data+'" data-size="'+row[2]+'" data-date="'+row[3]+" "+row[4]+'"><img src="/c+e/assets/icons/document.png"><i class="icon"></i></div>';
					}
				},
				{
					"targets": 1,
					"orderable": true,
					"render": function ( data, type, row )	// name und groesse
					{
						var deleteButton = '<a href="javascript:;" class="btn fa fa-trash-o" style="font-size:14px; padding: 4px 10px 0 0" onclick="ce.filetree.delete(\''+row[1]+'\')"></a>';
						var renameButton = '<a href="javascript:;" class="btn fa fa-exchange" style="font-size:14px; padding: 4px 10px 0 0" onclick="ce.filetree.rename(\''+row[1]+'\')"></a>';
						content = '<span>'+data+'</span>'+'<span class="i">'+row[2]+' kB</span>'; // +' ('+ row[1]+')';
						return content;
					}
				},
				{
					"targets": 2,
					"orderable": true,
					"render": function ( data, type, row )	// datum
					{
						var deleteButton = '<a href="javascript:;" class="btn fa fa-trash-o" style="font-size:14px; float: right; padding-right: 3px;" onclick="ce.filetree.delete(\''+row[1]+'\')"></a>';
						var content = '<span>'+row[3]+'</span>'+'<span class="i">'+row[4]+'</span>'; // +' ('+ row[1]+')';
						return content;
					}
				}
			]

		} )
		.on('dblclick', 'tr', function () {
			filesTable.rows(this).select();
			// bsOffcanvas.show();
			var index = filesTable.row(this).index();
			// $('#offcanvasExample #row_id').html(index);
			console.log('dblclick',this,index);
		});



	// $('#nav')
	// 	.on('show.bs.tab', function (event) {
	// 		// event.target // newly activated tab
	// 		// event.relatedTarget // previous active tab
	// 		console.log('show tab',event.target);
	// 	});
	$('body')
		.on('show.bs.tab', function (event) {
			// event.target // newly activated tab
			// event.relatedTarget // previous active tab
			var target= $(event.target).data('target')
			$('body').attr('class',target);
			console.log('show tab',target);
		});

	$('#exampleModal')
		.on('show.bs.modal', function () {
			// console.log('show modal');
		});

	$('#offcanvasExample')
		.on('show.bs.offcanvas', function () {
			eddit_state.contentWidth = $('#content').outerWidth() + 1;
			// console.log('show offcanvas, resize to',contentWidth);
			$(this).css( { width: eddit_state.contentWidth } )
		})

	$('#nodeTree').jstree(
	{
		"core" :
		{
			"animation" : 100,
			'data' :
			{
				'url' : '/prototype/nodes.json',
				// 'url' : '/eddit/cmd/nodes.php',
				'data' : function () {
					return { 'lg' : 'de' };
				},
				'method': 'POST'
			},
			'themes':
			{
				'name': 'default',
				'responsive': true
			},
			"check_callback" : true
		},
		"types" : ce.types.nodes,
		"state" : { "key" : "nodeTree", "events": "changed.jstree open_node.jstree close_node.jstree", "filter" : "selected" },
		"plugins" : ["contextmenu", "dnd", "state", "types", "search"],
	});


	$('#objectTree').jstree(
	{
		"core" :
		{
			"animation" : 100,
			'data' :
			{
				'url' : '/prototype/objects.json',
				// 'url' : '/eddit/cmd/objects.php',
				'data' : function () {
					return { 'lg' : 'de' };
				},
				'method': 'POST'
			},
			'themes':
			{
				'name': 'default',
				'responsive': true
			},
			"check_callback" : true
		},
		"types" : ce.types.objects,
		"state" : { "key" : "nodeTree", "events": "changed.jstree open_node.jstree close_node.jstree", "filter" : "selected" },
		"plugins" : ["contextmenu", "dnd", "state", "types", "search"],
	});

});