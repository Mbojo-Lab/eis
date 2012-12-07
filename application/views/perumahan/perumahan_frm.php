<div class="flat_area grid_16">
    <h2><?=$menutitle?></h2>
</div>

<div style="width:800px"  class="flat_area grid_16">
    <div region="center" border="false" style="padding:10px;background:#fff;border:1px solid #ccc;">
    <form id="fm" method="post" onSubmit="return false">
        <table>
        <tr>
          <td width="66"><b>Tahun</b></td>
          <td><input type="text" id="tahun" name="tahun" style="width:100px;" onchange="getDetail()"/>  &nbsp; &nbsp; &nbsp;<b>Kegiatan</b></td>
          <td colspan="2">
            <select id="id_keg" name="id_keg" style="width:350px" onchange="getDetail()">
              <option value=""></option>
              <?=$html?>
            </select>
          </td>
        </tr>
        <tr>
          <td width="66"><b>Sasaran</b>&nbsp;</td>
          <td colspan="3"><input type="text" id="sasaran" name="sasaran" style="width:150px" ></td>
        </tr>
        <tr><td colspan="3">&nbsp;</td></tr>
        <tr>
          <td><b>Target</b></td>
          <td width="185"><input type="text" id="target" name="target" style="width:100px;" /></td>
          <td width="45"><b>Pagu</b></td>
          <td width="400"><input type="text" id="tg_anggaran" name="tg_anggaran" style="width:100px;" /></td>
        </tr>
        <tr><td colspan="4">&nbsp;</td></tr>
        <tr>
          <td><b>Realitas</b></td>
          <td><input type="text" id="realisasi" name="realisasi" style="width:100px;" /></td>
          <td><b>Pagu</b></td>
          <td><input type="text" id="re_anggaran" name="re_anggaran" style="width:100px;" /></td>
        </tr>
        <tr><td colspan="4">&nbsp;</td></tr>
        <tr><td colspan="4">
        
        <table id="dg" singleSelect="true"></table> 
        <div id="toolbar">  
            <a href="javascript:void(0)" id="btnTbh" class="easyui-linkbutton" iconCls="icon-add" plain="true" title="Tambah" onclick="javascript:$('#dg').edatagrid('addRow')">Tambah</a>  
            <a href="javascript:void(0)" id="btnHps" class="easyui-linkbutton" iconCls="icon-remove" plain="true" title="Hapus" onclick="javascript:$('#dg').edatagrid('destroyRow')">Hapus</a>  
            <a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true" onclick="javascript:$('#dg').edatagrid('saveRow')">Simpan</a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-undo" plain="true" onclick="javascript:$('#dg').edatagrid('cancelRow')">Batal</a>
        </div>
        
        </td></tr>
        <tr><td colspan="4">&nbsp;</td></tr>
        </table>
        </form>
        <a class="easyui-linkbutton" iconCls="icon-ok" href="javascript:void(0)" onclick="simpan()">Simpan</a>
        <a class="easyui-linkbutton" iconCls="icon-cancel" href="javascript:void(0)" onclick="kosong()">Batal</a>
    </div>
</div>    
<br />&nbsp;
