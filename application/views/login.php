<? /*<h2>Login Form</h2>
 <?=$this->session->flashdata('notification')?>
<?php echo form_open('member/login') ?>
<div class="input">
    <?php
    echo form_label('Username');
    echo form_input('username');
    ?>
</div>
<div class="input">
    <?php
    echo form_label('Password');
    echo form_password('password');
    ?>
</div>
<div class="submit">
    <?php
    echo form_submit('login', 'Login');
    ?>
</div>
<?php echo form_close() */?>

<!doctype html public "✰">
<html lang="en-us" class="no-js">
	<head>
		<meta charset="utf-8">
		<title>EIS | Excutive Information System</title>

  		<meta name="description" content="http://themeforest.net/item/adminica-the-professional-admin-template/160638">
  		<meta name="author" content="Oisin Lavery - Tricycle Labs">

	<!-- iPhone, iPad and Android specific settings -->

		<meta name="viewport" content="width=device-width; initial-scale=1; maximum-scale=1;">
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />

		<link href="images/interface/iOS_icon.png" rel="apple-touch-icon">

	<!-- Styles -->

		<link rel="stylesheet" href="<?=base_url()?>assets/styles/adminica/reset.css">
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,700">


		<link rel="stylesheet" href="<?=base_url()?>assets/styles/plugins/all/plugins.css">

		<link rel="stylesheet" href="<?=base_url()?>assets/styles/adminica/all.css">



		<link rel="stylesheet" href="<?=base_url()?>assets/styles/themes/layout_switcher.php?default=layout_fixed.css" >
		<link rel="stylesheet" href="<?=base_url()?>assets/styles/themes/nav_switcher.php?default=nav_top.css" >
		<link rel="stylesheet" href="<?=base_url()?>assets/styles/themes/skin_switcher.php?default=switcher.css" >
		<link rel="stylesheet" href="<?=base_url()?>assets/styles/themes/theme_switcher.php?default=theme_green.css" >
		<link rel="stylesheet" href="<?=base_url()?>assets/styles/themes/bg_switcher.php?default=bg_honeycomb.css" >

		<link rel="stylesheet" href="<?=base_url()?>assets/styles/adminica/colours.css"> 
		<script src="<?=base_url()?>assets/scripts/plugins-min.js"></script>
		<script src="<?=base_url()?>assets/scripts/adminica/adminica_all-min.js"></script>
		<script type="text/javascript" src="<?=base_url()?>assets/scripts/jquery-min.js"></script>

		</head>
	<body>
	<div id="pjax">
		<div id="wrapper" data-adminica-nav-top="1" data-adminica-side-top="1">

<div id="pjax">
		<div id="wrapper">
			<div class="isolate">
				<div class="center narrow">
					<div class="main_container full_size container_16 clearfix">
						<div class="box">
							<div class="block">
								<div class="section">
									<div class="alert dismissible alert_light">
										<img width="45" height="40" src="<?=base_url()?>assets/images/interface/logo.png">
										<strong>Welcome to Executive Information System.</strong><br>
										<?php if ($this->session->flashdata('notification')){echo "<span style=\"color:red;\">".$this->session->flashdata('notification')."</span>"; } else { echo "Please enter your details to login.";} ?>
									</div>
								</div>
								<?php echo form_open('member/login') ?>
								<fieldset class="label_side top">
									<label for="username_field">Username</label>
									<div>
										<input type="text" id="username" name="username" class="required">
									</div>
								</fieldset>
								<fieldset class="label_side bottom">
									<label for="password_field">Password</label>
									<div>
										<input type="password" id="password" name="password" class="required">
									</div>
								</fieldset>
								<div class="button_bar clearfix">
									<button class="wide" type="submit">
										<img src="images/icons/small/white/key_2.png">
										<span>Login</span>
									</button>
								</div>
								<?php echo form_close()?>
							</div>
						</div>
					</div>
					
				</div>
			</div>