
[if: ($fw_user->'loginValid') == 'Y']

<input type="hidden" name="fw_edpSubmittedForm" value="list" />

[$usersList->draw]

[else]
	[($fw_error->'errorMsgs')]
[/if]