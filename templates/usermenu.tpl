
NICHT MEHR IN VERWENDUNG! STEHT INLINE IM screen_main.tpl

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
