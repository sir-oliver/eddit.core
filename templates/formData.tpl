{config_load file="i18n.conf" section=EDDIT::$languageID scope="global"}
<div class="panel panel-default panel-block panel-title-block">
    <div class="panel-heading">
        <div>
            <div class="btn-group" style="float:left; margin-right: 16px">
                <a href="javascript:;" class="btn-flag flag-icon-background {flagIcon}" data-toggle="dropdown" aria-expanded="false"></a>
                <ul class="dropdown-menu dropdown-menu-arrow" role="menu">
                    <li class="dropdown-header">{#form_otherlanguages#}</li>
{foreach from=EDDIT::$cache->get('languages') item='l'}
{*if EDDIT::$languageID != $l.code*}
                    <li class="{if !$data->has_attr($l.code)}no-attr{/if}{if EDDIT::$languageID == $l.code} active{/if}"><a href="javascript:;" onclick="ce.editor.open(ce.IDobject, 'edit', '{$l.code}');"><span class="flag-icon {flagIcon lg=$l.code}"></span> {$l.name}</a></li>
                    {* <li{if !$data->has_attr($l.code)} class="no-attr"{/if}><a href="javascript:;" onclick="ce.editor.open(ce.IDobject, 'edit', '{$l.code}');"><span class="flag-icon {flagIcon lg=$l.code}"></span> {$l.name}</a></li> *}
{*/if*}
{/foreach}
{*
{if EDDIT::$languageID != 'de'}
                    <li><a href="javascript:;" onclick="ce.editor.open(ce.IDobject, 'edit', 'de');"><span class="flag-icon {flagIcon lg='de'}"></span> Deutsch</a></li>
{/if}
{if EDDIT::$languageID != 'en'}
                    <li><a href="javascript:;" onclick="ce.editor.open(ce.IDobject, 'edit', 'en');"><span class="flag-icon {flagIcon lg='en'}"></span> Englisch</a></li>
{/if}
*}
                </ul>
            </div>
            <!-- <i class="icon-edit"></i> -->
            <h1 style="padding-top: 5px">
                <span class="page-title">{#form_editor#}</span>
                <small>
                    {#form_editnow#}
                </small>
            </h1>
            <div class="pull-right">
                <a href="javascript:;" onclick="ce.editor.save()" class="btn btn-success save">
                    <i class="icon-check-sign"></i>
                    <span>
                        {#form_save#}
                    </span>
                </a>
                <a href="javascript:;" onclick="ce.editor.close()" class="btn btn-danger cancel">
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
        <div style="float:right; visibility: hidden">
            N <input type="text" style="width: 30px" name="IDnode" value="{EDDIT::requestVar('IDnode',0)}">
            O <input type="text" style="width: 100px" name="IDobject" value="{if $action == 'clone'}0{else}{EDDIT::requestVar('IDobject',0)}{/if}">
            L <input type="text" style="width: 30px" name="IDlanguage" value="{EDDIT::$languageID}">
        </div>
        <div style="clear:both"></div>
{$data->formfields()}
{*
<pre style="font-size: 0.5em">
{$data->getObjectAttributes()|print_r:1}
{$data->attributes|print_r:1}
</pre>
*}
{*
        {foreach from=$data->attributes key='attribute' item='value'}
        {include file='formField.tpl' name=$attribute type=$data->tableID value=$value meta=EDDIT::meta($attribute,'',$data->tableID)}
        {/foreach}
*}
    </form>
</div>
</div>
{*$data|print_r:1*}