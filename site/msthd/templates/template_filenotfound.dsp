
<!-- template_filenotfound -->

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
				[fwpPage_pageNotFound]
				[$fw_error->handleAllErrors]
				[($fw_error->'errorMsgs')]
			</div> <!-- /pgblock2colwnmain -->

			<div id="pgblock2colwnright">
				<?lassoscript
				(($fw_requestPage->'file')->endswith:'.lasso')
					? '<p class="dim bold">Try modifying your page request to eliminate the .lasso extension.</p><p class="dim">Since the site name change from fwpro.com to pageblocks.org, page names no longer use a .lasso extension.</p>';
				?>
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
