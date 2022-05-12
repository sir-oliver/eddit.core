<div class="ce-object" data-id="{$object->id}" data-node="{$object->nodeID}" data-type="{$object->templateName} {$object->attr('plugin')|upper}">
{literal}
{plugin {/literal}name='{$object->attr('plugin')}' {$object->attr('params')}{literal}}
{/literal}
{* literal}
{plugin {/literal}name='{$object->attr('plugin')}'{literal} {/literal}params='{$object->attr('params')}'{literal}}
{/literal *}
</div>

