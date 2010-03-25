[if($fw_user->('loginValid') == 'Y')]
	<div class="stdform">
		<table cellspacing="1">
			<tr>
				<td class="label" width="282">Currently Installed Languages:</td>
				<td width="567">[$currAppLangs->(join(', '))]</td>
			</tr>
			<tr height="12">
				<td class="label" width="282" height="12"></td>
				<td width="567" height="12"></td>
			</tr>
			<tr>
				<td class="label" width="282">Add Language To Application:</td>
				<td width="567">[$languages->drawAsPopup(-class='fwppopup width130')]</td>
			</tr>
			<tr>
				<td class="label" width="282"></td>
				<td width="567">
					<span class="btnbarbutton"><input type="image" src="[$fw_sPath->('controls')]btn80_add_grn.gif" alt="Add" name="btnFormAdd" /></span>
				</td>
			</tr>
			<tr height="12">
				<td class="label" width="282" height="12"></td>
				<td width="567" height="12"></td>
			</tr>
			<tr>
				<td class="label" width="282">Remove Language From Application:</td>
				<td width="567">[$appLanguages->drawAsPopup(-class='fwppopup width130')]</td>
			</tr>
			<tr>
				<td class="label" width="282"></td>
				<td width="567">
					<span class="btnbarbutton"><input onclick="return confirm('Are you sure you want to remove this application string language? It can not be undone.');" type="image" src="[$fw_sPath->('controls')]btn80_remove_red.gif" alt="Remove" name="btnFormRemove" /></span>
				</td>
			</tr>
			<tr height="80">
				<td class="label" width="282" height="80"></td>
				<td width="567" height="80"></td>
			</tr>
		</table>
	</div>
[/if]