[if: false]
<link href="/site/css/pb_apiStyles.css" rel="stylesheet" />
<link href="/site/css/styles_main.css" rel="stylesheet" />
[/if]

<h1>Site Manager</h1>

<p>Please enter your email address and password:</p>
<form name="login" method="post" action="mngr_login2">
	<div class="stdform">
	<table border="0" cellpadding="4" cellspacing="1">
		<tr>
			<td class="label reqd" width="120">Email Address</td>
			<td width="260"><input class="txtinput" type="input" name="fw_n" id="fw_n" size="24" value="" /></td>
		</tr>
		<tr>
			<td class="label reqd" width="120">Password</td>
			<td width="260"><input class="txtinput" type="password" name="fw_p" id="fw_p" size="24" value="" /></td>
		</tr>
		<tr height="8">
			<td class="empty" width="120" height="8"></td>
			<td class="empty" width="260" height="8"></td>
		</tr>
		<tr>
			<td class="label right" colspan="2">
				<input src="[($fw_sPath->'controls') + 'btn120_login_grn.gif']" type="image" alt="Login" name="btnLogin" id="btnLogin" />
			</td>
		</tr>
	</table>
	</div>
</form>
<br /><?lassoscript
	'<p>pbStart Login: pb@test.com / pbVrsn550</p>' + 
	'<p>Delete this text in /siteMngr/mngr_login_main.dsp</p>';
?>