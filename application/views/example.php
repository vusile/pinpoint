<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
<?php 
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<?php foreach($js_files as $file): ?>
	<script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
<style type='text/css'>
body
{
	font-family: Arial;
	font-size: 14px;
}
a {
    color: blue;
    text-decoration: none;
    font-size: 14px;
}
a:hover
{
	text-decoration: underline;
}
</style>
</head>
<body>
	<div>
		<a href='<?php echo site_url('backend/content')?>'>Content</a> |
		<a href='<?php echo site_url('backend/network_sites')?>'>Network Sites</a> |
		<a href='<?php echo site_url('backend/targeting_options')?>'>Targeting Options</a> |
		<a href='<?php echo site_url('backend/creative_services')?>'>Creating Services</a> | 
		<a href='<?php echo site_url('backend/cpm_advertising_bundles')?>'>CPM Advertising Bundles</a> 

	</div>
	<div style='height:20px;'></div>  
    <div>
		<?php echo $output; ?>
    </div>
</body>
</html>
