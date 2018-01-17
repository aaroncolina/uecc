<button class="btn btn-primary" onClick="load_member_form()">Add</button>
<hr>
<table id="member_table" class="table table-bordered">
	<thead>
		<tr>
			<th style="width:16% !important">First Name</th>
			<th style="width:16% !important">Last Name</th>
			<th style="width:15% !important">Middle Name</th>
			<th style="width:8% !important">Gender</th>
			<th style="width:11% !important">Birthdate</th>
			<th style="width:11% !important">Member Active</th>
			<th style="width:22% !important">Actions</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach($member_list as $key => $value){ ?> 
		<tr>
			<td><?php echo $value['first_name']; ?></td>	
			<td><?php echo $value['last_name']; ?></td>	
			<td><?php echo $value['middle_name']; ?></td>	
			<td class="text-center"><?php echo ((($value['gender']=='M'))? 'Male':'Female')?></td>	
			<td class="text-center"><?php echo convert_date_to_format($value['birthdate'], 'mysql_to_american'); ?></td>	
			<td class="text-center">
				<input name="active" type="checkbox" <?php echo ((($value['member_active']=='Y'))? 'checked':'')?> labelWidth='10' data-id="<?php echo $value['id']?>" data-off-text="No" data-on-text="Yes" data-on-color="success" data-off-color="danger">
			</td>	
			<td class="text-center">
				<div class="btn-group btn-group-sm">
					<button type="button" onClick="view_member_profile('<?php echo $value['id']?>')" class="btn btn-primary">View Full Profile</button>
					<button type="button" onClick="edit_member('<?php echo $value['id']?>')" class="btn btn-warning">Edit</button>
					<button type="button" onClick="delete_member('<?php echo $value['id']?>')" class="btn btn-danger">Delete</button>
				</div>
			</td>	
		</tr>
		<?php } ?>
	<tbody>
</table>

<!-- MODALS -->
<div class="modal fade" id="members_modal">	
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Add Member</h4>
      </div>
      <div class="modal-body">

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>


</div>
<!-- MODALS -->

<script>
$(document).ready(function(){
	$("input[name='gender']").bootstrapSwitch({
	    'animate': true,
	    'size': 'small', 
	    'handleWidth': '30px',
	    'onSwitchChange': function(event, state) {
	    	if(state==true){
    	 		$(this).val('F');
	    	}else {
    	  		$(this).val('M');
	    	}
	    }
	});


    $('input[name="birthdate"]').datepicker({
      autoclose: true
    })
});
</script