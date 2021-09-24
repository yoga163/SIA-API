<?php
class Kelas_m extends CI_Model
{
    public function getData($id=null){
    if($id===null){
        $this->db->select('kelas.*,guru.nama_g');
        $this->db->from('kelas');
        $this->db->join('guru','kelas.wali_kelas=guru.id_guru');
        $query = $this->db->get();
        return $query->result_array();
    }else {
        $query = $this->db->get_where('kelas', ['id_kelas' => $id]);
        return $query->result_array();
        }
    }
    function delete($id)
    {
        $this->db->delete('kelas', ['id_kelas' => $id]);
        return $this->db->affected_rows();
    }
    function create($data)
    {
        $this->db->insert('kelas', $data);
        return $this->db->affected_rows();
    }
    function update($data, $id)
    {
        $this->db->update('kelas', $data, ['id_kelas' => $id]);
        return $this->db->affected_rows();
    }
}
