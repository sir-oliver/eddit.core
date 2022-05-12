<nav class="user-menu">
    <section class="user-menu-wrapper content">
{*
        <div class="btn-group">
            <a href="javascript:;" class="btn btn-lg btn-flat fa fa-eye" data-toggle="dropdown" aria-expanded="false" title="{#button_viewoptions#}"></a>
            <ul class="dropdown-menu dropdown-menu-arrow dropdown-menu-right themes" role="menu">
                <li class="dropdown-header">{#dropdown_view#}</li>
                <li><a href="#" data-theme="theme-default"><span class="fa fa-laptop"></span> {#dropdown_view_standard#}</a></li>
                <li><a href="#" data-theme="theme-wide"><span class="fa fa-desktop"></span> {#dropdown_view_wide#}</a></li>
                <li><a href="#" data-theme="theme-mobile"><span class="fa fa-mobile"></span> {#dropdown_view_mobile#}</a></li>
            </ul>
        </div>

        <div class="btn-group">
            <a href="javascript:;" class="btn btn-lg btn-flat fa fa-bolt" data-toggle="dropdown" aria-expanded="false" title="{#button_setonline#}"></a>
            <ul class="dropdown-menu dropdown-menu-arrow dropdown-menu-right" role="menu">
                <li class="dropdown-header">{#dropdown_setonline#}</li>
                <li><a href="#" onclick="ce.nodetree.setonline('de')"><span class="flag-icon flag-icon-de"></span> Deutsch</a></li>
                <li><a href="#" onclick="ce.nodetree.setonline('en')"><span class="flag-icon flag-icon-gb"></span> Englisch</a></li>
            </ul>
        </div>

        <div class="btn-group">
            <a href="javascript:;" class="btn btn-lg btn-flat fa fa-flag-o" data-toggle="dropdown" title="{#button_language#}" aria-expanded="false"></a>
            <ul class="dropdown-menu dropdown-menu-arrow dropdown-menu-right" role="menu">
                <li class="dropdown-header">{#dropdown_languages#}</li>
                <li><a href="#" onclick="ce.common.changeLanguage('de')"><span class="flag-icon flag-icon-de"></span> Deutsch</a></li>
                <li><a href="#" onclick="ce.common.changeLanguage('en')"><span class="flag-icon flag-icon-gb"></span> Englisch</a></li>
            </ul>
        </div>
*}
    </section>
    <section class="user-menu-wrapper datatable">
        <div class="btn-group">
            <a href="javascript:;" class="btn btn-lg btn-flat fa fa-pencil-square-o" data-toggle="tooltip" data-placement="bottom" data-container="div.datatable" title="{#button_datatable_edit#}" onclick="ce.datatable.edit()"></a>
        </div>
        <div class="btn-group">
            <a href="javascript:;" class="btn btn-lg btn-flat fa fa-plus-square-o" data-toggle="tooltip" data-placement="bottom" data-container="div.datatable" title="{#button_datatable_new#}" onclick="ce.datatable.new()"></a>
        </div>
        <div class="btn-group">
            <a href="javascript:;" class="btn btn-lg btn-flat fa fa-clone" data-toggle="tooltip" data-placement="bottom" data-container="div.datatable" title="{#button_datatable_clone#}" onclick="ce.datatable.clone()"></a>
        </div>
        <div class="btn-group">
            <a href="javascript:;" class="btn btn-lg btn-flat fa fa-trash-o" data-toggle="tooltip" data-placement="bottom" data-container="div.datatable" title="{#button_datatable_delete#}" onclick="ce.datatable.delete()"></a>
        </div>
        <div class="btn-group">
            <a href="javascript:;" class="btn btn-lg btn-flat fa fa-cloud-upload" data-toggle="tooltip" data-placement="bottom" data-container="div.datatable" title="{#button_datatable_upload#}" onclick="ce.datatable.upload()"></a>
        </div>
        <div class="btn-group">
            <a href="javascript:;" class="btn btn-lg btn-flat fa fa-cloud-download" data-toggle="tooltip" data-placement="bottom" data-container="div.datatable" title="{#button_datatable_download#}" onclick="ce.datatable.download()"></a>
        </div>
{*
        <div class="btn-group">
            <a href="javascript:;" class="btn btn-lg btn-flat fa fa-flag-o" data-toggle="dropdown" title="{#button_language#}" aria-expanded="false"></a>
            <ul class="dropdown-menu dropdown-menu-arrow dropdown-menu-right" role="menu">
                <li class="dropdown-header">{#dropdown_languages#}</li>
                <li><a href="#"><span class="flag-icon flag-icon-de"></span> Deutsch</a></li>
                <li><a href="#"><span class="flag-icon flag-icon-gb"></span> Englisch</a></li>
            </ul>
        </div>
*}
    </section>
    <div id="messages" class="animated"></div>





    <div class="panel panel-default nav-view theme-view">
        <div class="arrow user-menu-arrow"></div>
        <div class="panel-heading">
            <i class="fa fa-eye"></i>
            <span>{#dropdown_view#}</span>
            <a href="javascript:;" class="close-user-menu"><i class="fa fa-close"></i></a>
        </div>
        <ul class="list-group">
            <li class="list-group-item" data-theme="default">
                <a href="javascript:;">
                    <i><b class="dark"></b></i>
                    <div class="text-holder">
                        <span class="title-text">
                            {#dropdown_view_standard#}
                        </span>
                    </div>
                </a>
            </li>
            <li class="list-group-item" data-theme="theme-wide">
                <a href="javascript:;">
                    <i><b class="terminal"></b></i>
                    <div class="text-holder">
                        <span class="title-text">
                            {#dropdown_view_wide#}
                        </span>
                    </div>
                </a>
            </li>
            <li class="list-group-item" data-theme="theme-mobile">
                <a href="javascript:;">
                    <i><b></b></i>
                    <div class="text-holder">
                        <span class="title-text">
                            {#dropdown_view_mobile#}
                        </span>
                    </div>
                </a>
            </li>
        </ul>
    </div>




    <div class="panel panel-default nav-view set-online-view">
        <div class="arrow user-menu-arrow"></div>
        <div class="panel-heading">
            <i class="fa fa-bolt"></i>
            <span>{#dropdown_setonline#}</span>
            <a href="javascript:;" class="close-user-menu"><i class="fa fa-close"></i></a>
        </div>
        <ul class="list-group">
            <li class="list-group-item">
                <a onclick="ce.nodetree.setonline('de')">
                    <i><span class="flag-icon flag-icon-de"></span></i>
                    <div class="text-holder">
                        <span class="title-text">
                            Deutsch online setzen
                        </span>
                    </div>
                </a>
            </li>
            <li class="list-group-item">
                <a onclick="ce.nodetree.setonline('en')">
                    <i><span class="flag-icon flag-icon-gb"></span></i>
                    <div class="text-holder">
                        <span class="title-text">
                            Englisch online setzen
                        </span>
                    </div>
                </a>
            </li>
        </ul>
    </div>
</nav>
