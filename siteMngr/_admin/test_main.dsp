[if: false]
<link rel="stylesheet" href="/site/css/pb_apiStyles.css">
<link rel="stylesheet" href="/site/css/styles_main.css">
<link rel="stylesheet" href="/site/css/styles_admin.css">
[/if]

<!--[if: (($fw_user->'loginValid') == 'Y') && !(($fw_error->'errorMsgs'))]-->
[if: !(($fw_error->'errorMsgs'))]


<h2>Testing Routines</h2>

<p>Use this page for testing under authenticated user conditions.</p>

<form id="testValidator" action="[$fw_requestPage->'self']" method="post" name="testValidator">
<input type="hidden" name="fw_s" value="[$fw_s]">

<?lassoscript $fw_validator->showMsgs:'testOne' ?>
<p>
One: <input type="text" name="testOne" size="24">
</p>

<?lassoscript $fw_validator->(showMsgs:'testTwo') ?>
<p>
Two: <input type="text" name="testTwo" size="24">
</p>

<input type="submit" name="submitButtonName">

</form>

[else]
	[($fw_error->'errorMsgs')]
[/if]