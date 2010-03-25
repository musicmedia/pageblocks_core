
[if: var:'fw_hintEmailed']

	<h2>Account Found</h2>
	<p>Your password has been located, and was e-mailed to you. <a href="mngr_login">Return to login page</a>.<br />
		[loop: 4]
		<br />
		[/loop]
	</p>
[else]

	<h2>Email address not recognized </h2>
	<p>An account with that e-mail address was not found. Perhaps it was entered incorrectly. <a href="mngr_login">Try again</a>.<br />
		[loop: 4]
		<br />
		[/loop]
	</p>

[/if]