function load_link(link){
	$('.loading').fadeIn();
	window.location = base_url+link;
}

function is_valid(str){
	return ((str == "" || str == "undefined" || str == undefined ||
				str == "null" || str == null || str == "NaN")? false : true);
}



function ajax_reload_inbox(){
    var url = window.location.href;
    $.ajax({url,
          type: "GET",
          async: true,
          dataType: "json",
          data: { is_ajax_call : true },
          success: function(data) {
           		$('#content_holder').empty()
                               		.append(data);
          }
      });
}