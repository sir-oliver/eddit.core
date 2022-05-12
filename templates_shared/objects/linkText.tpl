<div class="ce-object" data-id="{$object->id}" data-node="{$object->nodeID}" data-type="{$object->templateName}">
	{linktag data=$object->attr('link') class=$object->attr('class') style=$object->attr('styles')}
		{$object->attr('text')}
	</a>
</div>

