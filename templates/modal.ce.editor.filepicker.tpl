<div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="{EDDIT::i18n('cancel', 'ce')}"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">{EDDIT::i18n($action, 'ce')}</h4>
      </div>
      <div class="modal-body">

          <div class="dropzone-file clearfix ui-droppable">
              <div class="file-info">
                  <input name="{$name}" type="text" class="file" value="{$value}" placeholder="Keine Datei ausgewaehlt">
              </div>
              <div class="hover-layer">
                  <i class="icon-download"></i>
                  <span>DATEIEN HIER ABLEGEN</span>
              </div>
          </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">{EDDIT::i18n('cancel', 'ce')}</button>
        <button type="button" class="btn btn-primary" onclick="ce.editor.file_picker_callback('mypage.html', { text: 'My text' } );">{EDDIT::i18n('create', 'ce')}</button>
      </div>
  </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
