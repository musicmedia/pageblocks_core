
[if: (($fw_user->'loginValid') == 'Y') && !($fw_error->'errorMsgs')]

[if: $userFiltersList->'foundcount' == 0]

	<br />
	<h3>This User Has No Filters</h3>

[else]

	<br />
	[$userFiltersList->draw]

[/if]

[/if]