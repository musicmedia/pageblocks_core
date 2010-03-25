[if($fw_user->('loginValid') == 'Y')]

	<div class="stdform">
	<!-- orig width: 132 - 717 -->
		<table cellspacing="1">
			<tr>
				<td class="label" width="132">Path</td>
				<td width="717">[$m_strPath]</td>
			</tr>
			<tr>
				<td class="label" width="132">Name</td>
				<td width="717">[$m_strName]</td>
			</tr>
			<tr>
				<td class="label" width="132">Media</td>
				<td width="717">[$m_strMedia]</td>
			</tr>
			<tr>
				<td class="label" width="132">Variant</td>
				<td width="717">[$m_strVariant]</td>
			</tr>
			<tr>
				<td class="label top" width="132"><span style="font-weight:400;">Content in core language </span>[$languagesShortLong->(find($fw_gCoreLanguage))]
				<td width="717">[fwpGui_stylize($i_strValue)]</td>

			</tr>
			<tr>
				<td class="label top" width="132">
					<span style="font-weight:400;">Edit content in </span>[$languagesShortLong->(find($editLang))]<br /><br />
					<a href="[$fw_requestPage->('self')]?fw_s=[$fw_s]&fw_edvLockID=[var('fw_edvLockID')]&editLang=[var('editLang')]&cp=true">Insert content from core language</a><br /><br />
					<span class="labeltip"><a class="help" onclick="viewHelp('/help/popuphelp.lasso?h=stylize')">(use styles)</a></span>
				</td>
				<td width="717"><?lassoscript $tableDataObject->(showMsgsForInput('m_strValue')); ?><textarea name="m_strValue" rows="40" cols="80">[$m_strValue]</textarea></td>
			</tr>
		</table>
		
	</div>
	
[/if]