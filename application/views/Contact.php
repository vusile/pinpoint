<script type="text/javascript" src="js/jquery.maskedinput-1.3.min.js"></script>
<script>   
		jQuery(document).ready(function(){
			jQuery("#contact").validationEngine();
			
			jQuery(function($){
			$("#phone").mask("+255 999 999 999");
			});
		});
</script>

<div style = 'clear: none; float: right; width: 655px; font-size:12px; margin-left: 10px; margin-right:20px;'>
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
<p class="instruct" id="instruct1"><small>Enter the text in the box below</small></p>
<p class="instruct" id="instruct1"><?php echo $cap['image']; ?></p><br />

<div>
<input id="captcha" name="captcha" type="text" spellcheck="false" class="field text medium, validate[required]" value="" maxlength="255" tabindex="7" /> 

</div>

</li>
<li class="buttons ">
<div>

                    <input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="Send Message"
 /></div>

</li>

</ul>
</form> 
</div><!--container-->	
		
		

                   