<div class="flat_area grid_16">
    <h2><?=$menutitle?></h2>
</div>

<div id="w" class="flat_area grid_16">
<table id="dg" singleSelect="true"></table>              
</div>
<div id="toolbar">  
    <a href="javascript:void(0)" id="btnTbh" class="easyui-linkbutton" iconCls="icon-add" plain="true" title="Tambah">Tambah</a>  
    <a href="javascript:void(0)" id="btnUbh" class="easyui-linkbutton" iconCls="icon-edit" plain="true" title="Hapus">Ubah</a> 
    <a href="javascript:void(0)" id="btnHps" class="easyui-linkbutton" iconCls="icon-remove" plain="true" title="Hapus">Hapus</a>  
</div>

<div id="dlg" class="easyui-dialog" style="width:500px;height:300px;padding:10px" closed="true" buttons="#dlg-buttons">
	<form id="fm" method="post" onSubmit="return false">
 	<table style="padding:5px;">
    <tr>
      <td width="115">Nama Lengkap</td>
      <td width="319">
      <input name="username0" type="hidden" id="username0">        
      <input name="nama_lengkap" type="text" id="nama_lengkap" class="easyui-validatebox" style="width:150px"></td>
    </tr>
    <tr>
      <td>Username</td>
      <td><input name="username" type="text" class="easyui-validatebox" id="username" value="" style="width:200px"></td>
    </tr>
    <tr>
      <td valign="top">Password</td>
      <td><input name="password" type="password" class="easyui-validatebox" id="password" value="" style="width:200px"></td>
    </tr>
    <tr>
      <td valign="top">Group</td>
      <td>
      <select name="group" class="easyui-validatebox" id="group" style="width:200px">
        <option value=""></option>
        <option value="Eksekutif">Eksekutif</option>
        <option value="SDM">SDM</option>
		<option value="Perumahan">Perumahan</option>
		<option value="Agenda">Agenda</option>
        <option value="Admin">Admin</option>
      </select>
      </td>
    </tr>
	<tr>
      <td valign="top">Unit Kerja</td>
      <td>
      <select name="unit_kerja" class="easyui-validatebox" id="unit_kerja" style="width:200px">
        <option value=""></option>
		<?php
		foreach ($rs as $r){
		?>
			<option value="<?=$r->unit_kerja?>"><?=$r->unit_kerja?></option>
		<?php	
		}
		?>
      </select>
      </td>
    </tr>
    </table>
    <input type="submit" id="btnSubmit" name="btnSubmit" style="display:none">
    </form>            
</div>
<div id="dlg-buttons">
    <a href="#" id="btnSim" class="easyui-linkbutton" iconCls="icon-ok">Simpan</a>
    <a href="javascript:void(0)" id="btnReset" class="easyui-linkbutton" iconCls="icon-cancel">Kosongkan</a>
</div>
<br />&nbsp;