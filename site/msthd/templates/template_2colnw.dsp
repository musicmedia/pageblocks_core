
<!-- template_2colnw -->

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

			<div id="pgblock2colnwleft">
				[fwpPage_loadBlock: 'left']
			</div> <!-- /pgblock2colnwleft -->

			<div id="pgblock2colnwmain">
				[fwpPage_loadBlock: 'main']
			</div> <!-- /pgblock2colnwmain -->

			<div id="sidebar">
				[fwpPage_loadBlock: 'sidebar']
			</div> <!-- /sidebar -->

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
