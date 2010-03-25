[if(($fw_user->('loginValid') == 'Y') && !$fw_error->('errorMsgs'))]
<input type="hidden" name="fw_edpSubmittedForm" value="search" />

<div class="stdform">
	<table width="700" cellspacing="1">
		<tr>
			<td class="label" width="120">First Name</td>
			<td width="230">
				[!var('m_uNameFOp') ? var('m_uNameFOp' = 'cn')]
				[$srchOpShortF->(drawAsPopup(-currentValue=$m_uNameFOp,-tabIndex=5))]
				<input class="txtinput" type="text" name="m_uNameF" size="16" maxlength="32" />
			</td>
			<td class="label" width="120">Session Time</td>
			<td width="230">
				[!var('m_rSessTimeOp') ? var('m_rSessTimeOp' = 'gte')]
				[$rSessTimeOp->(drawAsPopup(-currentValue=$m_rSessTimeOp,-tabIndex=11))]
				<input class="txtinput" type="text" name="m_rSessTime" size="16" maxlength="32" />
			</td>
		</tr>
		<tr>
			<td class="label" width="120">Last Name</td>
			<td width="230">
				[!var('m_uNameLOp') ? var('m_uNameLOp' = 'cn')]
				[$srchOpShortL->(drawAsPopup(-currentValue=$m_uNameLOp,-tabIndex=7))]
				<input class="txtinput" type="text" name="m_uNameL" size="16" maxlength="32" />
			</td>
			<td class="label" width="120">Logins</td>
			<td width="230" >
				[!var('m_uInsOp') ? var('m_uInsOp' = 'lte')]
				[$uInsOp->(drawAsPopup(-currentValue=$m_uInsOp,-tabIndex=9))]
				<input class="txtinput" type="text" name="m_uIns" size="5" maxlength="6" />
			</td>
		</tr>
		<tr>
			<td class="label" width="120">Organization</td>
			<td width="230">
				[!var('m_uOrgOp') ? var('m_uOrgOp' = 'cn')]
				[$uOrgOp->(drawAsPopup(-currentValue=$m_uOrgOp,-tabIndex=11))]
				<input class="txtinput" type="text" name="m_uOrg" size="16" maxlength="64" />
			</td>
			<td class="label" width="120">Approved</td>
			<td width="230"><input type="hidden" name="hiddenName" value="hiddenValue">
				[!var('m_rStat') ? var('m_rStat' = 'Y')]
				[$rcrdStatus->drawAsPopup(-currentValue=$m_rStat,-tabIndex=13)]
			</td>
		</tr>
	</table>
</div>
[else]
	[($fw_error->'errorMsgs')]
[/if]