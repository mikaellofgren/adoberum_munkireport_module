<?php //Initialize models needed for the table
$adoberum = new adoberum_model($serial_number); 

?>

<h2>Adobe Remote Updater Manager</h2>
<table class="table table-striped">
<tr>
					<td>Version</td>
					<td><?php echo $adoberum->version; ?></td>
					<tr>
					<td>Return Code <a href="https://helpx.adobe.com/se/creative-cloud/packager/using-remote-update-manager.html" target="_blank">more info</a></td>
					<td><?php echo $adoberum->returncode; ?></td>
					<tr>
					<td>Failed to install (showing the last five)</td>
					<td><?php echo $adoberum->failed1; ?></td>
					<tr>
					<td></td>
					<td><?php echo $adoberum->failed2; ?></td>
					<tr>
					<td></td>
					<td><?php echo $adoberum->failed3; ?></td>
					<tr>
					<td></td>
					<td><?php echo $adoberum->failed4; ?></td>
					<tr>
					<td></td>
					<td><?php echo $adoberum->failed5; ?></td>
				</tr>
