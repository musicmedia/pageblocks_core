
<div id="fwpeditorhelppane"
<table cellspacing="0">
	<tr>
		<td width="555" class="top">
			[if: !(var:'btnListDelete.x')]
			<p><strong>To create/edit a record, follow these steps:</strong></p>
			<ul>
				<li>First, complete all fields in the Auth(entication) tab, and click the Save button<li>Next, click each of the tabs (in any order) to include additional information. Complete all fields in each tab and click the Save button on each form to save new or updated information.<li>For security purposes, <em>this form will remain active for <strong>[var:'fw_rcrdLockDelay'] minutes</strong></em>. Make sure your changes are completed and the form is saved within this time.</li>
			</ul>
			[else]
			<p><strong>Deleting an article:</strong></p>
			<ul>
				<li><strong>To Cancel deleting this record, click any yellow button or article editor tab.</strong></li>
				<li>To verify that you want this article deleted, click the red Delete button below.</li>
				<li>For security purposes, <em>this form will remain active for <strong>[var:'fw_rcrdLockDelay'] minutes</strong></em>. Make sure you delete the record within this time.</li>
			</ul>
			[/if]
		</td>
		<td width="20"></td>
		<td width="150" class="top">
			[if: !(var:'btnListDelete.x')]
			<p><strong>Save Your Changes!</strong></p>
			<small>Use the Save button to save changes</small><small>. If you make edits to this record, then clicking any tab, link, or yellow button will cancel those edits.</small>
			[else]
			<em>Once the delete button is clicked, the record will be deleted and cannot be recovered.</em>
			[/if]
		</td>
	</tr>
</table>
</div>