

<style>
#advertising ul { font-size: 14px; list-style: none; margin:0}
#advertising ul li { padding: 10px; border-bottom: 2px solid #757779; border-left: 2px solid #757779;}
#advertising ul li ul li {color: #efee0f; border: none; padding: 0; margin-left: -40px;}
#advertising h2 {color: #efee0f;}
</style>

<!--<div id ="advertising" style = 'clear: none; float: right; width: 655px; font-size:12px; margin-left: 10px;'>-->

<br><br>
<div class=grid_12>
		<div id="pdf"><a target = "_blank" href="uploads/files/PinPointRateCard2013.pdf"><img src="images/file_pdf.png"  style="margin-bottom: -10px;
margin-top: 10px;
margin-left:60px;"/> </a>
       <p style="margin-bottom:5px;"><a target = "_blank" href="uploads/files/PinPointRateCard2013.pdf">Print PDF Rate Card</a></p>

	</div>
	
<h1 style="font-size:18px;margin-top:30px;">Delivery Numbers Are Guaranteed! Prices Are VAT Exclusive </h1> 

    
<table class="stats" cellspacing="10" cellpadding="10"> 

 <?php foreach($titles->result() as $title): ?>
   
<tr>
<td class="hed" colspan="4">
<?php if($title->icon != ''):?>
<img src="images/<?php echo $title->icon ?>" class="imgleft" style="margin-left: -900px;"/><h2 style="margin-top: -60px;"><?php echo $title->title; ?></h2><img src="images/<?php echo $title->icon ?>" class="imgright" style="margin-right: -900px;"/>
<?php else: ?>
<h2 ><?php echo $title->title; ?></h2>
<?php endif; ?>
</td>
</tr>

	<?php 
	$i=0;
	if($i==0)
		echo '<tr>';
	if(isset($rates[$title->id]))
		foreach($rates[$title->id] as $key=>$rate): 

	?>
		<td ><span style="font-weight:bold;"> <?php echo $key ?></span><br><?php echo $rate ?></td>
	<?php 
	
	$i++;
	if($i==3)
	{
		echo '<tr>';
		$i=0;
	}
	
	endforeach; 

	?>		
</tr>
<?php endforeach; ?>


<tr>
<td class="hed" colspan="4"><h2>Many More Options are Available - Just Let Us Know Who You Want to Reach</h2><a target = "_blank" href="uploads/files/PinPointRateCard2013.pdf">Download Rate Card</a></td>
</tr>
</table> 

</div>


<!--
<div class='grid_4' style = 'text-align:center;font-size:18px;border:solid 1px #fff;margin-right: 10px;'><span style="color:red;margin-bottom:30px;">$250 </span><br>200,000 ad impressions to <br> 35,000 different people</div>
<div class='grid_4' style = 'text-align:center;font-size:18px;border:solid 1px #fff;margin-right: 10px;'><span style="color:red;margin-bottom:30px;">$250 </span><br>200,000 ad impressions to <br> 35,000 different people</div>
<div class='grid_4' style = 'text-align:center;font-size:18px;border:solid 1px #fff;margin-right: 10px;'><span style="color:red;margin-bottom:30px;">$250 </span><br>200,000 ad impressions to <br> 35,000 different people</div>

</div> !-->



