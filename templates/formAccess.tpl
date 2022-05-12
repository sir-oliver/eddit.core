{if count($meta) > 0}
<h6>{EDDIT::i18n('access','nodes')}</h6>
{if false}
<p>
Value: <b>{$value|print_r:1}</b><br>
Inherit: <b>{if $inherit}yes{else}no{/if}</b><br>
InheritValue: <b>{$inheritValue|print_r:1}</b><br>
</p>
{/if}
<div class="input-group opt-in">
    <span class="input-group-addon">
        <input type="checkbox" class="checker" {if !$inherit}checked{/if}>
    </span>

    <div class="link-field clearfix">
{foreach from=$value item='val' key='nodeID'}
        <div class="dropzone-link" data-accept-type="persons">
            <div class="dropzone"></div>
            <input name="access[{$nodeID}]" type="hidden" class="link opt-in" value="{$nodeID}">
            <span class="unselectable">{linkInfo link=$nodeID}</span>
            <label class="h3" style="position: inherit; margin:6px 20px 0 0"><input type="checkbox" name="access[{$nodeID}][R]" {if $val.0}checked{/if}> R </label>
            <label class="h3" style="position: inherit; margin:6px 20px 0 0"><input type="checkbox" name="access[{$nodeID}][W]" {if $val.1}checked{/if}> W </label>
            <label class="h3" style="position: inherit; margin:6px 20px 0 0"><input type="checkbox" name="access[{$nodeID}][X]" {if $val.2}checked{/if}> X </label>
        </div>
{/foreach}
    </div>
    <div class="form-control form-control-static">
{foreach from=$inheritValue item='val' key='nodeID'}
        <div class="inherited-link">
            <span class="unselectable">{linkInfo link=$nodeID}</span>
            <label class="h3" style="position: inherit; margin:6px 20px 0 0">{if $val.0}R{/if}</label>
            <label class="h3" style="position: inherit; margin:6px 20px 0 0">{if $val.1}W{/if}</label>
            <label class="h3" style="position: inherit; margin:6px 20px 0 0">{if $val.2}X{/if}</label>
        </div>
{/foreach}
    </div>

</div>
{/if}
