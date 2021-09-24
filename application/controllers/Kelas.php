<?php

use chriskacerguis\RestServer\RestController;

class Kelas extends RestController
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Kelas_m');
    }

    public function index_get()
    {
        $id = $this->get('id');
        if ($id === null) {
            $kelas = $this->Kelas_m->getData();
        } else {
            $kelas = $this->Kelas_m->getData($id);
        }

        if ($kelas) {

            $this->response([
                'status' => true,
                'data' => $kelas,
                'message' => 'Data found!!'
            ], 200);
        } else {

            $this->response([
                'status' => false,
                'message' => 'No data were found'
            ], 404);
        }
    }
    public function index_delete()
    {
        $id = $this->delete('id');

        if ($id === null) {
            return $this->response([
                'status' => false,
                'id' => $id,
                'message' => 'Provide an id'
            ], 400);
        } else {
            if ($this->Kelas_m->delete($id) > 0) {
                return $this->response([
                    'status' => true,
                    'id' => $id,
                    'message' => 'ID Deleted'
                ], 200);
            } else {
                return $this->response([
                    'status' => false,
                    'id' => $id,
                    'message' => 'No ID were found'
                ], 404);
            }
        }
    }
    public function index_post()
    {
        $data = [
            'wali_kelas' => $this->post('wali_kelas'),
            'kelas' => $this->post('kelas'),
            'jurusan' => $this->post('jurusan'),
            'jumlah_siswa' => $this->post('jumlah_siswa'),            
        ];

        if ($this->Kelas_m->create($data) > 0) {
            $this->response([
                'status' => true,
                'data' => $data,
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
        $id = $this->put('id_kelas');
        $data = [
            'wali_kelas' => $this->put('wali_kelas'),
            'kelas' => $this->put('kelas'),
            'jurusan' => $this->put('jurusan'),
            'jumlah_siswa' => $this->put('jumlah_siswa'),            
        ];

        if ($this->Kelas_m->update($data, $id) > 0) {
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
