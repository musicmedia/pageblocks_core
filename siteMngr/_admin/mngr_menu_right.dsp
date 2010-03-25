[if(($fw_user->('loginValid') == 'Y') && (!$fw_error->('errorMsgs')))]

	<p class="dim">This section can be used for News, Tips, or other communications with Administrators</p>

	[if(var('loadErrors')->size); $loadErrors == 'Y' ? '<p class="alert">Restarting PageBlocks caused one or more errors, please see the Lasso Errors in SiteAdmin for more information!</p>' | '<p class="highlight">PageBlocks was successfully restarted</p>'; /if;]

[else]
	[$fw_error->('errorMsgs')]
[/if]