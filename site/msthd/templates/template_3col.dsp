
<!-- template_3col -->

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

			<div id="pgblock3colleft">
				[fwpPage_loadBlock: 'left']
			</div> <!-- /pgblock3colleft -->

			<div id="pgblock3colmain">
				[fwpPage_loadBlock: 'main']
			</div> <!-- /pgblock3colmain -->

			<div id="pgblock3colright">
				[fwpPage_loadBlock: 'right']
			</div> <!-- /pgblock3colright -->

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
