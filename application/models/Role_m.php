<?php


class Role_m extends CI_Model
{
    public function getData($id=null){
        if($id===null){
            $this->db->select('*');
            $this->db->from('role');            
            $query = $this->db->get();
            return $query->result_array();
        }else {
            $query = $this->db->get_where('role', ['id_role' => $id]);
            return $query->result_array();
        }
    }
}