# ---------------------------------------------
# Config Data

#btnName```btnImageLocation```formAction```hiddenInputs name===value (value is processed)

{cntlbar_buttonList===
btnMainViewList```[($fw_sPath->'controls') + 'btn_rtn2list_ylw.gif']```[$fw_requestPage->'self']```fw_s===[var:'fw_s']
btnMainShowAll```[($fw_sPath->'controls') + 'btn_resetlist_ylw.gif']```[$fw_requestPage->'self']```fw_s===[var:'fw_s']
btnMainNewRcrd```[($fw_sPath->'controls') + 'btn_newrcrd_ylw.gif']```[$fw_requestPage->'self']```fw_s===[var:'fw_s']
#btnMainPreferences```[($fw_sPath->'controls') + 'btn_preferences_ylw.gif']```[$fw_requestPage->'self']```fw_s===[var:'fw_s']
btnMainSearch```[($fw_sPath->'controls') + 'btn120_search_tan.gif']```[$fw_requestPage->'self']```fw_s===[var:'fw_s']
}

# ---------------------------------------------
# Display Code

<div id="edpcntlbarmain">
<table cellspacing="0">
	<tr>
		<td>
		</td>
		{edp_mainCntlbar_buttons}
	</tr>
</table>
</div>
