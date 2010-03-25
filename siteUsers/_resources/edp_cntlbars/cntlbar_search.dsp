# ---------------------------------------------
# Config Data

{cntlbar_buttonList===

btnSrchSearch===[($fw_sPath->'controls') + 'btn80_search_grn.gif']
btnSrchCancel===[($fw_sPath->'controls') + 'btn80_cancel_ylw.gif']
}

{cntlbar_buttonClasses===

btnSrchSearch===formbtnsave
btnSrchCancel===formbtncancel
}

{cntlbar_buttonTitles===
btnSrchSearch===Submits the form and modifies the List to show only found records.
btnSrchCancel===Ignores changes made to the form, and jumps to the List page.
}

# hiddenInputs are ```name===value, name===value, etc...
# value can be LDML code as it will be processed

{cntlbar_searchInputs===
}

{cntlbar_useDefaultInputs===true}


# ---------------------------------------------
# Display Code

[if: ($fw_error->size) == 0]

<div id="edpcntlbarform">
<table cellspacing="0">
	<tr>
		<td class="right">
			{edp_formCntlbar_inputs}{edp_formCntlbar_buttons}
		</td>
	</tr>
</table>

# validation error alert bar

[if: $fw_formIsNotValid]
[include: ($fw_mPath->'panels') + 'invalidEntryBar.dsp']
[/if]

</div>
[/if]