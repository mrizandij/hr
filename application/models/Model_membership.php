<?php
class Model_membership extends CI_Model
{
    function getDataMembership()
    {
        // query dari tabel barang master
        return $this->db->get('membership');
    }

    function insertMembership($data)
    {
        // quert memasukkan data ke tabel        
        $simpan = $this->db->insert('membership', $data);
        if ($simpan) {
            return 1;
        } else {
            return 0;
        }
    }

    function insertPoin($data)
    {
        // quert memasukkan data ke tabel        
        $simpan = $this->db->update('membership', $data);
        if ($simpan) {
            return 1;
        } else {
            return 0;
        }
    }

    function getMembership($kodemembership)
    {
        return $this->db->get_where("membership", array('id' => $kodemembership));
    }

    function getPoin($kodepoin)
    {
        return $this->db->get_where("membership", array('id' => $kodepoin));
    }

    function updateMembership($data, $id)
    {
        $simpan = $this->db->update('membership', $data, array('id' => $id));
        if ($simpan) {
            return 1;
        } else {
            return 0;
        }
    }

    function updatePoin($data, $id)
    {
        $simpan = $this->db->update('membership', $data, array('id' => $id));
        if ($simpan) {
            return 1;
        } else {
            return 0;
        }
    }

    function addMembership($data, $id)
    {
        $simpan = $this->db->update('membership', $data, array('id' => $id));
        if ($simpan) {
            return 1;
        } else {
            return 0;
        }
    }

    function deleteMembership($kodemembership)
    {
        $hapus = $this->db->delete("membership", array('id' => $kodemembership));
        if ($hapus) {
            return 1;
        } else {
            return 0;
        }
    }
}