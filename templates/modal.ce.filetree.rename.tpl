{config_load file="i18n.conf" section=EDDIT::$languageID|default:EDDIT::config('defaultLG') scope="global"}
<div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="{EDDIT::i18n('cancel', 'ce')}"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">{#modal_files_rename_head#}</h4>
      </div>
      <div class="modal-body">
        <p>{#modal_files_foldername#} {$data.folder}</p>
        <form class="" action="" method="post" style="margin-bottom: 10px">

          <input class="form-control" type="text" name="new_name" value="{$data.file}">

        </form>

      {#modal_files_rename_question#}

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default cancel" data-dismiss="modal">{EDDIT::i18n('cancel', 'ce')}</button>
        <button type="button" class="btn btn-danger" onclick="ce.filetree.renameSelected()">{#modal_files_rename_button#}</button>
      </div>
  </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
