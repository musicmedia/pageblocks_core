[if(($fw_user->('loginValid') == 'Y') && (!$fw_error->('errorMsgs')))]

	<h2>SiteManager for [$fw_user->(getProfile('userName'))]</h2>

[if(var('fw_construction') == 'Y')]
	<h2><img src="/site/controls/alert_caution.gif" alt="Caution" width="32" height="32" border="0">&nbsp;&nbsp;Site development in progress</h2>
[/if]
	<p>You may use the menu items above to select specific information which can be edited to customize the website.</p>
	<div class="stdtable">
	<table border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td width="140">
				<p><strong>Administrators:</strong></p>
			</td>
			<td>
				<p>Define users allowed to edit the contents of this site, and set their specific editing permissions.</p>
			</td>
		</tr>
		<tr>
			<td width="140">
				<p><strong>Site Strings:</strong></p>
			</td>
			<td>
				<p>Create, edit, or delete multi-view appStrings content for the web site. Used for the Features section and the Help popup windows.</p>
			</td>
		</tr>
		<tr>
			<td width="140">
				<p><strong>Restart PageBlocks:</strong></p>
			</td>
			<td>
				<p>Use this link if you have updated or edited the PageBlocks core files (PageBlocks API). The PageBlocks core files are in a folder named "_pbAPI" in the root folder</p>
			</td>
		</tr>
	</table>
	</div>
[else]
	[$fw_error->('errorMsgs')]
[/if]