[if(($fw_user->('loginValid') == 'Y') && (!$fw_error->('errorMsgs')))]

	<h2>[$adminPageTitle] : Update Alternative Language : <strong>[$languagesShortLong->(find($editLang))]</strong></h2>
	
	<!--[include($fw_sPath->('Panels') + 'updtInstsPanel.dsp')]-->
	
	<form action="[$fw_requestPage->('self')]" method="post" name="updtLangForm">
		<input type="hidden" name="fw_s" value="[var('fw_s')]" />
		<input type="hidden" name="fw_r" value="[var('fw_r')]" />
		<input type="hidden" name="fw_edvLockID" value="[var('fw_edvLockID')]" />
		<input type="hidden" name="editLang" value="[var('editLang')]" />
		[include($fw_mPath->('Panels') + 'adminFormControlBar.dsp')]
		[include('inputLangForm.dsp')]
		[include($fw_mPath->('Panels') + 'adminFormControlBar.dsp')]
	</form>

[else]
	[$fw_error->('errorMsgs')]
[/if]