<script type="text/javascript" src="js/jquery.maskedinput-1.3.min.js"></script>
<script>   
		jQuery(document).ready(function(){
			jQuery("#contact").validationEngine();
			
			jQuery(function($){
			$("#phone").mask("+255 999 999 999");
			});
		});
</script>

<div style = 'clear: none; width: 550px; font-size:12px; margin-left:20px; margin-right:0px; margin-top:65px;'>
<?php 

$attributes = array ('id'=>'contact', 'name'=>'contact', 'class'=>"wufoo page", 'autocomplete'=>'off');
echo form_open ('send_message/', $attributes); 

?>
<span style = 'color: red'><?php if(strlen(validation_errors()!='')) echo 'Your message was NOT sent because of:' .  validation_errors(); ?></span>
<ul>
<li  class="notranslate      ">
<label class="desc" for="name">
Name:
<span id="req_4" class="req">*</span>
</label>
<div>
<input id="name" name="name" type="text" spellcheck="false" class="field text medium validate[required]" value="<?php echo set_value('name'); ?>" maxlength="255" tabindex="1" /> 
</div>
</li>
<li  class="notranslate      ">
<label class="desc" for="company">
Company:
<span id="req_4" class="req">*</span>
</label>
<div>
<input id="company" name="company" type="text" spellcheck="false" class="field text medium validate[required]" value="<?php echo set_value('company'); ?>" maxlength="255" tabindex="2" /> 
</div>
</li>
<li  class="notranslate      ">
<label class="desc" for="email">
Email:
<span id="req_4" class="req">*</span>
</label>
<div>
<input id="email" name="email" type="email" spellcheck="false" class="field text medium validate[required,custom[email]]" value="<?php echo set_value('email'); ?>" maxlength="255" tabindex="3" /> 
</div>
</li>
<li class="notranslate      ">
<label class="desc" for="confirm_email">
Confirm Email:
<span id="req_4" class="req">*</span>
</label>
<div>
<input id="confirm_email" name="confirm_email" type="email" spellcheck="false" class="field text medium validate[required,custom[email]],equals[email]" value="<?php echo set_value('confirm_email'); ?>" maxlength="255" tabindex="4" /> 
</div>
</li>
<li class="notranslate      ">
<label class="desc"  for="phone">
Phone Number:

</label>
<div>
<input id="phone" name="phone" type="text" spellcheck="false" class="field text medium text-input" value="<?php echo set_value('phone'); ?>" maxlength="255" tabindex="5" /> 
</div>
</li>
<li class="notranslate      ">
<label class="desc"  for="subject">
Subject:
<span id="req_4" class="req">*</span>
</label>
<div>
<input id="subject" name="subject" type="text" spellcheck="false" class="field text medium validate[required] text-input" value="<?php echo set_value('subject'); ?>" maxlength="255" tabindex="5" /> 
</div>
</li>
<li  
class="notranslate altInstruct     "><label class="desc"  for="message">
Message:
<span id="req_1" class="req">*</span>
</label>
<div>
<textarea id="message" name="message" class="field textarea medium validate[required] text-input" spellcheck="true" rows="10" cols="50" tabindex="6" onkeyup="" required  ><?php echo set_value('message'); ?></textarea>

</div>

</li>
<li  
class="notranslate altInstruct     "><label class="desc"  for="message">
Captcha:
<span id="req_1" class="req">*</span>
</label>
<p class="instruct" id="instruct1" style="margin-left: 115px; width: 66%;"><medium>Enter the text in the box below</medium></p>
<p class="instruct" id="instruct1" style="margin-left: 115px;
width: 66%;"><?php echo $cap['image']; ?></p><br />

<div>
<input id="captcha" name="captcha" type="text" spellcheck="false" class="field text medium, validate[required]" value="" maxlength="255" tabindex="7" style="margin-left: 115px;
width: 66%;" /> 

</div>

</li>
<li class="buttons ">
<div>

                    <input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="Send Message" style="margin-left: 115px;
width:43%;"
 /></div>

</li>

</ul>
</form> 
<!--<div id="stylized" class="myform">
<form id="form" name="form" method="post" action="index.html">
<h1>Sign-up form</h1>
<p>This is the basic look of my form without table</p>

<label>Name
<span class="small">Add your name</span>
</label>
<input type="text" name="name" id="name" />

<label>Email
<span class="small">Add a valid address</span>
</label>
<input type="text" name="email" id="email" />

<label>Password
<span class="small">Min. size 6 chars</span>
</label>
<input type="text" name="password" id="password" />

<button type="submit">Sign-up</button>
<div class="spacer"></div>

</form>
</div>-->

</div><!--container-->	

<div style = 'clear: none; width: 300px; height:30px;font-size:14px; margin-right: 145px;float: right;margin-top: -570px;'>
	<h1 style="font-size: 18px;color: #efee0f; ">Get In Touch</h1>
	<h2 style="font-size: 13px;">Call Us Monday- Friday 9a.m- 5p.m EAT</h2>


<p style="margin: -3px 0px 3px -3px;">+255 784 402 463	</p>
<br>
<!--<img src="images/mail.png";/><p style="margin: -28px 0px 10px 50px;font-size:15px;">sales@PinPointAfricaMedia.com
	</p>-->
</div>
		

                   
