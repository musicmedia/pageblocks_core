[if(var('fw_user')->('loginValid') == 'Y')]
<div id="siteMngrMenu">
<p><?lassoscript
	fwpGui_htextmenu(
		-menu		= 'admin',
		-tween		= '&nbsp;|&nbsp;',
		-left		= '|&nbsp;',
		-right		= '&nbsp;|',
		-paramsGET	= 'fw_s, sctnreset=1'
		);
?>&nbsp;<a href="/siteDbm/migrator" target="_blank" title="Opens in new window">DBM</a>&nbsp;|&nbsp;<a href="/siteMngr/mngr_login?fw_logout=Y&amp;fw_s=[var('fw_s')]">Logout</a>&nbsp;|
</p>
</div>
[/if]