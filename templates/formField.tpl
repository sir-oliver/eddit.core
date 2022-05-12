{if count($meta) > 0}
<h6>{EDDIT::i18n($name,$type)}</h6>
{if false}
<p>
Value: <b>{$value|print_r:1}</b><br>
Inherit: <b>{if $inherit}yes{else}no{/if}</b><br>
InheritValue: <b>{$inheritValue|print_r:1}</b><br>
Default: <b>{$meta.default|default:'** leer **'}</b><br>
Formtype: <b>{$meta.formtype}</b>
{if $meta.options}
<br>Options: <b>{$meta.options|print_r:1}</b>
{/if}
</p>
{/if}
{if empty($value) && $value != '0'}{assign var='value' value=$meta.default}{/if}
<div class="input-group opt-in">
    <span class="input-group-addon">
        <input type="checkbox" class="checker" {if EDDIT::$languageID == EDDIT::config('defaultLG')}checked disabled{elseif $type != 'nodes' && $type != 'objects' && EDDIT::config('dataTablesSplitLanguages')}checked disabled{elseif !$inherit}checked{/if}>
    </span>
{if $meta.formtype == 'XXXswitcher'}
    <div class="form-control opt-in" style="height:auto">
        <input class="switcher opt-in" type="checkbox" name="{$name}" checked data-on-text="{#yes#}" data-off-text="{#no#}" data-size="small" data-on-color="success" data-off-color="danger" value="1">
    </div>
    <div class="form-control form-control-static">
        {if $inheritValue == 1}{#yes#}{else}{#no#}{/if}
    </div>
{elseif $meta.formtype == 'switcher'}
    <div class="form-control opt-in" style="height:auto">
        <div class="switcher" data-toggle="buttons">
            <label class="btn btn-sm btn-success {if $value == '0' || $value == ''}active{/if}">
                <input type="radio" class="opt-in" name="{$name}" value="0" autocomplete="off" {if $value == '0' || $value == ''}checked{/if}>
                &nbsp; {#yes#} &nbsp;
            </label>
            <label class="btn btn-sm btn-danger {if $value == '1' || $value == '-1'}active{/if}">
                <input type="radio" class="opt-in" name="{$name}" value="1" autocomplete="off" {if $value == '1'}checked{/if}>
                &nbsp; {#no#} &nbsp;
            </label>
        </div>
    </div>
    <div class="form-control form-control-static">
        {if $inheritValue == 1}{#yes#}{else}{#no#}{/if}
    </div>
{elseif $meta.formtype == 'image'}
{if is_array($value)}
    <div class="dropzone-cropper clearfix ui-droppable">
        <div class="cropper" data-width="{$meta.options.crop[0]|default:200}" data-height="{$meta.options.crop[1]|default:200}" style="width: {$meta.options.crop[0]|default:200}px; height: {$meta.options.crop[1]|default:200}px; overflow: hidden">
            {image file=$value crop=0}
        </div>
        <div class="file-info">
            <span class="name">{$value.file|basename}</span><br>
            <span class="size">518 kB</span><br>
            <span class="date">Gestern, 14:28</span>
            <p class="pixel"></p>
            <!-- <p class="coords" style="word-wrap:break-word">...</p> -->
            <input name="{$name}[file]" type="hidden" class="imgage file opt-in" value="{$value.file}" style="width:160px">
            <input name="{$name}[offset][0]" type="hidden" class="imgage x opt-in" value="{$value.offset.0}" style="width:40px">
            <input name="{$name}[offset][1]" type="hidden" class="imgage y opt-in" value="{$value.offset.1}" style="width:40px">
            <input name="{$name}[crop][0]" type="hidden" class="imgage w opt-in" value="{$value.crop.0}" style="width:40px">
            <input name="{$name}[crop][1]" type="hidden" class="imgage h opt-in" value="{$value.crop.1}" style="width:40px">
            <script type="text/javascript">
                ce.editor.cropper({ cropX: {$value.offset[0]|default:0}, cropY: {$value.offset[1]|default:0}, cropW: {$value.crop[0]|default:200}, cropH: {$value.crop[1]|default:200} });
                // ce.editor.cropper();
            </script>
        </div>
        <div class="hover-layer">
            <i class="icon-download"></i>
            <span>DATEIEN HIER ABLEGEN</span>
        </div>
    </div>
    <div class="form-control form-control-static">
        {image file=$inheritValue width=$meta.options.crop[0] height=$meta.options.crop[1] scale=0 class="master-image"}
        <div class="file-info">
            <p class="name">{$inheritValue.file|basename}</p>
        </div>
    </div>
{else}
<div class="dropzone-cropper clearfix ui-droppable">
    <div class="cropper" data-width="{$meta.options.crop[0]|default:200}" data-height="{$meta.options.crop[1]|default:200}" style="width: {$meta.options.crop[0]|default:200}px; height: {$meta.options.crop[1]|default:200}px; overflow: hidden">
        <img src="" class="img-responsive">
    </div>
    <div class="file-info">
        <span class="name"></span><br>
        <span class="size"></span><br>
        <span class="date"></span>
        <p class="pixel"></p>
        <!-- <p class="coords" style="word-wrap:break-word">...</p> -->
        <input name="{$name}[file]" type="hidden" class="image file opt-in" value="" style="width:160px">
        <input name="{$name}[offset][0]" type="hidden" class="imgage x opt-in" value="0" style="width:40px">
        <input name="{$name}[offset][1]" type="hidden" class="imgage y opt-in" value="0" style="width:40px">
        <input name="{$name}[crop][0]" type="hidden" class="imgage w opt-in" value="0" style="width:40px">
        <input name="{$name}[crop][1]" type="hidden" class="imgage h opt-in" value="0" style="width:40px">
        <script type="text/javascript">
            // ce.editor.cropper({ cropX: 300, cropY: 200, cropW: 1200, cropH: 300 });
            ce.editor.cropper();
        </script>
    </div>
    <div class="hover-layer">
        <i class="fa fa-download"></i>
        <span>DATEIEN HIER ABLEGEN</span>
    </div>
</div>
<div class="form-control form-control-static">
{if is_array($inheritValue)}
    {image file=$inheritValue width=$meta.options.crop[0] height=$meta.options.crop[1] scale=0 class="master-image"}
    <div class="file-info">
        <p class="name">{$inheritValue.file|basename}</p>
    </div>
{/if}
</div>
{/if}
{elseif $meta.formtype == 'selectSingle'}
    <div class="form-control opt-in" style="height:auto">
        <div class="selectSingle">
            <select class="form-control select2 opt-in" style="border:0; box-shadow:none" name="{$name}">
{html_options options=EDDIT::options($meta.options) selected=$value}
            </select>
        </div>
    </div>
    <div class="form-control form-control-static">
{if $inheritValue}
{assign var='options' value=EDDIT::options($meta.options)}
{$options.$inheritValue}
{else}
$inheritValue not set
{/if}
    </div>
{elseif $meta.formtype == 'selectMultiple'}
    <div class="form-control opt-in" style="height:auto">
        <div class="selectSingle">
            <select class="form-control select2 opt-in" multiple="true" style="border:0; box-shadow:none" name="{$name}[]">
{html_options options=EDDIT::options($meta.options) selected=$value}
            </select>
        </div>
    </div>
    <div class="form-control form-control-static">
        {$inheritValue|print_r:1}
    </div>
{elseif $meta.formtype == 'radios'}
    <div class="form-control opt-in radios" style="height:auto">
{foreach from=EDDIT::options($meta.options) key='_value' item='_description'}
    <label><input type="radio" name="{$name}" class="opt-in" value="{$_value}" {if $_value == $value}checked{/if}> {$_description}</label>
{/foreach}
{*html_radios options=EDDIT::options($meta.options) selected=$value name=$name*}
    </div>
    <div class="form-control form-control-static">
{if $inheritValue}
{assign var='options' value=EDDIT::options($meta.options)}
{$options.$inheritValue}
{else}
$inheritValue not set
{/if}
    </div>
{elseif $meta.formtype == 'checkboxes'}
    <div class="form-control opt-in checkboxes" style="height:auto">
{foreach from=EDDIT::options($meta.options) key='_value' item='_description'}
    <label><input type="checkbox" name="{$name}[]" class="opt-in" value="{$_value}" {if is_array($value) && in_array($_value,$value)}checked{/if}> {$_description}</label>
{/foreach}
{*html_checkboxes options=EDDIT::options($meta.options) selected=$value name=$name class="opt-in"*}
    </div>
    <div class="form-control form-control-static">
        {if is_array($inheritValue)}{$inheritValue|implode:', '}{/if}
    </div>
{elseif $meta.formtype == 'num'}
    <input name="{$name}" type="number" class="form-control opt-in" placeholder="0" value="{$value}">
    <div class="form-control form-control-static">{$inheritValue}</div>
{elseif $meta.formtype == 'editor'}
    <textarea name="{$name}" class="form-control opt-in tinymce" placeholder="Write your text here">{$value}</textarea>
    <div class="form-control form-control-static">{$inheritValue}</div>
{elseif $meta.formtype == 'literal'}
    <textarea name="{$name}" class="form-control opt-in" rows="10" placeholder="Write your text here">{$value}</textarea>
    <div class="form-control form-control-static">{$inheritValue}</div>
{elseif $meta.formtype == 'grower'}
    <div class="form-control opt-in" style="height:auto">
        <div class="selectSingle">
            <select class="form-control select2 opt-in" multiple="true" data-tags="true" style="border:0; box-shadow:none" name="{$name}[]">
{foreach from=$value item='val'}
    <option value="{$val}" selected>{$val}</option>
{/foreach}
            </select>
        </div>
    </div>
    <div class="form-control form-control-static">
        {if is_array($inheritValue)}{$inheritValue|print_r:1}{/if}
    </div>






{elseif $meta.formtype == 'fileX'}
<!--
<div class="dropzone-file clearfix ui-droppable">
    <div class="file-info">
        <input name="{$name}" type="hidden" class="file opt-in" value="{$value}" placeholder="Keine Datei ausgewaehlt">
        <div style="padding: 20px 0 20px 12px">{fileInfo file=$value}</div>
    </div>
    <div class="hover-layer">
        <i class="icon-download"></i>
        <span>DATEIEN HIER ABLEGEN</span>
    </div>
</div>
<div class="form-control form-control-static">
    <div class="file-info">
        <p class="name">{$inheritValue|basename}</p>
    </div>
</div>
 -->

{elseif $meta.formtype == 'file'}
<div class="dropzone-file clearfix ui-droppable">
    <div class="file-info">
        <input name="{$name}" type="hidden" class="file opt-in" value="{$value}">
        <div style="padding: 10px 0 10px 12px">{fileInfo file=$value}</div>
    </div>
</div>
<div class="form-control form-control-static">
    {fileInfo file=$inheritValue}
</div>


{elseif $meta.formtype == 'folder'}
<div class="link-field clearfix">
    <div class="dropzone-link" data-accept-type="folder">
        <div class="dropzone"></div>
        <input name="{$name}" type="hidden" class="link opt-in" value="{$value}">
        <span class="unselectable">{fileInfo file=$value}</span>
    </div>
</div>
<div class="form-control form-control-static">
    {fileInfo file=$inheritValue}
</div>


{elseif $meta.formtype == 'link'}
{if !is_array($value) || !isset($value.type)}{$value.type=''}{/if}
{if !is_array($value) || !isset($value.target)}{$value.target='_self'}{/if}
{if !is_array($value) || !isset($value.page)}{$value.page=''}{/if}
{if !is_array($value) || !isset($value.file)}{$value.file=''}{/if}
{if !is_array($value) || !isset($value.external)}{$value.external=''}{/if}
<div class="link-field clearfix">
    <div class="btn-group btn-group-sm tabswitch" data-toggle="buttons">
        <label class="btn btn-default {if $value.type == 'file'}active{/if}" data-tab="dropzone-file" data-tabclass="linktype">
            <input type="radio" name="{$name}[type]" class="opt-in" value="file" autocomplete="off" {if $value.type == 'file'}checked{/if}> Datei
        </label>
        <label class="btn btn-default {if $value.type == 'page'}active{/if}" data-tab="dropzone-link" data-tabclass="linktype">
            <input type="radio" name="{$name}[type]" class="opt-in" value="page" autocomplete="off" {if $value.type == 'page'}checked{/if}> Seite
        </label>
        <label class="btn btn-default {if $value.type == 'external'}active{/if}" data-tab="external-link" data-tabclass="linktype">
            <input type="radio" name="{$name}[type]" class="opt-in" value="external" autocomplete="off" {if $value.type == 'external'}checked{/if}> External
        </label>
    </div>
    &nbsp;
    <div class="btn-group btn-group-sm pull-right" data-toggle="buttons">
        <label class="btn btn-default {if $value.target == '_self'}active{/if}">
            <input type="radio" name="{$name}[target]" class="opt-in" value="_self" autocomplete="off" {if $value.target == '_self'}checked{/if}> Selbes Fenster
        </label>
        <label class="btn btn-default {if $value.target == '_blank'}active{/if}">
            <input type="radio" name="{$name}[target]" class="opt-in" value="_blank" autocomplete="off" {if $value.target == '_blank'}checked{/if}> Neues Fenster
        </label>
        <label class="btn btn-default {if $value.target == '_lightview'}active{/if}">
            <input type="radio" name="{$name}[target]" class="opt-in" value="_lightview" autocomplete="off" {if $value.target == '_lightview'}checked{/if}> Layer
        </label>
    </div>
    <div class="dropzone-file clearfix ui-droppable linktype {if $value.type != 'file'}hidden{/if}">
        <div class="file-info" style="margin-right:-10px">
            <input name="{$name}[file]" type="hidden" class="link opt-in" value="{$value.file}">
            <div>{fileInfo file=$value.file}</div>
        </div>
    </div>
    <div class="dropzone-link linktype {if $value.type != 'page'}hidden{/if}" data-accept-type="objects">
        <a class="btn btn-default" style="float: right" onclick="ce.common.removeLink(this)"><span class="fa fa-close"></span></a>
        <div class="dropzone" style="width: 96%"></div>
        <input name="{$name}[page]" type="hidden" class="link opt-in" value="{$value.page}">
        <span class="unselectable">{linkInfo link=$value.page}</span>
    </div>
    <div class="external-link linktype {if $value.type != 'external'}hidden{/if}">
        <input name="{$name}[external]" type="text" class="link form-control opt-in" placeholder="http://" value="{$value.external}">
    </div>
</div>
<div class="form-control form-control-static">
{if isset($inheritValue.type) && $inheritValue.type == 'file'}
    <div class="file-info">
        {$inheritValue|print_r:1}
    </div>
{elseif isset($inheritValue.type) && $inheritValue.type == 'page'}
        {linkInfo link=$inheritValue.page}
{elseif isset($inheritValue.type) && $inheritValue.type == 'external'}
        Externe Adresse {$inheritValue.external}
{/if}
{if isset($inheritValue.target)}
|
{if $inheritValue.target == '_self'}
        Selbes Fenster
{elseif $inheritValue.target == '_blank'}
        Neues Fenster
{elseif $inheritValue.target == '_lightview'}
        Layer
{/if}
{/if}
</div>


{elseif $meta.formtype == 'nodetype'}
{if !is_array($value) || !isset($value.type)}{$value.type='internal'}{/if}
{if !is_array($value) || !isset($value.target)}{$value.target='_self'}{/if}
{if !is_array($value) || !isset($value.page)}{$value.page=''}{/if}
{if !is_array($value) || !isset($value.file)}{$value.file=''}{/if}
{if !is_array($value) || !isset($value.external)}{$value.external=''}{/if}
{if !is_array($value) || !isset($value.forward)}{$value.forward=''}{/if}
<div class="link-field clearfix">
    <div class="btn-group btn-group-sm tabswitch" data-toggle="buttons">
        <label class="btn btn-default {if $value.type == 'internal'}active{/if}" data-tab="internal-link" data-tabclass="linktype">
            <input type="radio" name="{$name}[type]" class="opt-in" value="internal" autocomplete="off" {if $value.type == 'internal'}checked{/if}> Normale Seite
        </label>
        <label class="btn btn-default {if $value.type == 'forward'}active{/if}" data-tab="dropzone-link" data-tabclass="linktype">
            <input type="radio" name="{$name}[type]" class="opt-in" value="forward" autocomplete="off" {if $value.type == 'forward'}checked{/if}> Weiterleitung
        </label>
{*
        <label class="btn btn-default {if $value.type == 'file'}active{/if}" data-tab="dropzone-file" data-tabclass="linktype">
            <input type="radio" name="{$name}[type]" class="opt-in" value="file" autocomplete="off" {if $value.type == 'file'}checked{/if}> Datei
        </label>
*}
        <label class="btn btn-default {if $value.type == 'external'}active{/if}" data-tab="external-link" data-tabclass="linktype">
            <input type="radio" name="{$name}[type]" class="opt-in" value="external" autocomplete="off" {if $value.type == 'external'}checked{/if}> Externe Adresse
        </label>
    </div>
    &nbsp;
    <div class="btn-group btn-group-sm pull-right" data-toggle="buttons">
        <label class="btn btn-default {if $value.target == '_self'}active{/if}">
            <input type="radio" name="{$name}[target]" class="opt-in" value="_self" autocomplete="off" {if $value.target == '_self'}checked{/if}> Selbes Fenster
        </label>
        <label class="btn btn-default {if $value.target == '_blank'}active{/if}">
            <input type="radio" name="{$name}[target]" class="opt-in" value="_blank" autocomplete="off" {if $value.target == '_blank'}checked{/if}> Neues Fenster
        </label>
        <label class="btn btn-default {if $value.target == '_lightview'}active{/if}">
            <input type="radio" name="{$name}[target]" class="opt-in" value="_lightview" autocomplete="off" {if $value.target == '_lightview'}checked{/if}> Layer
        </label>
    </div>
    <div class="internal-link linktype {if $value.type != 'internal'}hidden{/if}">
    </div>
{*
    <div class="dropzone-file clearfix ui-droppable linktype {if $value.type != 'file'}hidden{/if}">
        <div class="file-info">
            <input name="{$name}[file]" type="text" class="link opt-in" value="{$value.file}">
            <span class="name">{$value.file|basename}</span>, <span class="size">... kB</span>, <span class="date">...</span>
        </div>
        <div class="hover-layer">
            <i class="icon-download"></i>
            <span>DATEIEN HIER ABLEGEN</span>
        </div>
    </div>
*}
    <div class="dropzone-link linktype {if $value.type != 'forward'}hidden{/if}" data-accept-type="objects"  style="margin-top: 12px">
        <div class="dropzone"></div>
        <input name="{$name}[forward]" type="hidden" class="link opt-in" value="{$value.forward}">
        <span class="unselectable">{linkInfo link=$value.forward}</span>
{*        <span class="unselectable">{$value.forward|default:'Drop internal link here'}</span>*}
    </div>
    <div class="external-link linktype {if $value.type != 'external'}hidden{/if}" style="padding: 12px 0">
        <input name="{$name}[external]" type="text" class="link form-control opt-in" placeholder="http://" value="{$value.external}">
    </div>
</div>
<div class="form-control form-control-static">
{if isset($inheritValue.type) && $inheritValue.type == 'internal'}
        Normale Seite
{elseif isset($inheritValue.type) && $inheritValue.type == 'forward'}
        Weiterleitung auf {linkInfo link=$inheritValue.forward}
{elseif isset($inheritValue.type) && $inheritValue.type == 'external'}
        Externe Adresse {$inheritValue.external}
{/if}
        |
{if isset($inheritValue.target) && $inheritValue.target == '_self'}
        Selbes Fenster
{elseif isset($inheritValue.target) && $inheritValue.target == '_blank'}
        Neues Fenster
{elseif isset($inheritValue.target) && $inheritValue.target == '_lightview'}
        Layer
{/if}
</div>


{elseif $meta.formtype == 'date'}
    <input name="{$name}" type="date" class="form-control opt-in" placeholder="Choose a date" value="{$value}">
    <div class="form-control form-control-static">{$inheritValue}</div>


{elseif $meta.formtype == 'objectbuilder'}
    <div class="opt-in clearfix objectbuilder">
        <table class="table table-condensed">
            <tr>
                <th>Attribut</th>
                <th>Bezeichnung</th>
                <th>Formular Typ</th>
                <th>SQL Typ</th>
                <th>Options</th>
                <th>Default</th>
                <th>Overview</th>
            </tr>
        {foreach from=$value item='attr'}
            {assign var='fieldmeta' value=EDDIT::meta($attr,'','objects')}
            <tr>
                <td>{$attr}</td>
                <td>{EDDIT::i18n($attr,'objects')}</td>
                <td>{$fieldmeta.formtype}</td>
                <td>{$fieldmeta.sqltype}</td>
                <td>{$fieldmeta.options}</td>
                <td>{$fieldmeta.default}</td>
                <td>{$fieldmeta.overview}</td>
            </tr>
        {/foreach}
        </table>
    </div>
    <div class="form-control form-control-static">{$inheritValue|print_r:1}</div>

{else}
    <input name="{$name}" type="text" class="form-control opt-in" placeholder="Write your text here" value="{$value|escape:'html'}">
    <div class="form-control form-control-static">{$inheritValue}</div>
{/if}
</div>
{/if}
