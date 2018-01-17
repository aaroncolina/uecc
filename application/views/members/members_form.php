<form novalidate>
	<div class="row">
		<div class="col-md-6 border-right-gray">
			<section>
				<div class="box box-primary">
					<div class="box-header">
					<label>Required Information</label>
					</div>
					<div class="box-body">
	      			<div class="row">
	      				<div class="col-md-4">
	      					<div class="form-group">
	      						<label>First Name:</label>
	      						<?php echo form_input('first_name', '', array('class'=>'form-control',
																				'required'=>'required',
																				'maxlength'=>'100')); ?>
	      					</div>
	      				</div>
	      				<div class="col-md-4">
	      					<div class="form-group">
	      						<label>Middle Name:</label>
	      						<?php echo form_input('middle_name', '', array('class'=>'form-control',
																				'required'=>'required',
																				'maxlength'=>'100')); ?>
	      					</div>
	      				</div>
	      				<div class="col-md-4">
	      					<div class="form-group">
	      						<label>Last Name:</label>
	      						<?php echo form_input('last_name', '', array('class'=>'form-control',
																				'required'=>'required',
																				'maxlength'=>'100')); ?>
	      					</div>
	      				</div>
	      			</div>
	      			<div class="row">
	      				<div class="col-md-4">
	      					<div class="form-group">
	      						<label>Birthdate:</label>
	      						<?php echo form_input('birthdate', '', array('class'=>'form-control',
																				'required'=>'required',
																				'readonly'=>'readonly')); ?>
	      					</div>
	      				</div>
	      				<div class="col-md-4">
	      					<div class="form-group">
	      						<label>Gender</label><br/>
	      						<input name="gender" type="checkbox" data-off-text="M" data-on-text="F" data-on-color="female" data-off-color="male">
	      					</div>
	      				</div>
	      				<div class="col-md-4">
	      					<div class="form-group">
	      						<label>Member Active</label><br/>
	      						<input name="active" type="checkbox" labelWidth='10' data-off-text="No" data-on-text="Yes" data-on-color="success" data-off-color="danger"></div>
	      					</div>
	      				</div>
	      			</div>
					</div>
			</div>
		</section>
		</div>
		<div class="col-md-6">
		<label>Other Information</label>
		</div>

	</div>
</form>