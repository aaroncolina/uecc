<script src="<?php echo asset_url('js/jquery.min.js'); ?>"></script>
<?php if(file_exists(dir_path('assets/js/controllers/'.$controller.'.js'))){ ?>
<script src="<?php echo asset_url('js/controllers/'.$controller.'.js?ver=1'); ?>"></script>
<?php } ?>
<script src="<?php echo asset_url('js/jquery-ui.min.js'); ?>"></script>
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="<?php echo asset_url('js/bootstrap.min.js'); ?>"></script>
<script src="<?php echo asset_url('js/raphael.min.js'); ?>"></script>
<script src="<?php echo asset_url('js/morris.min.js'); ?>"></script>
<script src="<?php echo asset_url('js/jquery.sparkline.min.js'); ?>"></script>
<script src="<?php echo asset_url('js/jquery-jvectormap-1.2.2.min.js'); ?>"></script>
<script src="<?php echo asset_url('js/jquery-jvectormap-world-mill-en.js'); ?>"></script>
<script src="<?php echo asset_url('js/jquery.knob.min.js'); ?>"></script>
<script src="<?php echo asset_url('js/moment.min.js'); ?>"></script>
<script src="<?php echo asset_url('js/daterangepicker.js'); ?>"></script>
<script src="<?php echo asset_url('js/bootstrap-datepicker.min.js'); ?>"></script>
<script src="<?php echo asset_url('js/bootstrap3-wysihtml5.all.min.js'); ?>"></script>
<script src="<?php echo asset_url('js/jquery.slimscroll.min.js'); ?>"></script>
<script src="<?php echo asset_url('js/fastclick.js'); ?>"></script>
<script src="<?php echo asset_url('js/adminlte.min.js'); ?>"></script>
<script src="<?php echo asset_url('js/jquery.dataTables.min.js'); ?>"></script>
<script src="<?php echo asset_url('js/dataTables.bootstrap.min.js'); ?>"></script>
<script src="<?php echo asset_url('js/bootstrap-switch.min.js'); ?>"></script>
<!-- <script src="<?php echo asset_url('js/dashboard.js'); ?>"></script>-->
<script src="<?php echo asset_url('js/demo.js'); ?>"></script>
