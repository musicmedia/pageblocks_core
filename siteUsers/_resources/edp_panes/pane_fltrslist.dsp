[if: (($fw_user->'loginValid') == 'Y') && !($fw_error->'errorMsgs')]


[else]
	[($fw_error->'errorMsgs')]
[/if]