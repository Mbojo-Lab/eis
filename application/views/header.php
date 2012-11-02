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

<div id="topbar" class="clearfix">

	<a href="dashboard_sorter.php" class="logo"><span>Executive Information System<br><h3>Kementrian Perumahan Rakyat</h3></span></a>

</div><!-- #topbar --><!-- Closing Div for Stack Nav, you can boxes under the stack before this -->

			<div id="main_container" class="main_container container_16 clearfix">
				
<div id="nav_top" class="dropdown_menu clearfix round_top">
	<ul class="clearfix">
		<li class="icon_only"><a href="<?=base_url()?>" class="pjax"><img src="<?=base_url()?>assets/images/icons/small/grey/laptop.png"/><span class="display_none">Dashboard</span></a></li>

		<li><a href="<?=base_url()?>index.php/geospasial"><img src="<?=base_url()?>assets/images/icons/small/grey/google_maps.png"/><span>GeoSpasial</span></a>
			<ul class="open_multiple">
				<li><a href="<?=base_url()?>index.php/geospasial" class="pjax"><span>DAK</span></a></li>
				<li><a href="<?=base_url()?>index.php/geospasial/tabs/2" class="pjax"><span>Pembangunan Rusunawa</span></a></li>
				<li><a class="hide_mobile" href="<?=base_url()?>index.php/geospasial/tabs/3"><span>PSU</span></a>
				</li>				
			</ul>
		</li>
		<li><a href="<?=base_url()?>index.php/kepegawaian"><img src="<?=base_url()?>assets/images/icons/small/grey/users.png"/><span>Kepegawaian</span></a>
		</li>
		<li><a href="<?=base_url()?>index.php/aset"><img src="<?=base_url()?>assets/images/icons/small/grey/create_write.png"/><span>
        Aset Manajemen</span></a>
			<ul>
				<li><a href="<?=base_url()?>index.php/aset" class="pjax"><span>Aset IT</span></a></li>
				<li><a href="<?=base_url()?>index.php/aset/tabs/2" class="pjax"><span>Aset Non IT</span></a></li>
			</ul>
		</li>
		<li><a href="<?=base_url()?>index.php/perumahan" class="pjax"><img src="<?=base_url()?>assets/images/icons/small/grey/apartment_building.png"/><span>Perumahan</span></a></li>
		<li><a href="<?=base_url()?>index.php/monitoring"><img src="<?=base_url()?>assets/images/icons/small/grey/blocks_images.png"/><span>Monitoring</span></a>
			<ul>
				<li><a href="<?=base_url()?>index.php/monitoring" class="pjax"><span>Kegiatan Swakelola</span></a></li>
				<li><a href="<?=base_url()?>index.php/monitoring/tabs/2" class="pjax"><span>Kontraktual</span></a></li>
			</ul>
		</li>
		<li><a href="<?=base_url()?>index.php/perpustakaan"><img src="<?=base_url()?>assets/images/icons/small/grey/file_cabinet.png"/><span>Perpustakaan</span></a>
			<ul>
				<li><a href="<?=base_url()?>index.php/perpustakaan" class="pjax"><img src="<?=base_url()?>assets/images/icons/small/grey/folder.png"/><span>Koleksi Perpustakaan</span></a></li>
				<li><a href="<?=base_url()?>index.php/perpustakaan/tabs/2" class="pjax"><img src="<?=base_url()?>assets/images/icons/small/grey/users.png"/><span>Kunjungan Perpustakaan</span></a></li>
			</ul>
		</li>
		<li><a href="<?=base_url()?>index.php/perkantoran" class="pjax"><img src="<?=base_url()?>assets/images/icons/small/grey/strategy.png"/><span>Perkantoran</span></a>
			<ul class="dropdown_right">
				<li><a href="<?=base_url()?>index.php/perkantoran" class="pjax"><img src="<?=base_url()?>assets/images/icons/small/grey/month_calendar.png"/><span>Schedule</span></a></li>
				<li><a href="<?=base_url()?>index.php/perkantoran/tabs/2" class="pjax"><img src="<?=base_url()?>assets/images/icons/small/grey/archive.png"/><span>Rekap Surat</span></a></li>
			</ul></li>
	</ul>

	<div id="mobile_nav">
		<div class="main"></div>
		<div class="side"></div>
	</div>

</div><!-- #nav_top -->
