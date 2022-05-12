<a target="{$object->attributes.$var.target}" {strip}
{if $object->attributes.$var.type == 'page'}
href="{literal}{url pg={/literal}{{$object->attributes.$var.page}}{literal}}{/literal}">
{elseif $object->attributes.$var.type == 'file'}
href="/assets/{$object->attributes.$var.file}">
{elseif $object->attributes.$var.type == 'external'}
href="{$object->attributes.$var.external}">
{/if}
{/strip}
