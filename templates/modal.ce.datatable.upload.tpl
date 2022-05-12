{config_load file="i18n.conf" section=EDDIT::$languageID|default:EDDIT::config('defaultLG') scope="global"}
<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-label="{EDDIT::i18n('cancel', 'ce')}"><span aria-hidden="true">&times;</span></button>
			<h4 class="modal-title">{#modal_datatable_upload_head#}</h4>
		</div>
		<div class="modal-body">

			{*#modal_datatable_upload_question#*}

			<div class="form-group">
				<input type="file" style="width: auto" name="file">
			</div>

			<div class="checkbox">
				<label>
					<input type="checkbox" name="replace">
					Daten ersetzen
				</label>
			</div>
{*
			<div class="form-group">
				<div class="switcher" data-toggle="buttons">
					<label class="btn btn-sm btn-danger {if $value == '0' || $value == ''}active{/if}">
						<input type="radio" name="replace" value="0" autocomplete="off" checked>
						&nbsp; Bestehende Daten überschreiben &nbsp;
					</label>
					<label class="btn btn-sm btn-success {if $value == '1' || $value == '-1'}active{/if}">
						<input type="radio" name="replace" value="1" autocomplete="off">
						&nbsp; Daten anhängen &nbsp;
					</label>
				</div>
			</div>
*}
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-default cancel" data-dismiss="modal">{EDDIT::i18n('cancel', 'ce')}</button>
			<button type="button" class="btn btn-primary" onclick="ce.datatable.upload()">{#modal_datatable_upload_button#}</button>
		</div>
	</div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
