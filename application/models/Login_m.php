<?php
class Login_m extends CI_Model
{
    public function Cek_login($data)
    {
        $this->db->select('user.*,guru.*,admin.*,siswa.*');
        $this->db->from('user');
        $this->db->join('guru','guru.u_guru=user.username','left');
        $this->db->join('admin','admin.u_name=user.username','left');
        $this->db->join('siswa','siswa.nisn=user.username','left');
        $this->db->where('user.username',$data['username']);
        $this->db->where('user.password',$data['pass']);

    	$query = $this->db->get();
        return $query;
    }
}
