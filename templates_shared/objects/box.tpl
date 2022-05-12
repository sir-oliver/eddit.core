<div class="kasten {$object->attr('class')} ce-object" style="{$object->attr('styles')}" data-id="{$object->id}" data-node="{$object->nodeID}"  data-type="{$object->templateName}">
	<div class="header">
		<strong>{$object->attr('headline')}</strong>
	</div>
	<div class="pic">
		{linktag data=$object->attr('link') class="imglink" style="margin:0"}
			{image file=$object->attr('image') width="760" scale=0 caption=$object->attr('headline') class="img-responsive"}
		</a>
	</div>
	<div class="content">
		<div class="text">{$object->attr('text')}</div>
	</div>
	<div class="footer">
		{linktag data=$object->attr('link') class="footerlink" style="margin:0" download=1}
			{$object->attr('linktext')}
		</a>
	</div>
</div>
