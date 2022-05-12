<div class="row spacer ce-object" data-id="{$object->id}" data-node="{$object->nodeID}" data-type="{$object->templateName}">
{if $object->attr('design') == 1}
	<div class="col-sm-3 col-xs-4 img">{image_legacy file=$object->attr('file') width=400 scale=0 class="img-responsive"}</div>
	<div class="col-sm-9 col-xs-8 txt">{$object->attr('text')}</div>
{elseif $object->attr('design') == 2}
	<div class="col-sm-9 col-xs-8 txt">{$object->attr('text')}</div>
	<div class="col-sm-3 col-xs-4 img">{image_legacy file=$object->attr('file') width=400 scale=0 class="img-responsive"}</div>
{elseif $object->attr('design') == 3}
	<div class="col-sm-12 img">{image_legacy file=$object->attr('file') width=800 scale=0 class="img-responsive"}</div>
	<div class="col-sm-12 txt">{$object->attr('text')}</div>
{elseif $object->attr('design') == 4}
	<div class="col-sm-12 txt">{$object->attr('text')}</div>
	<div class="col-sm-12 img">{image_legacy file=$object->attr('file') width=800 scale=0 class="img-responsive"}</div>
{/if}
</div>

