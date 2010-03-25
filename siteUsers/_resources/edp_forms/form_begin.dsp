[if: false]
<link href="/site/css/pb_apiStyles.css" rel="stylesheet" />
<link href="/site/css/styles_main.css" rel="stylesheet" />
<link href="/site/css/styles_admin.css" rel="stylesheet" />
[/if]

[if: ($fw_user->'loginValid') == 'Y']

<input type="hidden" name="fw_edpSubmittedForm" value="begin" />

<div class="stdform">
	<table width="700" cellspacing="1">
		[if: !(var:'btnMainNewRcrd.x') && (var:'fw_edpNewRcrdFlag') != 'Y']
		<tr>
			<td class="label top" width="120">
				<small>Last Updated:
				<br />Last Logged in:
				<br />Times Logged in:</small>
			</td>
			<td class="top" width="210">
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
			<td class="top" width="250">
				<table cellspacing="0" width="99%">
					<tr>
						<td class="top">
							<small>
							[$m_uTries]
							<br />[if:$m_uLokTime][fwpDate_mmShort4:$m_uLokTime] <span class="dim">([fwpDate_12hrTime: $m_uLokTime])</span>[/if]
							<br />[if:$m_uPwDate][fwpDate_mmShort4:$m_uPwDate] <span class="dim">([fwpDate_12hrTime: $m_uPwDate])</span>[/if]
							</small>
						</td>
						<td class="cntr">
							<span class="bold">Reset<br />Lockout<br /></span>
							<input type="checkbox" name="i_uTries" value="1" />
						</td>
					</tr>
				</table>
			</td>
		</tr>
		[else]
			<input type="hidden" name="m_uLastIn" value="" />
			[var:'m_uPhone' = (string)]
		[/if]
		<tr height="8">
			<td class="empty" width="120" height="8"></td>
			<td class="empty" width="210" height="8"></td>
			<td class="empty" width="120" height="8"></td>
			<td class="empty" width="250" height="8"></td>
		</tr>
		<tr>
			<td class="label reqd" width="120">Approved</td>
			<td width="210">
				[!var('m_rStat') ? var('m_rStat' = 'N')]
				[$rcrdStatus->(drawAsRadioBtns(-currentValue=$m_rStat))]
			</td>
			<td class="label" width="120">Rcrd No</td>
			<td width="250">[$edpPrepController->'prepRcrdID']</td>
		</tr>
		<tr>
			<td class="label reqd" width="120">Full Name (F L)</td>
			<td colspan="3" width="589">
				<?lassoscript $fw_validator->(showMsgs:'m_uNameF'); $fw_validator->(showMsgs:'m_uNameL'); ?>
				<input class="txtinput" type="text" name="m_uNameF" value="[$m_uNameF]" size="16" maxlength="24" />&nbsp;&nbsp;<input class="txtinput" type="text" name="m_uNameL" value="[$m_uNameL]" size="24" maxlength="24" />
			</td>
		</tr>
		<tr height="8">
			<td class="empty" width="120" height="8"></td>
			<td class="empty" width="210" height="8"></td>
			<td class="empty" width="120" height="8"></td>
			<td class="empty" width="250" height="8"></td>
		</tr>
		<tr>
			<td class="label reqd" width="120">User Email</td>
			<td colspan="3" width="589">
				<?lassoscript $fw_validator->(showMsgs:'m_uEmail'); ?>
				<input class="txtinput" type="text" name="m_uEmail" value="[$m_uEmail]" size="48" maxlength="48" />
			</td>
		</tr>
		<tr>
			<td class="label top" width="120">Restricted to IP</td>
			<td class="top" colspan="3" width="589">
				<?lassoscript $fw_validator->(showMsgs:'m_uHosts'); ?>
				<input class="txtinput" type="text" name="m_uHosts" value="[$m_uHosts]" size="48" maxlength="48" /><br />
				<small>Enter space or comma separated IP addresses the user must login with.</small>
			</td>
		</tr>
		<tr>
			<td class="label reqd" width="120">Password Hint</td>
			<td colspan="3" width="589">
				<?lassoscript $fw_validator->(showMsgs:'m_uHint'); ?>
				<input class="txtinput" type="text" name="m_uHint" value="[$m_uHint]" size="48" maxlength="64" />
			</td>
		</tr>
		<tr>
			<td class="label reqd top" width="120">Password</td>
			<td class="top" width="210">
				<?lassoscript $fw_validator->(showMsgs:'i_upw1'); ?>
				<input class="txtinput" type="password" name="i_upw1" value="" size="12" maxlength="12" /><br />
				<p><small>
					Must be a minimum of [$fw_user->(getProfile:'fw_kUsrPswdMinLen')] characters, cannot contain any spaces, and must contain at least one character from the following sets:<br />
					[if: integer:($fw_user->(getProfile:'fw_kUsrPswdLower'))]lower a-z[/if][if: integer:($fw_user->(getProfile:'fw_kUsrPswdUpper'))], upper A-Z[/if][if: integer:($fw_user->(getProfile:'fw_kUsrPswdDigit'))], digits 0-9[/if][if: integer:($fw_user->(getProfile:'fw_kUsrPswdSymbol'))], and symbols from !@#$%^&amp;*[/if].
					[if: ($fw_requestPage->'name') >> 'update']<br />
						&nbsp;&nbsp;The current password is not shown for security purposes. To keep the same password, leave the above field empty. To change the password, enter the new pasword above.
					[/if]
				</small></p>
			</td>
			<td class="label reqd top" width="120">Verify Password</td>
			<td class="top" width="250">
				<?lassoscript $fw_validator->(showMsgs:'i_upw2'); ?>
				<input class="txtinput" type="password" name="i_upw2" value="" size="12" maxlength="12" /> <br />
				<p><small>Enter the password again so we can be sure there are no typing mistakes.</small></p>
			</td>
		</tr>
	</table>
</div>
<br />

[else]
	[($fw_error->'errorMsgs')]
[/if]