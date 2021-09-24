<?php

use chriskacerguis\RestServer\RestController;

class Nilai extends RestController
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Nilai_m');
    }

    public function index_get()
    {
        $id = $this->get('id');
        $mapel_n = $this->get('mapel_n');
        $kelas_n = $this->get('kelas_n');
        $akademik = $this->get('akademik');
        $nama_siswa = $this->get('nama_siswa');
        
        if ($id===null && $mapel_n===null && $kelas_n===null && $akademik===null && $nama_siswa===null) {
            null;
        } else {
            $nilai = $this->Nilai_m->getData($id,$mapel_n,$kelas_n,$akademik,$nama_siswa);
        }

        if ($nilai) {

            $this->response([
                'status' => true,
                'data' => $nilai,
                'message' => 'Data found!!'
            ], 200);
        } else {

            $this->response([
                'status' => false,
                'message' => 'No data were found'
            ], 404);
        }
    }
    

    public function index_post()
    {
        $nilai = $this->post('nilai_n');

        // $id_siswa = $nilai['id_siswa'];
        $i = 0;
        foreach ( $nilai as $key=>$value) {
            $data = [
                'mapel' => $this->post('mapel'),
                'akademik' => $this->post('akademik'),
                'kelas_n' => $this->post('kelas_n'),
                'nama_siswa' => $nilai[$i]['id_siswa'],
                'harian1' => $nilai[$i]['harian1'],
                'harian2' => $nilai[$i]['harian2'],
                'tugas1' => $nilai[$i]['tugas1'],
                'tugas2' => $nilai[$i]['tugas2'],
                'uts' => $nilai[$i]['uts'],
                'uas' => $nilai[$i]['uas'],
            ];
            $i++;
            $query = $this->Nilai_m->create($data);
        }
        

        if ( $query > 0) {
            $this->response([
                'status' => true,
                'data' => $query,
                'message' => 'Data was created!'
            ], 201);
        } else {
            $this->response([
                'status' => false,                
                'message' => 'Fail to create new data!'
            ], 404);
        }
    }
    
    public function index_put()
    {
        $id = $this->put('id_nilai');
        $data = [
                'mapel' => $this->put('mapel'),
                'akademik' => $this->put('akademik'),
                'kelas_n' => $this->put('kelas_n'),
                'nama_siswa' => $this->put('nama_siswa'),
                'harian1' => $this->put('harian1'),
                'harian2' => $this->put('harian2'),
                'tugas1' => $this->put('tugas1'),
                'tugas2' => $this->put('tugas2'),
                'uts' => $this->put('uts'),
                'uas' => $this->put('uas'),
        ];

        if ($this->Nilai_m->update($data, $id) > 0) {
            $this->response([
                'status' => true,
                'message' => 'Data has updated!'
            ], 201);
        } else {
            $this->response([
                'status' => false,
                'message' => 'Fail to update data!'
            ], 404);
        }
    }
}
