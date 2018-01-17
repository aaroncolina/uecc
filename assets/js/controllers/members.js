
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
function load_member_form(id){
	$('#members_modal').modal('show');
    var url = base_url + controller + '/load_member_form'
    $.ajax({url,
          type: "GET",
          async: true,
          dataType: "json",
          data: {
          	'id' : id
          },
          success: function(data) {
           $('#members_modal .modal-body').hide()
           								  .empty()
                               			  .append(data)
                           			  	  .fadeIn();
          }
      });
}

function view_member(){
	alert('Are you sure you want to delete this Member?');
}

function edit_member(){
	alert('Are you sure you want to delete this Member?');
}

function delete_member(){
	alert('Are you sure you want to delete this Member?');
}

