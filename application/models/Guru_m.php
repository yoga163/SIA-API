<?php
class Guru_m extends CI_Model
{
    public function getData($id=null)
    {
        if($id===null){
	        $this->db->select('guru.*');
	        $this->db->from('guru');            
	        $query = $this->db->get();
	        return $query->result_array();
         }else {
	        $query = $this->db->get_where('guru', ['id_guru' => $id]);
	        return $query->result_array();
        }
    }
    function delete($id)
    {
        $this->db->delete('guru', ['id_guru' => $id]);
        return $this->db->affected_rows();
    }
    function create($data)
    {
        $this->db->insert('guru', $data);
        return $this->db->affected_rows();
    }
    function update($data, $id)
    {
        $this->db->update('guru', $data, ['id_guru' => $id]);
        return $this->db->affected_rows();
    }
}
