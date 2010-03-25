
[if: (($fw_user->'loginValid') == 'Y') && !($fw_error->'errorMsgs')]

<input type="hidden" name="fw_edpSubmittedForm" value="privileges" />

[$permsTable->(draw: -drawMode='update', -type='checkbox', -colWidth=80, -tblPadding=4)]

[else]
	[($fw_error->'errorMsgs')]
[/if]