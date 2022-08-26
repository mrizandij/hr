<?php

class Training extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Model_training');
    }
    function index()
    {

        $data['training'] = $this->Model_training->getDataTraining()->result();
        $this->template->load('template/template', 'training/view_training', $data);
    }

    function inputTraining()
    {
        $this->load->view('training/input_training');
    }

    function simpantraining()
    {
        $namatraining = $this->input->post('namatraining');
        $tanggaltraining = $this->input->post('tanggaltraining');
        $trainer = $this->input->post('trainer');
        $status = $this->input->post('status');
        $nilai = $this->input->post('nilai');

        $data = array(
            'nama_training' => $namatraining,
            'tanggal_training' => $tanggaltraining,
            'trainer' => $trainer,
            'status' => $status,
            'nilai' => $nilai,

        );
        // panggil model training
        $simpan = $this->Model_training->insertTraining($data);
        if ($simpan == 1) {
            $this->session->set_flashdata('msg', '<div class="alert alert-success" role="alert">
            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M7 12l5 5l10 -10" /><path d="M2 12l5 5m5 -5l5 -5" /></svg>
            Data berhasil disimpan
          </div>');
            redirect("training");
        } else {
            $this->session->set_flashdata('msg', '<div class="alert alert-danger" role="alert">
            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><circle cx="12" cy="12" r="9" /><line x1="12" y1="8" x2="12.01" y2="8" /><polyline points="11 12 12 12 12 16 13 16" /></svg>
            Data gagal disimpan
          </div>');
            redirect("training");
        }
    }

    function editTraining()
    {
        $kodetraining = $this->uri->segment(3);
        $data['training'] = $this->Model_training->getTraining($kodetraining)->row_array();
        $this->load->view('training/edit_training', $data);
    }

    function updatetraining()
    {
        $id = $this->input->post('id');
        $namatraining = $this->input->post('namatraining');
        $tanggaltraining = $this->input->post('tanggaltraining');
        $trainer = $this->input->post('trainer');
        $status = $this->input->post('status');
        $nilai = $this->input->post('nilai');

        $data = array(
            'id' => $id,
            'nama_training' => $namatraining,
            'tanggal_training' => $tanggaltraining,
            'trainer' => $trainer,
            'status' => $status,
            'nilai' => $nilai,

        );
        // panggil model training
        $simpan = $this->Model_training->updateTraining($data, $id);
        if ($simpan == 1) {
            $this->session->set_flashdata('msg', '<div class="alert alert-success" role="alert">
            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M7 12l5 5l10 -10" /><path d="M2 12l5 5m5 -5l5 -5" /></svg>
            Data berhasil diupdate
          </div>');
            redirect("training");
        } else {
            $this->session->set_flashdata('msg', '<div class="alert alert-danger" role="alert">
            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><circle cx="12" cy="12" r="9" /><line x1="12" y1="8" x2="12.01" y2="8" /><polyline points="11 12 12 12 12 16 13 16" /></svg>
            Data gagal diupdate
          </div>');
            redirect("training");
        }
    }

    function hapustraining()
    {
        $kodetraining = $this->uri->segment(3);
        $hapus = $this->Model_training->deleteTraining($kodetraining);
        if ($hapus == 1) {
            $this->session->set_flashdata('msg', '<div class="alert alert-success" role="alert">
            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M7 12l5 5l10 -10" /><path d="M2 12l5 5m5 -5l5 -5" /></svg>
            Data berhasil dihapus
          </div>');
            redirect("training");
        } else {
            $this->session->set_flashdata('msg', '<div class="alert alert-danger" role="alert">
            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><circle cx="12" cy="12" r="9" /><line x1="12" y1="8" x2="12.01" y2="8" /><polyline points="11 12 12 12 12 16 13 16" /></svg>
            Data gagal dihapus
          </div>');
            redirect("training");
        }
    }
}