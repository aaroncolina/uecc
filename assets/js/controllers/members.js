
$(document).ready(function(){
	$('#member_table').DataTable({
	});




	$("input[name='active']").bootstrapSwitch({
	    'animate': true,
	    'size': 'small', 
	    'handleWidth': '30px',
	    'onSwitchChange': function(event, state) {
    	  // AJAX CALL
	      console.log($(this).data("id")); // DOM element
	      console.log(state);
	    }
	});
});


/* Functionalities */
function view_member_profile(){
	alert('Are you sure you want to delete this Member?');
}

function edit_member(){
	alert('Are you sure you want to delete this Member?');
}

function delete_member(){
	alert('Are you sure you want to delete this Member?');
}
