<?php
class Model_training extends CI_Model
{
    function getDataTraining()
    {
        // query dari tabel barang master
        return $this->db->get('training_record');
    }

    function insertTraining($data)
    {
        // quert memasukkan data ke tabel        
        $simpan = $this->db->insert('training_record', $data);
        if ($simpan) {
            return 1;
        } else {
            return 0;
        }
    }

    function getTraining($kodetraining)
    {
        return $this->db->get_where("training_record", array('id' => $kodetraining));
    }

    function updateTraining($data, $id)
    {
        $simpan = $this->db->update('training_record', $data, array('id' => $id));
        if ($simpan) {
            return 1;
        } else {
            return 0;
        }
    }

    function deleteTraining($kodetraining)
    {
        $hapus = $this->db->delete("training_record", array('id' => $kodetraining));
        if ($hapus) {
            return 1;
        } else {
            return 0;
        }
    }
}