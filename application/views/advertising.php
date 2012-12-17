<style>
#advertising ul { font-size: 14px; list-style: none; margin:0}
#advertising ul li { padding: 10px; border-bottom: 2px solid #757779; border-left: 2px solid #757779;}
#advertising ul li ul li {color: #efee0f; border: none; padding: 0; margin-left: -40px;}
#advertising h2 {color: #efee0f;}
</style>

<div id ="advertising" style = 'clear: none; float: right; width: 655px; font-size:12px; margin-left: 10px;'>
<br><br>
<h2 >Targeting Options - Increase ROI by Targeting Your Campaign</h2>

<?php foreach($cpm_advertising->result() as $cpm): ?>

<div class = 'clear' style = 'width:650px'></div>
<h2 ><?php echo $cpm->title; ?></h2>
<div style = 'clear: none; float: left; width: 70px;'>
<img src = "images/<?php echo $cpm->image ?>"> 
</div>
<div style = 'clear: none; float: left; width: 550px;'>
<?php echo $cpm->description ?>

</div>
<?php endforeach; ?>
 

<div class = 'clear' style = 'width:650px'></div>
<br><br><strong>You can also purchase ad space in the following ways:</strong>
<div class='grid_4' style = 'text-align: left; margin-top:5px;'>
<h2>CPC</h2>
Cost Per Click
<br>Starting at: $0.55 (TSH 880) per click
<br><a href='advertising/cpc'>Learn More...</a>
</div>
<div class='grid_4' style = 'text-align: left; margin-top:5px;'>
<h2>CPA</h2>
Cost Per Acquisition
<br>Starting at: $2.50 (TSH 4,000) per sale/lead
<br><a href='advertising/cpa'>Learn More...</a>
</div>

<div class='grid_4' style = 'text-align: left; margin-top:30px;'>
<h2>Lockdown</h2>
Exclusive page sponsorship
<br>Starting at: $50 (TSH 80,000) per/month
<br><a href='advertising/lockdown'>Learn More...</a>
</div>


</div>
<!--<div class='grid_9'>
<p>745px</p>
</div>-->
