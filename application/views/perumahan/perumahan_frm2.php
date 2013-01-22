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

<div id="dlg" class="easyui-dialog" style="width:850px;height:430px;padding:10px" closed="true" buttons="#dlg-buttons">
	<form id="fm" method="post" onSubmit="return false">
 	<table style="padding:5px;">

        <tr>
          <td width="150"><b>Parent</b></td>
          <td width="200">
		  <input type="hidden" name="id" id="id" />
		  <input type="hidden" name="no_urut" id="no_urut" />
		  <input type="hidden" name="font" id="font" />
          	<input id="parent_id" name="parent_id" class="easyui-combotree" data-options="url:'<?=base_url()?>perumahan/tree'" style="width:700px;">            
            </select>
          </td>
        </tr>
        <tr><td colspan="3">&nbsp;</td></tr>
		<tr>
          <td width="300"><b>Unit Kerja</b>&nbsp;</td>
          <td>
          <select id="unit_kerja" name="unit_kerja">
            <option value="">Pilih Unit Kerja</option>
            <option value="parent">Parent</option>
          </select></td>
        </tr>         
		
        <tr>
          <td width="126"><b>No </b>&nbsp;</td>
          <td><input type="text" id="no" name="no" style="width:50px" ></td>
        </tr>                  
        <tr><td colspan="3">&nbsp;</td></tr>
        <tr>
          <td width="126"><b>Program/Kegiatan </b>&nbsp;</td>
          <td><textarea id="nama" name="nama" style="width:450px; height:80px; border:1px solid #A4BED4"></textarea></td>
        </tr>
        <tr><td colspan="3">&nbsp;</td></tr>
        <tr>
          <td width="126"><b>Sat</b>&nbsp;</td>
          <td><input type="text" id="sat" name="sat" style="width:150px" ></td>
        </tr>          
        <tr><td colspan="3">&nbsp;</td></tr>        
        <tr>
          <td width="126"><b>Status</b>&nbsp;</td>
          <td>
          <select id="posisi" name="posisi">
            <option value="">Children</option>
            <option value="parent">Parent</option>
          </select></td>
        </tr>          
        <tr>
          <td width="126"><b>Kategori</b>&nbsp;</td>
          <td>
          <select id="kategori" name="kategori">
            <option value="" checked="checked"></option>
           <?=$html?>
          </select></td>
        </tr>
		
		<tr>
			<td width="126"><b>Status-Geo</b>&nbsp;</td>
			<td>
			<select id="status" name="status">
				<option value="" checked="checked">Pilih Status</option>
				<option value="geo">Geo</option>
				<option value="non-geo">Non-Geo</option>
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
