[if: false]
<link href="/site/css/pb_apiStyles.css" rel="stylesheet" />
<link href="/site/css/styles_main.css" rel="stylesheet" />
<link href="/site/css/styles_admin.css" rel="stylesheet" />
[/if]

[if: (($fw_user->'loginValid') == 'Y') && !($fw_error->'errorMsgs')] 

<h3>Authentication Profile</h3>

<input type="hidden" name="fw_edpSubmittedForm" value="summary" />

<div class="stdform">
<table width="700" cellspacing="1">
	<tr>
		<td class="label top" width="120">
			<small>Last Updated:
			<br />Last Logged in:
			<br />Times Logged in:</small>
		<td class="top" width="230">
			<small>
			[if:$m_rModDate][fwpDate_mmShort4:$m_rModDate] <span class="dim">([fwpDate_12hrTime:$m_rModDate])</span>[/if]<br />
			[if:$m_uLastIn][fwpDate_mmShort4:$m_uLastIn] <span class="dim">([fwpDate_12hrTime:$m_uLastIn])</span>[/if]<br />
			[$m_uIns]
			</small>
		</td>
		<td class="label top" width="120">
			<small>Failed Attempts:
			<br />Locked Out as of:
			<br />PW Created:</small>
		</td>
		<td class="top" width="230">
			<small>
			[$m_uTries]
			<br />[if:$m_uLokTime][fwpDate_mmShort4:$m_uLokTime] <span class="dim">([fwpDate_12hrTime: $m_uLokTime])</span>[/if]
			<br />[if:$m_uPwDate][fwpDate_mmShort4:$m_uPwDate] <span class="dim">([fwpDate_12hrTime: $m_uPwDate])</span>[/if]
			</small>
		</td>
	</tr>

	<tr height="8">
		<td class="empty" width="120" height="8"></td>
		<td class="empty" width="230" height="8"></td>
		<td class="empty" width="120" height="8"></td>
		<td class="empty" width="230" height="8"></td>
	</tr>
	<tr>
		<td class="label" width="120">Approved</td>
		<td width="230">[$m_rStat]</td>
		<td class="label" width="120">Rcrd No</td>
		<td width="230">[var:'m_rNo']</td>
	</tr>
	<tr>
		<td class="label" width="120">Full Name (F L)</td>
		<td colspan="3" width="582">[$m_uNameF]&nbsp;[$m_uNameL]</td>
	</tr>
	<tr height="8">
		<td class="empty" width="120" height="8"></td>
		<td class="empty" width="230" height="8"></td>
		<td class="empty" width="120" height="8"></td>
		<td class="empty" width="230" height="8"></td>
	</tr>
	<tr>
		<td class="label" width="120">User Email</td>
		<td colspan="3" width="582" >[$m_uEmail]</td>
	</tr>
		<tr>
			<td class="label" width="120">Restricted to IP</td>
			<td colspan="3" width="582">[$m_uHosts]</td>
		</tr>
		<tr>
		<td class="label" width="120">Password Hint</td>
		<td colspan="3" width="582" >[$m_uHint]</td>
	</tr>
	<tr>
		<td class="label top" width="120">Password</td>
			<td class="top" colspan="3" width="582"><span class="dim">Not shown for security purposes.</span></td>
		</tr>
</table>
</div>

<br />
<h3>Authorization Privileges</h3>

[$permsTable->(draw: -drawMode='noedit', -type='noedit', -colWidth=100, -tblPadding=4)]

<br />
<h3>Authentication Data Filters</h3>

[$filtersListSummary->draw]

[else]
	[($fw_error->'errorMsgs')]
[/if]