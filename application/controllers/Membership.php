<?php

class Membership extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Model_membership');
    }
    function index()
    {

        $data['membership'] = $this->Model_membership->getDataMembership()->result();
        $this->template->load('template/template', 'membership/view_membership', $data);
    }

    function inputmembership()
    {
        $this->load->view('membership/input_membership');
    }

    function simpanmembership()
    {
        $namalengkap = $this->input->post('namalengkap');
        $alamatlengkap = $this->input->post('alamatlengkap');
        $nohp = $this->input->post('nohp');
        $tgl_lahir = $this->input->post('tgl_lahir');
        $bakery = $this->input->post('bakery');

        $data = array(
            'nama_lengkap' => $namalengkap,
            'alamat_lengkap' => $alamatlengkap,
            'nohp' => $nohp,
            'tgl_lahir' => $tgl_lahir,
            'bakery' => $bakery,

        );
        // panggil model membership
        $simpan = $this->Model_membership->insertMembership($data);
        if ($simpan == 1) {
            $this->session->set_flashdata('msg', '<div class="alert alert-success" role="alert">
            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M7 12l5 5l10 -10" /><path d="M2 12l5 5m5 -5l5 -5" /></svg>
            Data berhasil disimpan
          </div>');
            redirect("membership");
        } else {
            $this->session->set_flashdata('msg', '<div class="alert alert-danger" role="alert">
            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><circle cx="12" cy="12" r="9" /><line x1="12" y1="8" x2="12.01" y2="8" /><polyline points="11 12 12 12 12 16 13 16" /></svg>
            Data gagal disimpan
          </div>');
            redirect("membership");
        }
    }

    function editmembership()
    {
        $kodemembership = $this->uri->segment(3);
        $data['membership'] = $this->Model_membership->getMembership($kodemembership)->row_array();
        $this->load->view('membership/edit_membership', $data);
    }

    function editpoin()
    {
        $kodepoin = $this->uri->segment(3);
        $data['poin'] = $this->Model_membership->getPoin($kodepoin)->row_array();
        $this->load->view('membership/edit_poin', $data);
    }

    function updatemembership()
    {
        $id = $this->input->post('id');
        $namalengkap = $this->input->post('namalengkap');
        $alamatlengkap = $this->input->post('alamatlengkap');
        $nohp = $this->input->post('nohp');
        $tgl_lahir = $this->input->post('tgl_lahir');
        $bakery = $this->input->post('bakery');

        $data = array(
            'id' => $id,
            'nama_lengkap' => $namalengkap,
            'alamat_lengkap' => $alamatlengkap,
            'nohp' => $nohp,
            'tgl_lahir' => $tgl_lahir,
            'bakery' => $bakery,
        );
        // panggil model membership
        $simpan = $this->Model_membership->updateMembership($data, $id);
        if ($simpan == 1) {
            $this->session->set_flashdata('msg', '<div class="alert alert-success" role="alert">
            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M7 12l5 5l10 -10" /><path d="M2 12l5 5m5 -5l5 -5" /></svg>
            Data berhasil diupdate
          </div>');
            redirect("membership");
        } else {
            $this->session->set_flashdata('msg', '<div class="alert alert-danger" role="alert">
            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><circle cx="12" cy="12" r="9" /><line x1="12" y1="8" x2="12.01" y2="8" /><polyline points="11 12 12 12 12 16 13 16" /></svg>
            Data gagal diupdate
          </div>');
            redirect("membership");
        }
    }

    function hapusmembership()
    {
        $kodemembership = $this->uri->segment(3);
        $hapus = $this->Model_membership->deleteMembership($kodemembership);
        if ($hapus == 1) {
            $this->session->set_flashdata('msg', '<div class="alert alert-success" role="alert">
            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M7 12l5 5l10 -10" /><path d="M2 12l5 5m5 -5l5 -5" /></svg>
            Data berhasil dihapus
          </div>');
            redirect("membership");
        } else {
            $this->session->set_flashdata('msg', '<div class="alert alert-danger" role="alert">
            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><circle cx="12" cy="12" r="9" /><line x1="12" y1="8" x2="12.01" y2="8" /><polyline points="11 12 12 12 12 16 13 16" /></svg>
            Data gagal dihapus
          </div>');
            redirect("membership");
        }
    }

    function updatepoin()
    {
        $id = $this->input->post('id');
        $namalengkap = $this->input->post('namalengkap');
        $alamatlengkap = $this->input->post('alamatlengkap');
        $nohp = $this->input->post('nohp');
        $tgl_lahir = $this->input->post('tgl_lahir');
        $bakery = $this->input->post('bakery');
        $poin = $this->input->post('poin');

        $data = array(
            'id' => $id,
            'nama_lengkap' => $namalengkap,
            'alamat_lengkap' => $alamatlengkap,
            'nohp' => $nohp,
            'tgl_lahir' => $tgl_lahir,
            'bakery' => $bakery,
            'poin' => $poin,
        );
        // panggil model membership
        $simpan = $this->Model_membership->updatePoin($data, $id);
        if ($simpan == 1) {
            $this->session->set_flashdata('msg', '<div class="alert alert-success" role="alert">
            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M7 12l5 5l10 -10" /><path d="M2 12l5 5m5 -5l5 -5" /></svg>
            Data berhasil disimpan
          </div>');
            redirect("membership");
        } else {
            $this->session->set_flashdata('msg', '<div class="alert alert-danger" role="alert">
            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><circle cx="12" cy="12" r="9" /><line x1="12" y1="8" x2="12.01" y2="8" /><polyline points="11 12 12 12 12 16 13 16" /></svg>
            Data gagal disimpan
          </div>');
            redirect("membership");
        }
    }
}