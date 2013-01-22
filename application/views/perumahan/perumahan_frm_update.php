<div class="flat_area grid_16">
    <h2><?=$menutitle?></h2>
</div>

<div style="width:650px"  class="flat_area grid_16">
    <div region="center" border="false" style="padding:10px;background:#fff;border:1px solid #ccc;">
    <form id="fm" method="post" onSubmit="return false">
        <table>
        <tr>
          <td width="100"><b>Tahun</b></td>
          <td> :<input type="text" id="tahun" name="tahun" style="width:100px;" onchange="getDetailUpdate()"/>  &nbsp; &nbsp; &nbsp;<b>Kegiatan</b></td>
          <td colspan="2"> :
            <select id="id" name="id" style="width:300px" onchange="getDetailUpdate()">
              <option value=""></option>
              <?=$html?>
            </select>
          </td>
        </tr>
		<tr><td width="100"><strong>Unit Kerja</strong></td>
			<td>:<input type="text" name="unit_kerja" id="unit_kerja" disabled="disabled"/></td>
		</tr>
		<tr><td><strong>Lokasi</strong></td>
			<td>:<input type="text" name="lokasi" id="lokasi" disabled="disabled"/></td>
		</tr>
		<tr><td><strong>No. Kontrak</strong></td>
			<td>:<input type="text" name="no_kontrak" id="no_kontrak" disabled="disabled"/></td>
		</tr>
		<tr><td><strong>Tgl. Kontrak</strong></td>
			<td>:<input type="text" name="tgl_kontrak" id="tgl_kontrak" disabled="disabled"/></td>
		</tr>
		
        
        <table id="dg" singleSelect="true"></table> 
        <div id="toolbar">  
        <!--    <a href="javascript:void(0)" id="btnTbh" class="easyui-linkbutton" iconCls="icon-add" plain="true" title="Tambah" onclick="javascript:$('#dg').edatagrid('addRow')">Tambah</a>  
            <a href="javascript:void(0)" id="btnHps" class="easyui-linkbutton" iconCls="icon-remove" plain="true" title="Hapus" onclick="javascript:$('#dg').edatagrid('destroyRow')">Hapus</a>  
        --> 
			<a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true" onclick="javascript:$('#dg').edatagrid('saveRow')">Update</a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-undo" plain="true" onclick="javascript:$('#dg').edatagrid('cancelRow')">Batal</a>
			
        </div>
        <hr>
        </td></tr>
        <tr><td colspan="4">&nbsp;</td></tr>
        </table>
        </form>
    <!--    <a class="easyui-linkbutton" iconCls="icon-ok" href="javascript:void(0)" onclick="simpan()">Simpan</a>
        <a class="easyui-linkbutton" iconCls="icon-cancel" href="javascript:void(0)" onclick="kosong()">Batal</a> -->
    </div>
</div>    
<br />&nbsp;
