
<!-- template_2colwn -->

<body> 

	[fwpPage_loadAlerts]

	<div id="pagewrapper">

		<div id="headerCapWrapper">
			<div id="headerCapLeft"></div>
			<div id="headerCapCntr"></div>
			<div id="headerCapRight"></div>
		</div>

		<div id="pgblockhdr">
			[include: ($fw_sPath->'headers') + $fw_pgHeader]
		</div> <!-- /pgblockhdr -->

		<div id="pgblockbody">

			<?lassoscript
			if: (var:'fw_user')->'loginValid' == 'Y';
				include: (($fw_sPath->'headers') + 'menu_siteMngr.dsp');
			/if;
			?>

			<div id="pgblock2colwnmain">
				[fwpPage_loadBlock: 'main']
			</div> <!-- /pgblock2colwnmain -->

			<div id="pgblock2colwnright">
				[fwpPage_loadBlock: 'right']
			</div> <!-- /pgblock2colwnright -->

			<div id="sidebar">
				[fwpPage_loadBlock: 'sidebar']
			</div> <!-- /pgblock2colwnright -->

		</div> <!-- /pageblockbody -->

		<div id="pgblockftr">
			[include: ($fw_sPath->'footers') + $fw_pgFooter]
		</div> <!-- /pgblockftr -->

		<div id="footerCapWrapper">
			<div id="footerCapLeft"></div>
			<div id="footerCapCntr"></div>
			<div id="footerCapRight"></div>
		</div>

	</div> <!-- /pagewrapper -->
</body>
