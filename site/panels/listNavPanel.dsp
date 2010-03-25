
<div class="listnavbar">
	[if: (self->'foundCount') > '0']
		<input type="hidden" name="fw_s" value="[var:'fw_s']" />
		[if: (self->'showFirst') != '1']
			<input type="image" name="btnListFirst" src="[$fw_sPath->'controls']ibtn_firstmini_ylw.gif" alt="First Page" />
		[else]
			<img src="[$fw_sPath->'controls']ibtn_firstmini_dim.gif" alt="First Page Inactive" width="13" height="20" border="0" />
		[/if]
	
		[if: (self->'showFirst') != '1']
			<input type="image" name="btnListPrev" src="[$fw_sPath->'controls']ibtn_prevmini_ylw.gif" alt="Previous Page" />
		[else]
			<img src="[$fw_sPath->'controls']ibtn_prevmini_dim.gif" alt="Previous Page Inactive" width="25" height="20" border="0" />
		[/if]
	
	
		&nbsp;&nbsp;<strong>[self->'showfirst']</strong>&nbsp;thru&nbsp;<strong>[self->'showlast']</strong>&nbsp;of&nbsp;<strong>[self->'foundcount']</strong>&nbsp;&nbsp;
	
	
		[if: (self->'showLast') != (self->'foundCount')]
			<input type="image" name="btnListNext" src="[$fw_sPath->'controls']ibtn_nextmini_ylw.gif" alt="Next Page" />
		[else]
			<img src="[$fw_sPath->'controls']ibtn_nextmini_dim.gif" alt="Next Page Inactive" width="25" height="20" border="0" />
		[/if] 
	
		[if: (self->'showLast') != (self->'foundCount')]
			<input type="image" name="btnListLast" src="[$fw_sPath->'controls']ibtn_lastmini_ylw.gif" alt="Last Page" />
		[else]
			<img src="[$fw_sPath->'controls']ibtn_lastmini_dim.gif" alt="Last Page Inactive" width="13" height="20" border="0" />
		[/if]
	[/if]
</div>