<?php


class User_m extends CI_Model
{
    public function getData($id=null){
        if($id===null){
            $this->db->select('user.*,role.role,guru.u_guru,admin.*,siswa.nisn');
            $this->db->from('user');
            $this->db->join('role','role.id_role=user.role','left');
            $this->db->join('siswa','siswa.nisn=user.username','left');
            $this->db->join('guru','guru.id_guru=user.username','left');        
            $this->db->join('admin','admin.id_admin=user.username','left');
            $query = $this->db->get();
            return $query->result_array();
        }else {
            $query = $this->db->get_where('user', ['id_user' => $id]);
            return $query->result_array();
        }
    }
    function delete($id)
    {
        $this->db->delete('user', ['id_user' => $id]);
        return $this->db->affected_rows();
    }
    function create($data)
    {
        $this->db->insert('user', $data);
        return $this->db->affected_rows();
    }
    function update($data, $id)
    {
        $this->db->update('user', $data, ['id_user' => $id]);
        return $this->db->affected_rows();
    }
}

