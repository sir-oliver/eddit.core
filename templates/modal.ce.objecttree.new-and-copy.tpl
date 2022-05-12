<div class="modal-dialog" Xstyle="min-width: 500px">
  <div class="modal-content">
     <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="{EDDIT::i18n('cancel', 'ce')}"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">{EDDIT::i18n($action, 'ce')}</h4>
      </div>
      <form class="" action="" method="post">
{foreach from=$data item='v' key='i'}
        <input type="hidden" name="{$i}" value="{$v}">
{/foreach}
      <div class="modal-body">
{if $hasValidChildren}
        <h4 class="modal-title" style="margin-bottom:0.5em">{EDDIT::i18n('ce.objectlist', 'ce')}</h4>
        <select name="IDtemplate" class="form-control select2 placeholder populate select2-offscreen" tabindex="-1">
            <!-- <option value="">&hellip;</option> -->
{foreach from=$objects key='object' item='objectname'}
            <option value="{$object}">{$objectname}</option>
{/foreach}
        </select>
{else}
        <p>{EDDIT::i18n('no_valid_children', 'objects')}</p>
{/if}
      </div>
      <div class="modal-footer" style="border-top: none">
        <button type="button" class="btn btn-default cancel" data-dismiss="modal">{EDDIT::i18n('cancel', 'ce')}</button>
{if $hasValidChildren}
        <button type="button" class="btn btn-primary" onclick="ce.objecttree.create()">{EDDIT::i18n('create', 'ce')}</button>
{/if}
      </div>
{if IS_SMESH_IP}
      <hr style="margin: 1em 0">
      <div class="modal-body">
        <h4 class="modal-title" style="margin-bottom:0.5em">{EDDIT::i18n('copy_from_page', 'ce')}</h4>
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
{/if}
      </form>
  </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
