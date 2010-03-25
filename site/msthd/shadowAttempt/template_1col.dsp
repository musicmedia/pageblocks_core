<?lassoscript include: ($fw_sPath->'apiLibs') + 'fwpPage_templateHead.lgc'; ?>
<body> 
	[if: $fw_construction || $fw_dataOffline || $fw_maintenance]
		[include: ($fw_sPath->'msthd') + 'alerts.dsp']
	[/if]

	<div id="pagewrapper">

		<div id="headerCapWrapper">
			<div id="headerCapShdwLeft"></div>
			<div id="headerCapLeft"></div>
			<div id="headerCapCntr"></div>
			<div id="headerCapRight"></div>
			<div id="headerCapShdwRight"></div>
		</div>

		<div id="headerWrapper">
			<div id="pgblockhdr">
				[include: ($fw_sPath->'headers') + $fw_pgHeader]
			</div> <!-- /pgblockhdr -->
		</div>

		<div id="bodyWrapper">
			<div id="bodyShdwLeft"></div>

			<div id="pgblockbody">
				<div id="pgblock1colmain">
					[fwpPage_loadBlock: 'main']
				</div> <!-- /pgblock1colmain -->
	
				<div id="sidebar">
					[fwpPage_loadBlock: 'sidebar']
				</div> <!-- /sidebar -->
			</div>

			<div id="bodyShdwRight"></div>
		</div> <!-- /pageblockbody -->

		<div id="footerWrapper">
			<div id="bodyShdwLeft"></div>
			<div id="pgblockftr">
				[include: ($fw_sPath->'footers') + $fw_pgFooter]
			</div> <!-- /pgblockftr -->
			<div id="bodyShdwRight"></div>
		</div>


		[include: ($fw_sPath->'apiLibs') + 'fwpPage_wrapup.lgc']

		<div id="footerCapWrapper">
			<div id="footerCapShdwLeft"></div>
			<div id="footerCapLeft"></div>
			<div id="footerCapCntr"></div>
			<div id="footerCapRight"></div>
			<div id="footerCapShdwRight"></div>
		</div>

	</div> <!-- /pagewrapper -->
</body>
</html>
