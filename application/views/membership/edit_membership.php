<form action="<?= base_url('membership/updatemembership'); ?>" method="post" class="formMembership">
    <div class="mb-3 form-group">
        <input type="text" readonly value="<?= $membership['id']; ?>" class="form-control" name="id" placeholder="id">
    </div>
    <div class="mb-3 form-group">
        <input type="text" value="<?= $membership['nama_lengkap']; ?>" class="form-control" name="namalengkap"
            placeholder="Nama lengkap">
    </div>
    <div class="mb-3 form-group">
        <input type="text" value="<?= $membership['alamat_lengkap']; ?>" class="form-control" name="alamatlengkap"
            placeholder="Alamat lengkap">
    </div>
    <div class="mb-3 form-group">
        <input type="text" value="<?= $membership['nohp']; ?>" class="form-control" name="nohp" placeholder="Telepon">
    </div>
    <div class="mb-3 form-group">
        <input type="text" value="<?= $membership['tgl_lahir']; ?>" class="form-control" name="tgl_lahir"
            placeholder="Tempat Tanggal Lahir">
    </div>
    <div class="mb-3 form-group">
        <input type="text" value="<?= $membership['bakery']; ?>" class="form-control" name="bakery"
            placeholder="Bakery">
    </div>
    <div class="mb-3">
        <button type="submit" class="btn btn-primary w-100"> <svg xmlns="http://www.w3.org/2000/svg" class="icon"
                width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none"
                stroke-linecap="round" stroke-linejoin="round">
                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                <line x1="10" y1="14" x2="21" y2="3" />
                <path d="M21 3l-6.5 18a0.55 .55 0 0 1 -1 0l-3.5 -7l-7 -3.5a0.55 .55 0 0 1 0 -1l18 -6.5" />
            </svg>Update </button>
    </div>
</form>

<!-- jquery -->

<script>
$(function() {
    $('.formMembership').bootstrapValidator({
        fields: {
            namalengkap: {
                message: 'Nama lengkap tidak valid!',
                validators: {
                    notEmpty: {
                        message: ' Nama lengkap harus Diisi!'
                    }
                }
            },
            alamatlengkap: {
                message: 'Alamat lengkap tidak valid!',
                validators: {
                    notEmpty: {
                        message: 'Alamat lengkap harus Diisi!'
                    }
                }
            },
            nohp: {
                message: 'Telepon tidak valid!',
                validators: {
                    notEmpty: {
                        message: 'Telepon harus Diisi!'
                    }
                }
            },
            tgl_lahir: {
                message: 'Tanggal Lahir tidak valid!',
                validators: {
                    notEmpty: {
                        message: 'Tanggal Lahir harus Diisi!'
                    }
                }
            },
            bakery: {
                message: 'Bakery tidak valid!',
                validators: {
                    notEmpty: {
                        message: 'Bakery harus Diisi!'
                    }
                }
            },
        }
    });
});
</script>