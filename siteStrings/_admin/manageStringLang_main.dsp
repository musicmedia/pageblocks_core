[if($fw_user->('loginValid') == 'Y' && !$fw_error->('errorMsgs'))]

	<h2>[$adminPageTitle] : Manage Languages</h2>
	
	<p>Add or remove languages available for string editing.<br />
	Be careful when removing: All strings associated with the language you are removing will become un-accessible!</p>

	<form action="[$fw_requestPage->('self')]" method="post" name="stringLangForm">
		<input type="hidden" name="fw_s" value="[var('fw_s')]" />
		[include($fw_mPath->('Panels') + 'adminFormControlBar.dsp')]
		[include('stringLangForm.dsp')]
	</form>﻿

[else]
	[$fw_error->('errorMsgs')]
[/if]