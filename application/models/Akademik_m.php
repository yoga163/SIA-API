<?php
class Akademik_m extends CI_Model
{
    public function getData($id = null){
        if($id === null){
	        $this->db->select('*');
	        $this->db->from('akademik');
	        $query = $this->db->get();
	        return $query->result_array();
        }else{
	        $query = $this->db->get_where('akademik', ['id_ak' => $id]);            
	        return $query->result_array();
    	}
    }
     function delete($id)
    {
        $this->db->delete('akademik', ['id_ak' => $id]);
        return $this->db->affected_rows();
    }
    function create($data)
    {
        $this->db->insert('akademik', $data);
        return $this->db->affected_rows();
    }
    function update($data, $id)
    {
        $this->db->update('akademik', $data, ['id_ak' => $id]);
        return $this->db->affected_rows();
    }
}
