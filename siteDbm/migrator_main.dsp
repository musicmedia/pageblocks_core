<?lassoscript

	'<h2>dbMigrator</h2>';

	if($fw_debugIPFilter !>> $fw_client->'ip');
	
		'<p>' + 
			'Your IP address (' + $fw_client->ip + ') is not authorized to run this module.<br />' + 
			'Add your IP address in _initMasters.lgc.' + 
		'</p>';
		
	else;
	
		'<form name="dbmAction" id="dbmAction" action="' + response_filepath + '" method="post">' +
			'<div id="dbmButtonBar">';
				'<p>' + 
					'Database <strong>' + 
					$fw_dbMigrator->('dbName') + 
					'</strong> is at version <strong>' + 
						$fw_dbMigrator->('currentVersion') +
					 '</strong> ' +
				'</p><p>' + 
				'<input type="image" name="btnMigrateTo" src="' + $fw_mPath->('images') + 'btn_migrateTo.gif" border="0" />';
				'&nbsp<input type="image" name="btnPrintSchema" src="' + $fw_mPath->('images') + 'btn_printSchema.gif" border="0" />';
				'</p>' + 
			'</div>';
		'</form>';

		if(var('btnPrintSchema.x'));
		
			$fw_dbmSchema	= fwp_dbmSchema(-dbName = $fw_dbMigrator->('dbName'));
			$fw_dbmSchema->(drawSchemasFor($fw_dbMigrator->getTableNames));
		
		else(var('migrateTo') > 0);
		
//			$fw_dbmResult = $fw_dbMigrator->(run: -migrateTo=$migrateTo);
		
			if($fw_dbmResult);
				'<h3 class="alert">' + $fw_dbmResult + '</h3>' +
				'<p>Use a value from ' + $fw_dbMigrator->('firstMigration') + ' to ' + $fw_dbMigrator->('lastMigration') + '</p>' + 
				'<p>Current version is ' + $fw_dbMigrator->('currentVersion') + '</p>';
			else;
				'<h2>Migrated from ' + $fw_dbMigrator->('currentVersion') + ' to ' + $fw_dbMigrator->('migrateToVersion') + '</h2>';
				$fw_dbMigrator->showQueryStatements;
			/if;
	
		else;
		
			'<p>';
				loop(-from = $fw_dbMigrator->('firstMigration'), -to = $fw_dbMigrator->('lastMigration'));
					loop_count > 1 ? '<br />';
					$fw_dbMigrator->('currentVersion') != loop_count 
						? '<strong><a href="' + response_filepath + '?migrateTo=' + loop_count + '">Migrate to ' + loop_count + '</a></strong>'
						| 'Migrate to ' + loop_count;
				/loop;
			'</p>';
			
		/if;
		
	/if;

?>