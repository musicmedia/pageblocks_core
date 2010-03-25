[if($fw_user->('loginValid') == 'Y' && !$fw_error->('errorMsgs'))]

	<h2>[$adminPageTitle] : List</h2>

	<p><a href="/siteStrings/_admin/manageStringLang?fw_s=[$fw_s]">Manage languages...</a><p>

	[include($fw_mPath->('Panels') + 'adminMainControlBar.dsp')]

	[$stringsList->draw]

[else]
	[$fw_error->('errorMsgs')]
[/if]