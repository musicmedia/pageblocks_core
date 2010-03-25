[if(($fw_user->('loginValid') == 'Y') && (!$fw_error->('errorMsgs')))]

	<h2>[$adminPageTitle] : Update Form</h2>
	
	[include($fw_sPath->('Panels') + 'updtInstsPanel.dsp')]
	
	<form action="[$fw_requestPage->('self')]" method="post" name="updtForm">
		<input type="hidden" name="fw_s" value="[var('fw_s')]" />
		<input type="hidden" name="fw_edvLockID" value="[var('fw_edvLockID')]" />
		[include($fw_mPath->('Panels') + 'adminFormControlBar.dsp')]
		[include('inputForm.dsp')]
		[include($fw_mPath->('Panels') + 'adminFormControlBar.dsp')]
	</form>

[else]
	[$fw_error->('errorMsgs')]
[/if]