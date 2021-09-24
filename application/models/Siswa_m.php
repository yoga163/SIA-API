<?php
class Siswa_m extends CI_Model
{
    function getData($id=null,$kelas=null){
    	if($id===null && $kelas === null ){
	        $this->db->select('siswa.*,kelas.kelas,kelas.jurusan');
	        $this->db->from('siswa');
	        $this->db->join('kelas','siswa.kelas=kelas.id_kelas');
	        $query = $this->db->get();
	        return $query->result_array();
        }elseif($id) {
           $query = $this->db->get_where('siswa', ['id_siswa' => $id]);
            return $query->result_array();
        
        }elseif($kelas) {
	        
             $query = $this->db->get_where('siswa', ['kelas' => $kelas]);
            return $query->result_array();
        }
    }
    
    
    function delete($id)
    {
        $this->db->delete('siswa', ['id_siswa' => $id]);
        return $this->db->affected_rows();
    }
    function create($data)
    {
        $this->db->insert('siswa', $data);
        return $this->db->affected_rows();
    }
    function update($data, $id)
    {
        $this->db->update('siswa', $data, ['id_siswa' => $id]);
        return $this->db->affected_rows();
    }
}
