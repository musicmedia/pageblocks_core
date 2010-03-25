[if: (($fw_user->'loginValid') == 'Y') && !($fw_error->'errorMsgs')]

[fwpActn_response: -reactn='usrsUpdtReactn']

[else]
	[($fw_error->'errorMsgs')]
[/if]
