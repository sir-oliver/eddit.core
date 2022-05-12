<div class="modal-dialog" Xstyle="min-width: 500px">
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
        <select name="IDsource" class="form-control select2 placeholder populate select2-offscreen" tabindex="-2">
{foreach from=$nodes key='node' item='nodename'}
            <option value="{$node}">{$nodename}</option>
{/foreach}
        </select>
      </div>
      <div class="modal-footer" style="border-top: none">
        <button type="button" class="btn btn-default cancel" data-dismiss="modal">{EDDIT::i18n('cancel', 'ce')}</button>
        <button type="button" class="btn btn-primary" onclick="ce.objecttree.copy()">{EDDIT::i18n('copy', 'ce')}</button>
      </div>
      </form>
  </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
