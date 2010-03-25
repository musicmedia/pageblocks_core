<?lassoscript if: !(var:'fw_gSiteConfigActive'); '<!-- denied! -->'; abort; /if; ?>

<?lassoscript
//	these inputs propogate the search criteria
//	as we scroll through multiple pages of the list
//	a future update will tie the search criteria into
//	the list itself which will eliminate the need for
//	handling it like this
?>

<input type="hidden" name="m_rStat" value="[var:'m_rStat']" />
<input type="hidden" name="m_rStatOp" value="[var:'m_rStatOp']" />
<input type="hidden" name="m_uOrg" value="[var:'m_uOrg']" />
<input type="hidden" name="m_uOrgOp" value="[var:'m_uOrgOp']" />

<div class="stdform">
<table cellspacing="0">
	<tr>
		<td class="empty">
			<p><small>The table may be re-sorted by clicking the sort button in any column. Click the button again to toggle ascending and descending sort order.</small></p>
		</td>
		<td class="empty right" width="200">
			[if: (self->'foundCount') > 0]
				<input type="hidden" name="fw_s" value="[var:'fw_s']" />

				[if: (self->'showFirst') != 1]
					<input type="image" name="btnListFirst" src="[$fw_sPath->'controls']ibtn_pgFirst.gif" alt="First Page" />
				[else]
					<img src="[$fw_sPath->'controls']ibtn_pgFirstdim.gif" alt="First Page Inactive" />
				[/if]

				[if: (self->'showFirst') != 1]
					<input type="image" name="btnListPrev" src="[$fw_sPath->'controls']ibtn_pgPrev.gif" alt="Previous Page" />
				[else]
					<img src="[$fw_sPath->'controls']ibtn_pgPrevdim.gif" alt="Previous Page Inactive" />
				[/if]

				[if: (self->'showLast') != (self->'foundCount')]
					<input type="image" name="btnListNext" src="[$fw_sPath->'controls']ibtn_pgNext.gif" />
				[else]
					<img src="[$fw_sPath->'controls']ibtn_pgNextdim.gif" alt="Next Page Inactive" />
				[/if] 

				[if: (self->'showLast') != (self->'foundCount')]
					<input type="image" name="btnListLast" src="[$fw_sPath->'controls']ibtn_pgLast.gif" alt="Last Page" />
				[else]
					<img src="[$fw_sPath->'controls']ibtn_pgLastdim.gif" alt="Last Page Inactive" />
				[/if]
			[/if]
		</td>
	</tr>
</table>
</div>