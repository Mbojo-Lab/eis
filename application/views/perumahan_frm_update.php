<div class="flat_area grid_16">
    <h2><?=$menutitle?></h2>
</div>

<div id="w" class="flat_area grid_16">
<table id="dg" singleSelect="true"></table>              
</div>

<div id="toolbar">  
    <!--<a href="javascript:void(0)" id="btnTbh" class="easyui-linkbutton" iconCls="icon-add" plain="true" title="Tambah">Tambah</a>  
    <a href="javascript:void(0)" id="btnHps" class="easyui-linkbutton" iconCls="icon-remove" plain="true" title="Hapus">Hapus</a>  -->
	<a href="javascript:void(0)" id="btnUbh" class="easyui-linkbutton" iconCls="icon-edit" plain="true" title="Ubah">Ubah</a> 
    
	Cari : <input type="text" name="cari" id="cari"/>
	<input type="submit" name="submit" value="submit" />
	
	</div>
   
<div id="dlg" class="easyui-dialog" style="width:570px;height:290px;padding:10px" closed="true" buttons="#dlg-buttons">
	<form id="fm" method="post" onSubmit="return false">
 	<table style="padding:5px;">
    <tr>
      <td width="115">Tahun <input name="id" type="hidden" id="id">  </td>
      <td width="319"><input name="tahun" type="text" id="tahun" style="width:50px" readonly="readonly">        
      </td>
    </tr>
    <tr><td colspan="3">&nbsp;</td></tr>
    <tr>
      <td>Kegiatan</td>
      <td><input name="nm_keg" type="text" class="easyui-validatebox" id="nm_keg" style="width:400px" readonly="readonly"></td>
    </tr>
	 <tr><td colspan="3">&nbsp;</td></tr>
    <tr>
      <td>Lokasi</td>
      <td><input name="lokasi" type="text" class="easyui-validatebox" id="lokasi" style="width:4000px" readonly="readonly"></td>
    </tr>
     <tr><td colspan="3">&nbsp;</td></tr>
    <tr>
      <td>Progress Rencana</td>
      <td><input name="prog_rencana" type="text" class="easyui-validatebox" id="prog_rencana" style="width:50px" ></td>
    </tr>
	 <tr><td colspan="3">&nbsp;</td></tr>
    <tr>
      <td>Progress Realisasi</td>
      <td><input name="prog_realisasi" type="text" class="easyui-validatebox" id="prog_realisasi" style="width:50px"></td>
    </tr>
	 <tr><td colspan="3">&nbsp;</td></tr>
 
    </table>
    <input type="submit" id="btnSubmit" name="btnSubmit" style="display:none">
    </form>            
</div>
<div id="dlg-buttons">
    <a href="#" id="btnSim" class="easyui-linkbutton" iconCls="icon-ok">Simpan</a>
    <a href="javascript:void(0)" id="btnReset" class="easyui-linkbutton" iconCls="icon-cancel">Kosongkan</a>
</div>
<br />&nbsp;
