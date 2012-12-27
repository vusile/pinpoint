<!DOCTYPE html>

<html>

<meta charset="UTF-8">


	<head>
		<title><?php echo $title; ?></title>
		<base href = '<?php echo base_url(); ?>' />
		<link href="styles/style.css?column_width=65&column_amount=12&gutter_width=20" media="screen" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
		<script type="text/javascript" src="js/general.js"></script>
		<link href='styles/validationEngine.jquery.css' rel='stylesheet' type='text/css'>
		<script type="text/javascript" src="js/jquery.validationEngine-en.js"></script>
		<script type="text/javascript" src="js/jquery.validationEngine.js"></script>
		<style type="text/css">

			body { background-color: #000; font-family: Verdana, Verdana, Geneva, sans-serif;}

			.container { /*background-color:#231f20;*/ background-color:#000; color: #fff}

			.container div p.headerfont { color: #efee0f; margin-left: 5px; text-align: justify; }
			.container div h1.headerfont { color: #efee0f; margin-left: 10px; text-align: left; font-size:18px; }
			.container div.header { border-left: 2px solid #fff; width: 640px; }
			
			.container div #menu{ list-style: none; margin:0; padding:0; float: left; z-index:999px !important}
			.container div img { margin:0; padding:0; }
			.container div #menu li { list-style: none; margin-top:20px;  float: left; margin-left:10px;}
			.container div a { color:#009bdf; }

			div.header  p { padding:10px; }

			h2 { color:#fff; }

		</style>
		
		<script type="text/javascript">

		  var _gaq = _gaq || [];
		  _gaq.push(['_setAccount', 'UA-33798506-1']);
		  _gaq.push(['_trackPageview']);

		  (function() {
			var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		  })();

		</script>

	</head>



	<body>

		<div class="container container_12">


			<div class="grid_4" style = 'margin-top: 10px;'>

			

				<a style = 'margin-left: 20px;' href = '<?php echo base_url() ?>' title = 'Pinpoint Africa Media Logo' ><img src = 'images/logo-transparent.png' alt = 'Pinpoint Africa Media Logo' /></a>
			

				

			</div>
			<div class ="grid_7 header" style = 'margin-top: 10px;'>

			<?php if ($h1 != ''): ?>
				<h1  class ='headerfont'><?php echo $h1 ?></h1>
			<?php endif; ?>
			
				<p class = 'headerfont'><?php echo strip_tags($intro); ?></p>

			</div>

			
<div class='clear'>&nbsp;</div>