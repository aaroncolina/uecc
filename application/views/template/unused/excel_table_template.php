<table border="1" bordercolor="#DEDEDE">
	<thead>
		<tr>
			<?php foreach($header as $key => $value){ ?> 
				<th class=""><?php echo $value; ?></th>
			<?php } ?>
		</tr>
	</thead>
	<tbody>
		<?php foreach($data as $key => $value){ ?> 
			<tr>
				<?php foreach($value as $skey => $svalue){ ?>
					<td><?php echo $svalue; ?></td>
				<?php } ?>
			</tr>
		<?php } ?>
	</tbody>
</table>