[if(($fw_user->('loginValid') == 'Y') && !$fw_error->('errorMsgs'))]

<h2>[$adminPageTitle] : Add Form</h2>

[include($fw_sPath->('Panels') + 'addInstsPanel.dsp')]

<form action="[$fw_requestPage->'self']" method="post" name="addForm">
	<input type="hidden" name="fw_s" value="[var:'fw_s']" />
	<input type="hidden" name="fw_edvNewRcrdID" value="[var:'fw_edvNewRcrdID']" />
	[include: $fw_mPath->'Panels' + 'adminFormControlBar.dsp']
	[include: 'inputForm.dsp']
	[include: $fw_mPath->'Panels' + 'adminFormControlBar.dsp']
</form>

[else]
	[$fw_error->('errorMsgs')]
[/if]