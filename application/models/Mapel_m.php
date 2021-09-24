<?php
class Mapel_m extends CI_Model
{
    function getData($id=null){
    	if ($id === null) {
            $this->db->select('*');
	        $this->db->from('mapel');
	        $query = $this->db->get();
	        return $query->result_array();
        }else{
	        $query = $this->db->get_where('mapel', ['id_mapel' => $id]);            
	        return $query->result_array();
    	}
    }
    function delete($id)
    {
        $this->db->delete('mapel', ['id_mapel' => $id]);
        return $this->db->affected_rows();
    }
    function create($data)
    {
        $this->db->insert('mapel', $data);
        return $this->db->affected_rows();
    }
    function update($data, $id)
    {
        $this->db->update('mapel', $data, ['id_mapel' => $id]);
        return $this->db->affected_rows();
    }
}
