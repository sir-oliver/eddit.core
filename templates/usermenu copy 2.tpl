<nav class="user-menu">
{*
    <section class="user-menu-wrapper general">
        <a href="javascript:;" data-toggle="tooltip" data-placement="bottom" data-container="#wrapper" title="{#button_language#}" data-expand=".languages-view" class="dropdown languages-menu-access">
            <i><span id="currentLanguage" class="fa fa-flag-o"></span></i>
        </a>
        <a href="/eddit/?logout=1" data-toggle="tooltip" data-placement="bottom" data-container="#wrapper" title="{#button_logout#}">
            <i class="fa fa-sign-out"></i>
        </a>
    </section>
*}
    <section class="user-menu-wrapper content">
{*
        <a href="javascript:;" data-toggle="tooltip" data-placement="bottom" data-container="div.web-preview" title="{#button_viewoptions#}" data-expand=".theme-view" class="dropdown view-menu-access">
            <i class="fa fa-eye"></i>
        </a>
        <a href="javascript:;" data-toggle="tooltip" data-placement="bottom" data-container="div.web-preview" title="{#button_setonline#}" data-expand=".set-online-view" class="dropdown set-online-access">
            <i class="fa fa-bolt"></i>
        </a>
        <a href="javascript:;" data-toggle="tooltip" data-placement="bottom" data-container="div.web-preview" title="{#button_language#}" data-expand=".languages-view" class="dropdown languages-menu-access">
            <i><span id="currentLanguage" class="fa fa-flag-o"></span></i>
        </a>
*}
        <div class="btn-group">
            <a href="javascript:;" class="btn btn-blank fa fa-eye" data-toggle="dropdown" aria-expanded="false" data-placement="bottom" data-container="div.web-preview" title="{#button_viewoptions#}"></a>
            <ul class="dropdown-menu dropdown-menu-arrow dropdown-menu-right" role="menu">
                <li><a href="#"><span class="flag-icon flag-icon-de"></span> Deutsch</a></li>
                <li><a href="#"><span class="flag-icon flag-icon-gb"></span> Englisch</a></li>
            </ul>
        </div>
        <div class="btn-group">
            <a href="javascript:;" class="btn btn-blank fa fa-bolt" data-toggle="dropdown" aria-expanded="false" data-placement="bottom" data-container="div.web-preview" title="{#button_setonline#}"></a>
            <ul class="dropdown-menu dropdown-menu-arrow dropdown-menu-right" role="menu">
                <li><a href="#"><span class="flag-icon flag-icon-de"></span> Deutsch</a></li>
                <li><a href="#"><span class="flag-icon flag-icon-gb"></span> Englisch</a></li>
            </ul>
        </div>
        <div class="btn-group">
            <a href="javascript:;" class="btn btn-blank fa fa-flag-o" data-toggle="dropdown" data-placement="bottom" data-container="div.web-preview" title="{#button_language#}" aria-expanded="false"></a>
            <ul class="dropdown-menu dropdown-menu-arrow dropdown-menu-right" role="menu">
                <li><a href="#"><span class="flag-icon flag-icon-de"></span> Deutsch</a></li>
                <li><a href="#"><span class="flag-icon flag-icon-gb"></span> Englisch</a></li>
            </ul>
        </div>
    </section>
    <section class="user-menu-wrapper datatable">
        <a href="javascript:;" data-toggle="tooltip" data-placement="bottom" data-container="div.datatable" title="{#button_datatable_edit#}" onclick="ce.datatable.edit()">
            <i class="fa fa-pencil-square-o"></i>
        </a>
        <a href="javascript:;" data-toggle="tooltip" data-placement="bottom" data-container="div.datatable" title="{#button_datatable_new#}" onclick="ce.datatable.new()">
            <i class="fa fa-plus-square-o"></i>
        </a>
        <a href="javascript:;" data-toggle="tooltip" data-placement="bottom" data-container="div.datatable" title="{#button_datatable_clone#}" onclick="ce.datatable.clone()">
            <i class="fa fa-clone"></i>
        </a>
        <a href="javascript:;" data-toggle="tooltip" data-placement="bottom" data-container="div.datatable" title="{#button_datatable_delete#}" onclick="ce.datatable.delete()">
            <i class="fa fa-trash-o"></i>
        </a>
        <a href="javascript:;" data-toggle="tooltip" data-placement="bottom" data-container="div.datatable" title="{#button_datatable_upload#}" onclick="ce.datatable.upload()">
            <i class="fa fa-cloud-upload"></i>
        </a>
        <a href="javascript:;" data-toggle="tooltip" data-placement="bottom" data-container="div.datatable" title="{#button_datatable_download#}" onclick="ce.datatable.download()">
            <i class="fa fa-cloud-download"></i>
        </a>
        <a href="javascript:;" data-toggle="tooltip" data-placement="bottom" data-container="div.datatable" title="{#button_language#}" data-expand=".languages-view" class="dropdown languages-menu-access">
            <i><span id="currentLanguage" class="fa fa-flag-o"></span></i>
        </a>
    </section>
    <div id="messages" class="animated"></div>




    <div class="panel panel-default nav-view languages-view">
        <div class="arrow user-menu-arrow"></div>
        <div class="panel-heading">
            <i class="fa fa-flag-o"></i>
            <span>{#dropdown_languages#}</span>
            <a href="javascript:;" class="close-user-menu"><i class="fa fa-close"></i></a>
        </div>
        <ul class="list-group">
            <li class="list-group-item">
                <a href="lg=de">
                    <i><span class="flag-icon flag-icon-de"></span></i>
                    <div class="text-holder">
                        <span class="title-text">
                            Deutsch
                        </span>
                    </div>
                </a>
            </li>
            <li class="list-group-item">
                <a href="lg=en">
                    <i><span class="flag-icon flag-icon-gb"></span></i>
                    <div class="text-holder">
                        <span class="title-text">
                            Englisch
                        </span>
                    </div>
                </a>
            </li>
        </ul>
    </div>




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
