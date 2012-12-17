<div style = 'clear: none; float: right; width: 655px; font-size:12px; margin-left: 10px; margin-right:20px;'>

<?php echo $content; ?>

<?php 
$i=0;
foreach($sites->result() as $site): 
?>
<div class='grid_4' style = 'text-align: left; margin-top:10px;'>
<a target = "_blank" href = "<?php echo $site->url; ?>"><img src = "pageimages/<?php echo $site->logo ?>" /></a>
<?php echo $site->text ?>
</div>
<?php 
$i++;
if($i == 2)
{
	$i = 0;
	echo "<div class = 'clear' style = 'width:650px'></div>";
}
endforeach; 

?>
<div class = 'clear' style = 'width:650px'></div>
<?php echo $footer; ?>


</div>
<!--<div class='grid_9'>
<p>745px</p>
</div>-->
