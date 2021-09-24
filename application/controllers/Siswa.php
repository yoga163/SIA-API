<?php

use chriskacerguis\RestServer\RestController;

class Siswa extends RestController
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Siswa_m');
    }

    public function index_get()
    {
        $id = $this->get('id');
        $kelas = $this->get('kelas');

        if ($id === null && $kelas === null) {
            $siswa = $this->Siswa_m->getData();
        }else {
            $siswa = $this->Siswa_m->getData($id,$kelas);
        }

        if ($siswa) {

            $this->response([
                'status' => true,
                'data' => $siswa,
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
            if ($this->Siswa_m->delete($id) > 0) {
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
            'nisn' => $this->post('nisn'),
            'nik' => $this->post('nik'),
            'nama' => $this->post('nama'),
            'jenis_kelamin' => $this->post('jenis_kelamin'),
            'no_hp' => $this->post('no_hp'),
            'tempat' => $this->post('tempat'),
            'tgl_lahir' => $this->post('tgl_lahir'),
            'alamat' => $this->post('alamat'),
            'kelas' => $this->post('kelas'),
        ];

        if ($this->Siswa_m->create($data) > 0) {
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
        $id = $this->put('id_siswa');
        $data = [
            'nisn' => $this->put('nisn'),
            'nik' => $this->put('nik'),
            'nama' => $this->put('nama'),
            'jenis_kelamin' => $this->put('jenis_kelamin'),
            'no_hp' => $this->put('no_hp'),
            'tempat' => $this->put('tempat'),
            'tgl_lahir' => $this->put('tgl_lahir'),
            'alamat' => $this->put('alamat'),
            'kelas' => $this->put('kelas'),            
        ];

        if ($this->Siswa_m->update($data, $id) > 0) {
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

