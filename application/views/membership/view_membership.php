<h2 class="page-title">
    Data Membership

</h2>
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-body">
                <a href="#" class="btn btn-success mb-3" id="tambahmembership">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24"
                        stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round"
                        stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <line x1="12" y1="5" x2="12" y2="19" />
                        <line x1="5" y1="12" x2="19" y2="12" />
                    </svg>
                    Tambah Membership </a>
                <div class="mb-3">
                    <?= $this->session->flashdata('msg'); ?>
                </div>
                <table id="tabelmembership" class="table table-bordered text-center">
                    <thead class="text-center">
                        <tr>
                            <th> NO. </th>
                            <th> NAMA LENGKAP</th>
                            <th> ALAMAT LENGKAP </th>
                            <th> TELEPON </th>
                            <th> TEMPAT TANGGAL LAHIR</th>
                            <th> BAKERY </th>
                            <th colspan="2"> POIN </th>
                            <th>AKSI</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 1;
                        foreach ($membership as $m) { ?>
                        <tr>
                            <td> <?= $no; ?> </td>
                            <td> <?= $m->nama_lengkap; ?></td>
                            <td> <?= $m->alamat_lengkap; ?></td>
                            <td> <?= $m->nohp; ?> </td>
                            <td> <?= $m->tgl_lahir; ?></td>
                            <td> <?= $m->bakery; ?></td>
                            <td> <?= $m->poin; ?> </td>
                            <td><a href="#" data-kodepoin="<?= $m->id ?>"
                                    class="btn btn-sm btn-warning add text-center">
                                    + poin
                                </a>
                            </td>
                            <td>
                                <a href="#" data-kodemembership="<?= $m->id ?>"
                                    class="btn btn-sm btn-primary edit text-center">
                                    edit
                                </a>
                                <a href="#" data-href="<?= base_url(); ?>membership/hapusmembership/<?= $m->id; ?>"
                                    class="btn btn-sm btn-danger hapus">
                                    hapus
                                </a>
                            </td>
                        </tr>
                        <?php
                            $no++;
                        } ?>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</div>

<div class="modal modal-blur fade" id="modalmembership" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Input Data Membership</h5>
                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div id="loadforminputmembership"></div>
            </div>
        </div>
    </div>
</div>

<div class="modal modal-blur fade" id="modaladdmembership" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Input Poin Membership</h5>
                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div id="loadaddforminputmembership"></div>
            </div>
        </div>
    </div>
</div>
<div class="modal modal-blur fade" id="modaleditmembership" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Edit Membership</h5>
                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div id="loadformeditmembership"></div>
            </div>
        </div>
    </div>
</div>
<div class="modal modal-blur fade" id="modaleditpoin" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Tambah Poin</h5>
                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div id="loadformeditpoin"></div>
            </div>
        </div>
    </div>
</div>
<div class="modal modal-blur fade" id="modalhapusmembership" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="modal-title">Anda yakin ingin menghapus data ?</div>
                <div>Jika dihapus, Anda akan kehilangan data ini!</div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-link link-secondary mr-auto" data-dismiss="modal"> Tidak</button>
                <a href="" id="hapusmembership" class="btn btn-danger"> Iya, hapus</a>
            </div>
        </div>
    </div>

    <script>
    // jquery
    $(function() {
        $("#tambahmembership").click(function() {
            $("#modalmembership").modal("show");
            $("#loadforminputmembership").load("<?php echo base_url(); ?>membership/inputmembership");
        });

        $(".edit").click(function() {
            var kodemembership = $(this).attr("data-kodemembership");
            $("#modaleditmembership").modal("show");
            $("#loadformeditmembership").load("<?php echo base_url(); ?>membership/editmembership/" +
                kodemembership);
        });

        $(".add").click(function() {
            var kodepoin = $(this).attr("data-kodepoin");
            $("#modaleditpoin").modal("show");
            $("#loadformeditpoin").load("<?php echo base_url(); ?>membership/editpoin/" +
                kodepoin);
        });

        $(".hapus").click(function() {
            var href = $(this).attr("data-href");
            $("#modalhapusmembership").modal("show");
            $("#hapusmembership").attr("href", href);
        });




        $('#tabelmembership').DataTable();
    });
    </script>