<div id="edpcntlbarfltr">
	<table cellspacing="0">
		<tr>
			<td>
				<form id="courseFilter" action="[$fw_requestPage->'self']" method="post" name="courseFilter">
					<input type="hidden" name="fw_srch" value="new">
					<input type="hidden" name="fw_s" value="[$fw_s]">

					<input type="hidden" name="m_rStatOp" value="eq">
					<span class="bold">Approved:</span>[$rcrdStatus->(drawAsPopup(-currentValue=var('m_rStat'),-tabIndex=5))]&nbsp;
					<span class="bold">Last name:&nbsp;</span>[$srchOpShortL->(drawAsPopup(-currentValue=var('m_uNameLOp'),-tabIndex=6))]
					<input type="text" name="m_uNameL" value="[var:'m_uNameL']" size="12" />
					<input type="image" name="btnListFltrGo" src="[$fw_sPath->'controls']ibtn_go_grn.gif" alt="Go" align="absmiddle" />
				</form>
			</td>
		</tr>
	</table>
</div>
