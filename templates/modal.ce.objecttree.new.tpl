<div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="{EDDIT::i18n('cancel', 'ce')}"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">{EDDIT::i18n($action, 'ce')}</h4>
      </div>
      <div class="modal-body">
{if $hasValidChildren}
        <form class="" action="" method="post">
{foreach from=$data item='v' key='i'}
        <input type="hidden" name="{$i}" value="{$v}">
{/foreach}
        <select name="IDtemplate" class="form-control select2 placeholder populate select2-offscreen" tabindex="-1">
            <!-- <option value="">&hellip;</option> -->
{foreach from=$objects key='object' item='objectname'}
            <option value="{$object}">{$objectname}</option>
{/foreach}
        </select>
        </form>
{else}
        <p>{EDDIT::i18n('no_valid_children', 'objects')}</p>
{/if}
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default cancel" data-dismiss="modal">{EDDIT::i18n('cancel', 'ce')}</button>
{if $hasValidChildren}
        <button type="button" class="btn btn-primary" onclick="ce.objecttree.create()">{EDDIT::i18n('create', 'ce')}</button>
{/if}
      </div>
  </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
