[if: false]
<link href="/site/css/pb_apiStyles.css" rel="stylesheet" />
<link href="/site/css/styles_main.css" rel="stylesheet" />
<link href="/site/css/styles_admin.css" rel="stylesheet" />
[/if]

[if: ($fw_user->'loginValid') == 'Y']

<input type="hidden" name="fw_edpSubmittedForm" value="profile" />

<div class="stdform">
	<table width="700" cellspacing="1">
		<tr height="8">
			<td class="empty" width="120" height="8"></td>
			<td class="empty" width="210" height="8"></td>
			<td class="empty" width="120" height="8"></td>
			<td class="empty" width="250" height="8"></td>
		</tr>
		<tr>
			<td class="label" width="120">Organization</td>
			<td width="210" >
				<input class="txtinput" type="text" name="m_uOrg" value="[$m_uOrg]" size="24" maxlength="128" />
			</td>
			<td class="label" width="120">Phone</td>
			<td width="250" >
				<?lassoscript $fw_validator->(showMsgs:'i_uPhonea'); $fw_validator->(showMsgs:'i_uPhonep'); $fw_validator->(showMsgs:'i_uPhonen'); $fw_validator->(showMsgs:'i_uPhonex'); ?>
				<input class="txtinput" type="text" name="i_uPhonea" value="[$i_uPhonea]" size="3" maxlength="3" />-<input class="txtinput" type="text" name="i_uPhonep" value="[$i_uPhonep]" size="3" maxlength="3" />-<input class="txtinput" type="text" name="i_uPhonen" value="[$i_uPhonen]" size="4" maxlength="4" />&nbsp;x<input class="txtinput" type="text" name="i_uPhonex" value="[$i_uPhonex]" size="5" maxlength="5" />
			</td>
		</tr>
	</table>
</div>

[else]
	[($fw_error->'errorMsgs')]
[/if]
