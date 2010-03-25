
[if: $edpPrepController->type != 'null']

<?lassoscript //----------------------------------------------------------- Page Heading 
?>

	<?lassoscript 

	if: (($edpPrepController->'prepForm') == 'home') || (($edpPrepController->'prepForm') == 'search');
		'<h2>User Administration</h2>';
	else;
		'<h2>User Administration : '; ($selectedRecord->'nameFirst'); ' '; ($selectedRecord->'nameLast'); '</h2>';
	/if;
	
	?>

[if: ($fw_user->(getProfile:'loginValid')) == 'Y' && !(($fw_error->'errorMsgs'))]

<?lassoscript //----------------------------------------------------------- Main Controller 
?>

	[$edpView->drawMainCntlbar]


<?lassoscript //----------------------------------------------------------- Home Body 
?>

	[if: (($edpPrepController->'prepForm') == 'home')]
	
		[$edpView->drawCntlBar:($edpPrepController->'prepForm')]
		[$edpView->drawForm:($edpPrepController->'prepForm')]
	
	[else: (($edpPrepController->'prepForm') == 'search')]
	
		[/* form tags could be in the form file, but having it here */]
		[/* centralizes all form tags here which is handy */]
		<form id="edpForm" name="edpForm" action="[$fw_requestPage->'self']" method="post">
			<input type="hidden" name="fw_s" value="[var:'fw_s']" />
			[$edpView->drawSearchCntlbar]
			[$edpView->drawForm:($edpPrepController->'prepForm')]
		</form>
	
	[else]
	
<?lassoscript //----------------------------------------------------------- Form Body 
?>

		[if: $fw_user->(getProfile:'userShowHelp') == 'Y']
			[$edpView->drawPane:'help']
		[/if]

		[$edpView->drawNavCntlbar]

		[if: (($edpPrepController->'prepForm') != 'summary') || (var:'btnListDelete.x')]

			<form id="edpForm" name="edpForm" action="[$fw_requestPage->'self']" method="post">
				<input type="hidden" name="fw_s" value="[var:'fw_s']" />
				[$edpView->drawFormCntlbar]
				[$edpView->drawForm:($edpPrepController->'prepForm')]
			</form>
	
			[if: ($edpPrepController->'prepForm') == 'filters']
				[$edpView->drawForm:'filtersList']
			[/if]

		[else]
			<p></p>
			[$edpView->drawForm:($edpPrepController->'prepForm')]
		[/if]
	[/if]

[else]
	[($fw_error->'errorMsgs')]
[/if]

[else]
	[($fw_error->'errorMsgs')]
[/if]



