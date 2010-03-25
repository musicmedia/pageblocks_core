<form name="stdadminmainbar" id="stdadminmainbar" method="post" action="[$fw_requestPage->('self')]">
	<p style="float:left;"><strong>Core Language: [$languagesShortLong->(find($fw_gCoreLanguage))]</strong></p>
	<input type="hidden" value="[var('fw_s')]" name="fw_s">
	[if($fw_edvCurrentView == 'manageStringLang')]
	<span class="btnbarbutton"><input type="image" src="[$fw_sPath->('controls')]btn_rtn2list_ylw.gif" alt="Back to List" name="btnMainGoHome" /></span>
	[else]
	[if($fw_edvCurrentView == 'home')]
	<span class="btnbarbutton"><input type="image" src="[$fw_sPath->('controls')]btn_resetlist_ylw.gif" alt="Reset List" name="btnMainShowAll" /></span>
	[else]
	<span class="btnbarbutton"><input type="image" src="[$fw_sPath->('controls')]btn_rtn2list_ylw.gif" alt="Back to List" name="btnMainGoHome" /></span>
	[/if]
	<span class="btnbarbutton"><input type="image" src="[$fw_sPath->('controls')]btn_newrcrd_ylw.gif" alt="New Record" name="btnMainNewRcrd" /></span>
	[/if]
</form>
