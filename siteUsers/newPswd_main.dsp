
[if: (($fw_user->'loginValid') == 'Y') && !(($fw_error->'errorMsgs'))]

<h2>Update Your Password</h2>


<div class="stdform">
	<table width="720" cellspacing="1">
		<tr>
			<td class="empty top" width="540">
				[if: var:'upwnw' == 'Y']
				<p>The password you just used is for one-time use only. Please create your own password for future use.</p>
				[else]
				<p><strong>Your password is due to expire in <em>[(integer:($fw_user->getProfile:'fw_gUsrPswdDays')) - (integer:($fw_user->getProfile:'userPswdDays'))] day(s)</em>.</strong> <br />Please update your password. It must be different than the past [($fw_user->getProfile:'fw_gUsrPswdHistory')] passwords you have used.</p>
				[/if]
			</td>
			<td class="empty" width="20"></td>
			<td class="empty top right" width="160">
				<form id="abort" name="abort" action="/index.lasso" method="post">
					<input src="[$fw_sPath->'controls']btn_cancel.gif" alt="Cancel" type="image" name="btnCancel" />
				</form>
			</td>
		</tr>
	</table>
</div>

[records:-inlinename=($usrsUpdtReactn->'inlineName')]
	<form action="newPswdResult" method="post" name="updtForm">
		<div class="stdform">
			<table width="720" border="0" cellspacing="1" cellpadding="4">
				<tr>
					<td class="label reqd top" width="140">New Password</td>
					<td class="top" width="220"><input class="txtinput" type="password" name="upw1" value="" size="12" maxlength="12" /><br />
					<p class="instr">Must be a minimum of [$fw_user->(getProfile:'fw_kUsrPswdMinLen')] characters, cannot contain any spaces, and must contain at least one character from the following sets:<br />
					[if: integer:($fw_user->(getProfile:'fw_kUsrPswdLower'))]lower a-z[/if][if: integer:($fw_user->(getProfile:'fw_kUsrPswdUpper'))], upper A-Z[/if][if: integer:($fw_user->(getProfile:'fw_kUsrPswdDigit'))], digits 0-9[/if][if: integer:($fw_user->(getProfile:'fw_kUsrPswdSymbol'))], and symbols from !@#$%^&amp;*[/if].</p>
					</td>
					<td class="label reqd top" width="140">New Password Again</td>
					<td class="top" width="220"><input class="txtinput" type="password" name="upw2" value="" size="12" maxlength="12" /> <br />
						<small>Enter the password again so we can be sure there are no typing mistakes.</small></td>
				</tr>
				<tr>
					<td class="label reqd" width="140">Password Hint</td>
					<td colspan="3" width="598"><input class="txtinput" type="text" name="uhnt" value="[field:'userHint']" size="64" maxlength="64" /></td>
				</tr>
			</table>
		</div>
		[include: ($fw_sPath->'admnPanels') + 'savePanel.dsp']
	</form>
[/records]


[else]
<div id="stdform">
	<table width="725">
		<tr>
			<td>[($fw_error->'errorMsgs')]</td>
		</tr>
	</table>
</div>
[/if]