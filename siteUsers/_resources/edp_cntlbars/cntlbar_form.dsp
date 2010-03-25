# ---------------------------------------------
# Config Data

{cntlbar_buttonList===

btnFormSave===[($fw_sPath->'controls') + 'btn80_save_grn.gif']
btnFormCancel===[($fw_sPath->'controls') + 'btn80_cancel_ylw.gif']
btnFormDelete===[($fw_sPath->'controls') + 'btn80_delete_red.gif']
}

{cntlbar_buttonClasses===

btnFormSave===formbtnsave
btnFormCancel===formbtncancel
btnFormDelete===formbtndelete
}

{cntlbar_buttonTitles===
btnFormSave===Saves the form data as shown, and jumps to the Summary page.
btnFormCancel===Ignores changes made to the form, and jumps to the Summary page.
btnFormDelete===Deletes this record.
}

# hiddenInputs are ```name===value, name===value, etc...
# value can be LDML code as it will be processed

{cntlbar_newRcrdInputs===
}
{cntlbar_updateRcrdInputs===
}
{cntlbar_deleteRcrdInputs===
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