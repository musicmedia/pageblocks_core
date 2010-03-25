<div class="stdadminformbar">
	[if(!$fw_edvCurrentView == 'manageStringLang')]
	[if(!var('btnListDelete.x'))]
	<span class="btnbarbutton"><input type="image" src="[$fw_sPath->'controls']btn80_save_grn.gif" alt="Save" name="btnFormSave" /></span>
	[/if][if(var('fw_edvLockID') && !var('btnListDelete.x'))]
	<span class="btnbarbutton"><input type="image" src="[$fw_sPath->'controls']btn_rtn2list_ylw.gif" alt="Back To List" name="btnViewList" /></span>
	[/if][if(var('btnListDelete.x') || !var('fw_edvLockID'))]
	<span class="btnbarbutton"><input type="image" src="[$fw_sPath->'controls']btn80_cancel_ylw.gif" alt="Cancel" name="btnFormCancel" /></span>
	[/if][if(var('btnListDelete.x'))]
	<span class="btnbarbutton"><input type="image" src="[$fw_sPath->'controls']btn80_delete_red.gif" alt="Delete" name="btnFormDelete" /></span>
	[/if]
	[else]
	<span class="btnbarbutton"><input type="image" src="[$fw_sPath->'controls']btn_rtn2list_ylw.gif" alt="Back To List" name="btnViewList" /></span>
	[/if]
</div>

[if($fw_formIsNotValid)]
[include($fw_sPath->('panels') + 'invalidEntryBar.dsp')]
[/if]
