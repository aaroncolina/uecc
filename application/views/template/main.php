<!DOCTYPE html>
<html>
<?php echo $header; ?>
<?php echo $data_parsed_to_js; ?>
<body class="hold-transition skin-purple sidebar-mini">
<div class="loading">Loading&#8230;</div>
<div class="wrapper">
	<?php echo $side_navbar; ?>
	<?php echo $top_navbar; ?>
  	<div class="content-wrapper">
  		<section class="content">
  			<div class="box box-secondary">
  				<div class="box-body" id="content_holder">
					<?php echo $view_page; ?>
  				</div>
			</div>
		</section>
	</div>
	<?php echo $right_side_navbar; ?>
	<?php echo $footer; ?>
<?php echo $modal; ?>
<?php echo $js; ?>
</div>

<script>
$(document).ready(function(){
	$('.loading').fadeOut();
});
</script>
</body>
</html>