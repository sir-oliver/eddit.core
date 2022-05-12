<div class="persons">
{literal}
{plugin name='persons' {/literal}search='{$object->attr('search')}'{literal}}
{foreach from=$data item='person'}
	<div class="well ce-object clearfix" data-id="{$person.IDpersons}" data-node="{$person.nodeID}" data-type="Person">
		{image file=$person.image width="100" scale=0 caption=$person.firstname class="pull-left"}
		<p>{$person.firstname} {$person.lastname}</p>
		<p>{$person.email}</p>
	</div>
{/foreach}
{/literal}
</div>


