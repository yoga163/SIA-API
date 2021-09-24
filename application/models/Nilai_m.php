<?php
class Nilai_m extends CI_Model
{
    public function getData($id=null,$mapel_n=null,$kelas_n=null,$akademik=null,$nama_siswa=null){
        if($id===null && $mapel_n===null && $kelas_n===null && $akademik===null && $nama_siswa===null){
            $this->db->select('*');
            $this->db->from('nilai');
            $query = $this->db->get();
            return $query->result_array();
        }
        elseif($id ) {
            $query = $this->db->get_where('nilai',['id_nilai'=> $id]);
            return $query->result_array();
        }elseif($id===null && $mapel_n && $kelas_n && $akademik) {
            
            $query = $this->db->get_where('nilai',['kelas_n' => $kelas_n,'mapel_n' => $mapel_n,'akademik' => $akademik]);
            return $query->result_array();
        }
        elseif($kelas_n && $akademik) {
            
            $query = $this->db->get_where('nilai',['kelas_n' => $kelas_n,'akademik' => $akademik]);
            return $query->result_array();
        }
        elseif($nama_siswa) {
            
            $query = $this->db->get_where('nilai',['nama_siswa' => $nama_siswa]);
            return $query->result_array();
        }
    }
    // function delete($id)
    // {
    //     $this->db->delete('kelas', ['id_kelas' => $id]);
    //     return $this->db->affected_rows();
    // }
    function create($data)
    {

        $this->db->insert('nilai', $data);
        return $this->db->affected_rows();
    }
    function update($data, $id)
    {
        $this->db->update('nilai', $data, ['id_nilai' => $id]);
        return $this->db->affected_rows();
    }
}
