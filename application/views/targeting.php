<div style = 'clear: none; float: right; width: 655px; font-size:12px; margin-left: 10px; margin-right:20px;'>

<?php echo $content; ?>

<?php 
$i=0;
foreach($options->result() as $option): 
?>
<div class='grid_4' style = 'text-align: left;'>
<h2 style = 'color: #efee0f;'><?php echo $option->title ?></h2>
<?php echo $option->text ?>
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
<?php echo $footer; ?>

<div class = 'clear' style = 'width:650px'></div>

</div>
<!--<div class='grid_9'>
<p>745px</p>
</div>-->
