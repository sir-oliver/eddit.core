<div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="{EDDIT::i18n('cancel', 'ce')}"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">{EDDIT::i18n($action, 'ce')}</h4>
      </div>
      <div class="modal-body">

        <form class="" action="" method="post">
{foreach from=$data item='v' key='i'}
        <input type="hidden" name="{$i}" value="{$v}">
{/foreach}
        </form>
        <p>{EDDIT::i18n('areyousure', 'ce')}</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default cancel" data-dismiss="modal">{EDDIT::i18n('cancel', 'ce')}</button>
        <button type="button" class="btn btn-danger" onclick="ce.objecttree.delete()">{EDDIT::i18n('delete', 'ce')}</button>
      </div>
  </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
