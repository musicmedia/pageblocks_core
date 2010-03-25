[if: false]
<link href="/site/css/pb_apiStyles.css" rel="stylesheet" />
<link href="/site/css/styles_main.css" rel="stylesheet" />
<link href="/site/css/styles_admin.css" rel="stylesheet" />
[/if]

[if: (($fw_user->'loginValid') == 'Y') && !($fw_error->'errorMsgs')]

<input type="hidden" name="fw_edpSubmittedForm" value="filters" />

[if: (var:'btnNavFilters.x') || ((var:'edp_NewFilterRcrd') == 'Y')]
<input type="hidden" name="fw_r" value="[fwpStr_randomID:20]" />
<input type="hidden" name="edp_NewFilterRcrd" value="Y" />
[else]
<input type="hidden" name="fw_r" value="[var:'m_rNo']" />
[/if]

<div class="stdform">
	<table cellspacing="1">
		<input type="hidden" name="m_ufID" value="[$edp_selectedRcrdID]" />
		<tr>
			<td class="label reqd" width="112">Filter Name</td>
			<td colspan="3">
				<?lassoscript $fw_validator->(showMsgs:'m_ufName'); ?>
				<input class="txtinput" type="text" name="m_ufName" value="[var:'m_ufName']" size="24" maxlength="32" />
			</td>
		</tr>
		<tr>
			<td class="label reqd" width="112">Table</td>
			<td width="220">
				<?lassoscript $fw_validator->(showMsgs:'m_ufTbl'); ?>
				<input class="txtinput" type="text" name="m_ufTbl" value="[var:'m_ufTbl']" size="24" maxlength="32" />
			</td>
			<td class="label reqd" width="112">Field</td>
			<td width="220">
				<?lassoscript $fw_validator->(showMsgs:'m_ufFld'); ?>
				<input class="txtinput" type="text" name="m_ufFld" value="[var:'m_ufFld']" size="24" maxlength="32" />
			</td>
		</tr>
		<tr>
			<td class="label reqd" width="112">Match Value</td>
			<td width="220">
				<?lassoscript $fw_validator->(showMsgs:'m_ufMat'); ?>
				<input class="txtinput" type="text" name="m_ufMat" value="[var:'m_ufMat']" size="24" maxlength="64" />
			</td>
			<td class="label reqd" width="112">Match Operator</td>
			<td width="220">
				[!var('m_ufOp') ? var('m_ufOp' = 'eq')]
				[$srchOpLong->(drawAsPopup(-currentValue=var('m_ufOp'),-tabIndex=10))]
			</td>
		</tr>
	</table>
</div>

[else]
	[($fw_error->'errorMsgs')]
[/if]