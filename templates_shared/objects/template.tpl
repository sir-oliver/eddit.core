<div class="ce-object" data-id="{$object->id}" data-node="{$object->nodeID}" data-type="{$object->templateName}">{*https://github.com/fulopattila122/smarty3-include-if-exists*}
{literal}
{include_if_exists {/literal}file='{$object->attr('file')|default:'template.tpl'}'{literal} else='error.template-not-found.tpl'}
{/literal}
</div>

