<h2 class="page-title">
    Data Training Record
</h2>
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-body">
                <a href="#" class="btn btn-success mb-3" id="tambahtraining">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24"
                        stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round"
                        stroke-linejoin="round">
                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                        <line x1="12" y1="5" x2="12" y2="19" />
                        <line x1="5" y1="12" x2="19" y2="12" />
                    </svg>
                    Tambah Data </a>
                <div class="mb-3">
                    <?= $this->session->flashdata('msg'); ?>
                </div>
                <table id="tabeltraining" class="table table-striped table-bordered text-center">
                    <thead class="text-center">
                        <tr>
                            <th> NO. </th>
                            <th> NAMA TRAINING </th>
                            <th> TANGGAL TRAINING </th>
                            <th> TRAINER </th>
                            <th> STATUS </th>
                            <th> NILAI </th>
                            <th> AKSI </th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 1;
                        foreach ($training as $t) { ?>
                        <tr>
                            <td> <?= $no; ?></td>
                            <td> <?= $t->nama_training; ?></td>
                            <td> <?= $t->tanggal_training; ?></td>
                            <td> <?= $t->trainer; ?></td>
                            <td> <?= $t->status; ?></td>
                            <td> <?= $t->nilai; ?></td>
                            <td>
                                <a href="#" data-kodetraining="<?= $t->id; ?>"
                                    class="btn btn-sm btn-primary edit text-center">
                                    edit
                                </a>
                                <a href="#" data-href="<?= base_url(); ?>training/hapustraining/<?= $t->id; ?>"
                                    class="btn btn-sm btn-danger hapus center"> hapus

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

<div class="modal modal-blur fade" id="modaltraining" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Input Data Training Record</h5>
                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div id="loadforminputtraining"></div>
            </div>
        </div>
    </div>
</div>

<div class="modal modal-blur fade" id="modaledittraining" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Edit Training Record </h5>
                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div id="loadformedittraining"></div>
            </div>
        </div>
    </div>
</div>
<div class="modal modal-blur fade" id="modalhapustraining" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="modal-title">Anda yakin ingin menghapus data training ?</div>
                <div>Jika dihapus, Anda akan kehilangan data ini!</div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-link link-secondary mr-auto" data-dismiss="modal"> Tidak</button>
                <a href="" id="hapustraining" class="btn btn-danger"> Iya, hapus</a>
            </div>
        </div>
    </div>

    <script>
    // jquery
    $(function() {
        $("#tambahtraining").click(function() {
            $("#modaltraining").modal("show");
            $("#loadforminputtraining").load("<?= base_url(); ?>training/inputTraining");
        });

        $(".edit").click(function() {
            var kodetraining = $(this).attr("data-kodetraining");
            $("#modaledittraining").modal("show");
            $("#loadformedittraining").load("<?= base_url(); ?>training/editTraining/" +
                kodetraining);
        });

        $(".hapus").click(function() {
            var href = $(this).attr("data-href");
            $("#modalhapustraining").modal("show");
            $("#hapustraining").attr("href", href);
        });

        $('#tabeltraining').DataTable();
    });
    </script>