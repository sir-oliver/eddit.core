<div class="modal-dialog" style="width: 500px">
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
        <div class="input-group" style="margin-bottom: 8px">
          <input type="text" class="form-control" placeholder="{#nodetree_search#}" id="node-chooser-filter">
          <div class="input-group-btn">
            <button class="btn btn-default btn-search" type="button"><i class="fa fa-search"></i></button>
          </div>
        </div>
        <input type="hidden" id="node-chooser-data" name="IDsource" value="0">
        <div id="node-chooser" style="max-height: 500px; overflow-y: auto; overflow-x: hidden"></div>

      </div>
      <div class="modal-footer" style="border-top: none">
        <button type="button" class="btn btn-default cancel" data-dismiss="modal">{EDDIT::i18n('cancel', 'ce')}</button>
        <button type="button" class="btn btn-primary" onclick="ce.objecttree.copy()">{EDDIT::i18n('copy', 'ce')}</button>
      </div>
      </form>
  </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->

<script>

</script>