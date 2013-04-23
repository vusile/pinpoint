<div style = 'clear: none; float: left; font-size:15px; margin-left: 10px;margin-right:0px;<?php if(isset($width)) echo $width; ?>'>


<?php if(isset($content)) echo $content; ?>

<?php if(isset($ads)): ?>

	<?php foreach($ads->result() as $ad): ?>

		<p><strong><?php echo $ad->description ?></strong></p>
		<object type="application/x-shockwave-flash" data="uploads/<?php echo $ad->ad; ?>" width="<?php if($ad->width != '') echo $ad->width; else echo $sizes[$ad->size]['width']; ?>" height="<?php if($ad->height != '') echo $ad->height; else echo $sizes[$ad->size]['height'] ?>"> 
	    <param name="movie" value="uploads/<?php echo $ad->ad; ?>" />
	    <param name="quality" value="high" />
		</object>

	<?php endforeach;?>

<?php endif; ?>



</div>
<div style = 'clear: none; float: right; width: 300px;margin-left: 10px;margin-right:0px;'>
<?php if (isset($peopleimg)) echo $peopleimg; ?>

</div>
<!--<div class='grid_9'>
<p>745px</p>
</div>-->
