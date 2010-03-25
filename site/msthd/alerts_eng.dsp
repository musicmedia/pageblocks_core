<div class="alerts">
	<h2>
		<img src="[$fw_sPath->('controls')]alert_caution.gif" alt="Caution" width="32" height="32" border="0">&nbsp;&nbsp;﻿
		[if($fw_construction)]
			Site Update in Progress
		</h2>
		<p>
			You may continue to view pages on the site; however, certain sections or functions may be disabled or erratic.
		</p>
		<p>
			Also, any changes you make to data, even if permitted, may not be permanent.
		</p>
		[/if]
		[if($fw_dataOffline)]
			Databases are Offline
		</h2>
		<p>
			The databases are offline for backups or other maintenance.
		</p>
		<p>
			You may continue to view pages on the site; however, certain sections or functions may be disabled or erratic.
		</p>
		[/if]
		<?lassoscript
		
		// reformatted 2008-08-08 Nikolaj de Fine Licht
		
		if($fw_maintenance);

			if($fw_maintenance >> '```');
				var('fw_disableLoginStart'	= date($fw_maintenance->(split('```'))->(get:1)));
				var('fw_disableLoginStop'	= date($fw_maintenance->(split('```'))->(get:2)));
			/if;
			
			if((date > $fw_disableLoginStart) && (date < $fw_disableLoginStop));
				var('fw_disableLogin' = true);
			/if;

		?>
			Maintenance Announcement
		</h2>
		<h3>
			Maintenance is scheduled for [$fw_disableLoginStart->(format('%h:%M %p'))] through [$fw_disableLoginStop->(format('%h:%M %p'))] on [$fw_disableLoginStart->(format('%b %d'))].
		</h3>
		<p class="alert">
			Please complete any work in progress by that time.<br />
			The system should not be used during that time period even if you can log in.
		</p>
		<p>
			This notice will be removed when it is OK to use the system again.
		</p>
		[/if]
</div>