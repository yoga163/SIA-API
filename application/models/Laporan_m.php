<?php


class Laporan_m extends CI_Model
{
    function getData($id = null)
    {
        if ($id === null) {
            $query = $this->db->get('lapor');
            return $query->result_array();
        } else {
            $query = $this->db->get_where('lapor', ['id_lapor' => $id]);
            return $query->result_array();
        }
    }

    function delete($id)
    {
        $this->db->delete('lapor', ['id_lapor' => $id]);
        return $this->db->affected_rows();
    }

    function create($data)
    {
        $this->db->insert('lapor', $data);
        return $this->db->affected_rows();
    }

    function update($data, $id)
    {
        $this->db->update('lapor', $data, ['id_lapor' => $id]);
        return $this->db->affected_rows();
    }
}
