
<!-- template_error -->

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

			<div id="pgblock2colwnmain">
					[$fw_error->(handleAllErrors: 
						-pgBlock= 'main',
						-code	= var:'fw_errCode', 
						-data	= var:'fw_errMsg',
						-language = ($fw_client->'language'))]
					[$fw_error->'errorMsg']
			</div> <!-- /pgblock2colwnmain -->

			<div id="pgblock2colwnright">
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
