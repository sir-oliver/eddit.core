<nav class="user-menu">
    <section class="user-menu-wrapper content">
        <a href="javascript:;" data-expand=".theme-view" class="view-menu-access">
            <i class="fa fa-eye"></i>
        </a>
        <a href="javascript:;" data-expand=".set-online-view" class="set-online-access">
            <i class="fa fa-bolt"></i>
        </a>
    </section>
    <section class="user-menu-wrapper datatable">
        <a href="javascript:;" onclick="ce.datatable.edit()">
            <i class="fa fa-pencil-square-o"></i>
        </a>
        <a href="javascript:;">
            <i class="fa fa-plus-square-o" onclick="ce.datatable.new()"></i>
        </a>
        <a href="javascript:;">
            <i class="fa fa-clone" onclick="ce.datatable.clone()"></i>
        </a>
        <a href="javascript:;">
            <i class="fa fa-trash-o" onclick="ce.datatable.delete()"></i>
        </a>
        <a href="javascript:;">
            <i class="fa fa-cloud-upload" onclick="ce.datatable.upload()"></i>
        </a>
        <a href="javascript:;">
            <i class="fa fa-cloud-download" onclick="ce.datatable.download()"></i>
        </a>
    </section>
    <div id="messages" class="animated">

    </div>
    <div class="panel panel-default nav-view theme-view">
        <div class="arrow user-menu-arrow"></div>
        <div class="panel-heading">
            <i class="fa fa-eye"></i>
            <span>Ansicht</span>
            <a href="javascript:;" class="close-user-menu"><i class="fa fa-close"></i></a>
        </div>
        <ul class="list-group">
            <li class="list-group-item" data-theme="default">
                <a href="javascript:;">
                    <i><b class="dark"></b></i>
                    <div class="text-holder">
                        <span class="title-text">
                            Standard
                        </span>
                    </div>
                </a>
            </li>
            <li class="list-group-item" data-theme="theme-wide">
                <a href="javascript:;">
                    <i><b class="terminal"></b></i>
                    <div class="text-holder">
                        <span class="title-text">
                            Wide
                        </span>
                    </div>
                </a>
            </li>
            <li class="list-group-item" data-theme="theme-mobile">
                <a href="javascript:;">
                    <i><b></b></i>
                    <div class="text-holder">
                        <span class="title-text">
                            Mobile
                        </span>
                    </div>
                </a>
            </li>
        </ul>
    </div>

    <div class="panel panel-default nav-view set-online-view">
        <div class="arrow user-menu-arrow"></div>
        <div class="panel-heading">
            <i class="fa fa-check"></i>
            <span>Online setzen</span>
            <a href="javascript:;" class="close-user-menu"><i class="fa fa-close"></i></a>
        </div>
        <ul class="list-group">
            <li class="list-group-item">
                <a onclick="ce.nodetree.setonline('de')">
                    <i class="fa fa-flag-o"></i>
                    <div class="text-holder">
                        <span class="title-text">
                            Deutsch online setzen
                        </span>
                    </div>
                </a>
            </li>
            <li class="list-group-item">
                <a onclick="ce.nodetree.setonline('en')">
                    <i class="fa fa-flag-o"></i>
                    <div class="text-holder">
                        <span class="title-text">
                            Englisch online setzen
                        </span>
                    </div>
                </a>
            </li>
{*            <li class="list-group-item">
                <a onclick="ce.nodetree.setonline('all')">
                    <i><b class="all"></b></i>
                    <div class="text-holder">
                        <span class="title-text">
                            Alles online setzen
                        </span>
                    </div>
                </a>
            </li>
*}        </ul>
    </div>
</nav>
