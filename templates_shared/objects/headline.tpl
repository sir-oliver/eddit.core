{if $object->attr('makespan')}
<span class="h{$object->attr('size')} {$object->attr('class')} ce-object" style="{$object->attr('styles')}" data-id="{$object->id}" data-node="{$object->nodeID}" data-type="{$object->templateName}">
{else}
<h{$object->attr('size')} class="{$object->attr('class')} ce-object" style="{$object->attr('styles')}" data-id="{$object->id}" data-node="{$object->nodeID}" data-type="{$object->templateName}">
{/if}

    {$object->attr('text')}
{if $object->attr('makespan')}
</span>
{else}
</h{$object->attr('size')}>
{/if}
