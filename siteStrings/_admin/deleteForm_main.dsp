[if(($fw_user->('loginValid') == 'Y') && (!$fw_error->('errorMsgs')))]

	<h2>[$adminPageTitle] : Delete Record</h2>
	
	[if($fw_edvShowConfirmation)]
	
	<form action="[$fw_requestPage->('self')]" method="post" name="delConfirm">
		<input type="hidden" name="fw_s" value="[$fw_s]" />
		<div style="text-align: center">
			<p>The record for [$m_strPath] was successfully deleted.</p>
			<p><input type="image" src="[$fw_sPath->('controls')]btn120_continue_grn.gif" alt="Continue" name="btnContinue" /></p>
		</div>
	</form>
	
	[else]
	
	[include($fw_sPath->('Panels') + 'deleteInstsPanel.dsp')]
	
	<form action="[$fw_requestPage->('self')]" method="post" name="delForm">
		<input type="hidden" name="fw_s" value="[$fw_s]" />
		<input type="hidden" name="fw_edvLockID" value="[$fw_edvLockID]" />
		[include($fw_mPath->('Panels') + 'adminFormControlBar.dsp')]
		<div class="stdform">
			<table border="0" cellspacing="1" cellpadding="2" width="700">
				<tr>
					<td class="label" width="120">Path</td>
					<td>[$m_strPath]</td>
				</tr>
				<tr>
					<td class="label" width="120">Name</td>
					<td>[$m_strName]</td>
				</tr>
				<tr>
					<td class="label top" width="120">Content</td>
					<td>[fwpGui_stylize($m_strValue)]</td>
				</tr>
			</table>
		</div>
	</form>
	[/if]

[else]
	[$fw_error->('errorMsgs')]
[/if]