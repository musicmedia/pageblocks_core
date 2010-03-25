[if: false]
<link rel="stylesheet" href="/site/css/pb_apiStyles.css">
<link rel="stylesheet" href="/site/css/styles_main.css">
<link rel="stylesheet" href="/site/css/styles_admin.css">
[/if]

[if: ($fw_user->'loginValid') == 'Y']

<div class="stdform">

	<table cellspacing="1">
		<tr>
			<td class="label reqd" width="132">Show on Web*</td>
			<td width="717"><?lassoscript
				$tableDataObject->(showMsgsForInput('m_rStat'));
				!var('m_rStat') ? var('m_rStat' = 'Y');
				$rcrdStatus->drawAsRadioBtns(-currentValue=$m_rStat,-tabIndex=5);
				?>
			</td>
		</tr>
		<tr>
			<td class="label reqd" width="132">Path*</td>
			<td width="717"><?lassoscript $tableDataObject->(showMsgsForInput:'m_strPath'); ?><input type="text" name="m_strPath" value="[$m_strPath]" size="36" maxlength="48" /></td>
		</tr>
		<tr>
			<td class="label" width="132">Name*</td>
			<td width="717"><?lassoscript $tableDataObject->(showMsgsForInput:'m_strName'); ?><input type="text" name="m_strName" value="[$m_strName]" size="36" maxlength="48" /></td>
		</tr>
		<tr>
			<td class="label" width="132">Media*</td>
			<td width="717"><?lassoscript $tableDataObject->(showMsgsForInput:'m_strMedia'); ?><input type="text" name="m_strMedia" value="[$m_strMedia]" size="36" maxlength="48" /></td>
		</tr>
		<tr>
			<td class="label" width="132">Variant*</td>
			<td width="717"><?lassoscript $tableDataObject->(showMsgsForInput:'m_strVariant'); ?><input type="text" name="m_strVariant" value="[$m_strVariant]" size="36" maxlength="48" /></td>
		</tr>
		<tr>
			<td class="label reqd top" width="132">Content*<br>
				<br /><span class="labeltip"><a class="help" onclick="viewHelp('/help/popuphelp.lasso?h=stylize')">(use styles)</a></span></td>
			<td width="717"><?lassoscript $tableDataObject->(showMsgsForInput:'m_strValue'); ?><textarea name="m_strValue" rows="40" cols="80">[$m_strValue]</textarea></td>
		</tr>
	</table>
</div>
[/if]