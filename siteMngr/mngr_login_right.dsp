[if: false]
<link href="/site/css/pb_apiStyles.css" rel="stylesheet" />
<link href="/site/css/styles_main.css" rel="stylesheet" />
[/if]

<h3>Forgot your password?</h3>
<p><small>Enter your e-mail address below, and click Get Password. Your password will be e-mailed to you.</small></p>
<form name="getpswd" action="mngr_pswdCnfrm" method="post">
	<div class="center">
		<input type="text" name="e" size="16" />
		<br /><br /><input src="[$fw_sPath->'controls' + 'btn120_getPassword_tan.gif']" alt="Get Password" type="image" name="btnGetPswd" />
	</div>
</form>
<br />
[if: (var:'fw_helpAccountsEmail') || (var:'fw_helpAccountsPhone')]
	<hr />
	<p><small>Need help, or wish to make changes to your account? Contact us at:</small></p>
	[if: (var:'fw_helpAccountsPhone')]
		<p><small>Phone: [var:'fw_helpAccountsPhone']</small></p>
	[/if]
	[if: (var:'fw_helpAccountsEmail')]
		<p><small>Email: [fwpGui_emailMask: $fw_helpAccountsEmail, -link='Help Email']</small></p>
		<p><small>Your return e-mail address must be the same as the e-mail address we have on record for your account.</small></p>
	[/if]
[/if]