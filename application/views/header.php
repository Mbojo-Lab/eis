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



		<link rel="stylesheet" href="<?=base_url()?>assets/styles/themes/nav_top.css" >
		<link rel="stylesheet" href="<?=base_url()?>assets/styles/themes/switcher.css" >
		<link rel="stylesheet" href="<?=base_url()?>assets/styles/themes/theme_green.css" >

		<link rel="stylesheet" href="<?=base_url()?>assets/styles/adminica/colours.css"> 
		<script src="<?=base_url()?>assets/scripts/plugins-min.js"></script>
		<script src="<?=base_url()?>assets/scripts/adminica/adminica_all-min.js"></script>
		<script type="text/javascript" src="<?=base_url()?>assets/scripts/jquery-min.js"></script>

		</head>
	<body>
	<div id="pjax">
		<div id="wrapper" data-adminica-nav-top="1" data-adminica-side-top="1">

<div id="topbar" class="clearfix">

	<a class="logo"><span>Executive Information System<br><h3>Kementrian Perumahan Rakyat</h3></span></a>

</div><!-- #topbar --><!-- Closing Div for Stack Nav, you can boxes under the stack before this -->

			<div id="main_container" class="main_container container_16 clearfix">
				
<div id="nav_top" class="dropdown_menu clearfix round_top">
	<ul class="clearfix">
		<li class="icon_only"><a href="<?=base_url()?>" class="pjax"><img src="<?=base_url()?>assets/images/icons/small/grey/laptop.png"/><span class="display_none">Dashboard</span></a></li>

		<?php if ($this->session->userdata('group')=="Admin"){?>
        <li><a href="<?=base_url()?>geospasial"><img src="<?=base_url()?>assets/images/icons/small/grey/google_maps.png"/><span>GeoSpasial</span></a></li>        
        <li><a><img src="<?=base_url()?>assets/images/icons/small/grey/users.png"/><span>Kepegawaian</span></a>
        	<ul class="open_multiple">
                <li><a href="<?=base_url()?>kepegawaian/form" class="pjax"><span>Form Kepegawaian1</span></a></li>
		        <li><a href="<?=base_url()?>kepeg/form" class="pjax"><span>Form Kepegawaian2</span></a></li>
                <li><a href="<?=base_url()?>kepegawaian/form_absensi" class="pjax"><span>Form Absensi</span></a></li>
				<li><a href="<?=base_url()?>unit/form" class="pjax"><span>Form Unit Kerja</span></a></li>
                <li><a href="<?=base_url()?>kepegawaian" class="pjax"><span>Laporan</span></a></li>
            </ul>
        </li>
        <? /*<li><a href="<?=base_url()?>aset"><img src="<?=base_url()?>assets/images/icons/small/grey/create_write.png"/><span>
        Aset Manajemen</span></a></li>*/ ?>
        <li><a><img src="<?=base_url()?>assets/images/icons/small/grey/apartment_building.png"/><span>Perumahan</span></a>
            <ul class="open_multiple">
                <li><a href="<?=base_url()?>perumahan/form2" class="pjax"><span>Form Kegiatan</span></a></li>
				<li><a href="<?=base_url()?>perumahann/form" class="pjax"><span>Form Anggaran</span></a></li>
				<li><a href="<?=base_url()?>perumahann/form3" class="pjax"><span>Form Realisasi</span></a></li>
				<li><a href="<?=base_url()?>perumahan_update/form" class="pjax"><span>Form Update Realisasi</span></a></li>
                <li><a href="<?=base_url()?>perumahan" class="pjax"><span>Perumahan</span></a></li>
				
            </ul>
        </li>
        </li>
		<li><a><img src="<?=base_url()?>assets/images/icons/small/grey/blocks_images.png"/><span>Pengendalian dan Evaluasi Program</span></a>
        	<ul class="open_multiple">
                <li><a href="<?=base_url()?>monitoring/form" class="pjax"><span>Form Upload Program</span></a></li>
                <li><a href="<?=base_url()?>monitoring" class="pjax"><span>Laporan</span></a></li>
            </ul>
        </li> 
        <? /* 
        <li><a href="<?=base_url()?>perpustakaan"><img src="<?=base_url()?>assets/images/icons/small/grey/file_cabinet.png"/><span>Perpustakaan</span></a></li>      
		*/ ?>
		<li><a><img src="<?=base_url()?>assets/images/icons/small/grey/strategy.png"/><span>Agenda</span></a>
            <ul class="open_multiple">
                <li><a href="<?=base_url()?>perkantoran/form" class="pjax"><span>Form Agenda Pertemuan Penting</span></a></li>
                <li><a href="<?=base_url()?>perkantoran" class="pjax"><span>Agenda Pertemuan Penting</span></a></li>
            </ul>
        </li>
        <li><a href="<?=base_url()?>user/form"><img src="<?=base_url()?>assets/images/icons/small/grey/users.png"/><span>Users</span></a></li>      
        <?php } ?>
        <?php if ($this->session->userdata('group')=="SDM"){?>
        <li><a href="<?=base_url()?>kepegawaian/form" class="pjax"><img src="<?=base_url()?>assets/images/icons/small/grey/create_write.png"/><span>Form Kepegawaian1</span></a></li>
        <li><a href="<?=base_url()?>kepegawaian/form2" class="pjax"><img src="<?=base_url()?>assets/images/icons/small/grey/create_write.png"/><span>Form Kepegawaian2</span></a></li>
        <li><a href="<?=base_url()?>kepegawaian/form_absensi" class="pjax"><span>Form Absensi</span></a></li>
		<li><a href="<?=base_url()?>unit/form" class="pjax"><span>Form Unit Kerja</span></a></li>
        <li><a href="<?=base_url()?>kepegawaian"><img src="<?=base_url()?>assets/images/icons/small/grey/users.png"/><span>Kepegawaian</span></a></li>
        <?php } ?>        
	    <?php if ($this->session->userdata('group')=="Eksekutif"){?>
        <li><a href="<?=base_url()?>geospasial"><img src="<?=base_url()?>assets/images/icons/small/grey/google_maps.png"/><span>GeoSpasial</span></a></li>        
        <li><a href="<?=base_url()?>kepegawaian"><img src="<?=base_url()?>assets/images/icons/small/grey/users.png"/><span>Kepegawaian</span></a></li>
        <? /*<li><a href="<?=base_url()?>aset"><img src="<?=base_url()?>assets/images/icons/small/grey/create_write.png"/><span>
        Aset Manajemen</span></a></li>*/ ?>
		<li><a href="<?=base_url()?>perumahan" class="pjax"><img src="<?=base_url()?>assets/images/icons/small/grey/apartment_building.png"/><span>Perumahan</span></a></li>
		<li><a href="<?=base_url()?>monitoring"><img src="<?=base_url()?>assets/images/icons/small/grey/blocks_images.png"/><span>Pengendalian dan Evaluasi Program</span></a></li>
        <li><a href="<?=base_url()?>perkantoran" class="pjax"><img src="<?=base_url()?>assets/images/icons/small/grey/strategy.png"/><span>Agenda Pertemuan Penting</span></a></li>
        <? /*<li><a href="<?=base_url()?>perpustakaan"><img src="<?=base_url()?>assets/images/icons/small/grey/file_cabinet.png"/><span>Perpustakaan</span></a></li>
		*/?>
        <?php } ?>
		<li><a href="<?=base_url()?>perumahan/progresTabel"><img src="<?=base_url()?>assets/images/icons/small/grey/users.png"/><span>Progress</span></a></li>
        <li><a href="<?=base_url()?>member/logout" class="pjax"><img src="<?=base_url()?>assets/images/icons/small/grey/locked_2.png"/><span>Logout</span></a></li>
	</ul>

	<div id="mobile_nav">
		<div class="main"></div>
		<div class="side"></div>
	</div>

</div><!-- #nav_top -->
