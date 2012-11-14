<h2>Form Pendaftaran</h2>
 
<?php echo form_open('member/register') ?>
<div class="input">
    <?php
    echo form_label('Nama Lengkap');
    echo form_input('data[nama_lengkap]');
    ?>
</div>
<div class="input">
    <?php
    echo form_label('Username');
    echo form_input('data[username]');
    ?>
</div>
<div class="input">
    <?php
    echo form_label('Password');
    echo form_password('data[password]');
    ?>
</div>
<div class="input select">
    <?php
    echo form_label('Hak Akses');
    echo form_dropdown('data[group]', array('admin' => 'Administrator', 'operator' => 'Operator'));
    ?>    
</div>
<div class="submit">
    <?php
    echo form_submit('register', 'Daftar');
    echo form_reset('reset', 'Reset');
    ?>
</div>
<?php echo form_close() ?>