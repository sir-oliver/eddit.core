<div class="ce-object" data-id="{$object->id}" data-node="{$object->nodeID}" data-type="{$object->templateName} {$object->attr('type')|upper}">
{literal}
{plugin name='form' {/literal}type='{$object->attr('type')}'{literal} {/literal}id='{$object->id}'{literal} {/literal}email='{$object->attr('email')}'{literal} {/literal}recipientName='{$object->attr('recipient')}'{literal} {/literal}subject="{$object->attr('subject')}"{literal} {/literal}preText='{$object->attr('preText')|replace:"'":"\'"}'{literal} {/literal}postText='{$object->attr('postText')|replace:"'":"\'"}'{literal}}
{/literal}
</div>

