<?php

use chriskacerguis\RestServer\RestController;

class Guru extends RestController
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Guru_m');
    }

    public function index_get()
    {
        $id = $this->get('id');
        if ($id === null) {
            $guru = $this->Guru_m->getData();
        } else {
            $guru = $this->Guru_m->getData($id);
        }

        if ($guru) {

            $this->response([
                'status' => true,
                'data' => $guru,
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
            if ($this->Guru_m->delete($id) > 0) {
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

            'nip' => $this->post('nip'),
            'status_pegawai' => $this->post('status_pegawai'),
            'nama_g' => $this->post('nama_g'),
            'u_guru' => $this->post('u_guru'),
            'jenis_kelamin_g' => $this->post('jenis_kelamin_g'),
            'tempat_g' => $this->post('tempat_g'),
            'tgal_lahir' => $this->post('tgl_lahir'),
            'mapel1' => $this->post('mapel1'),
            'mapel2' => $this->post('mapel2'),
        ];

        if ($this->Guru_m->create($data) > 0) {
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
        $id = $this->put('id_guru');
        $data = [
            'nip' => $this->put('nip'),
            'status_pegawai' => $this->put('status_pegawai'),
            'nama_g' => $this->put('nama_g'),
            'u_guru' => $this->put('u_guru'),
            'jenis_kelamin_g' => $this->put('jenis_kelamin_g'),
            'tempat_g' => $this->put('tempat_g'),
            'tgal_lahir' => $this->put('tgal_lahir'),
            'mapel1' => $this->put('mapel1'),
            'mapel2' => $this->put('mapel2'),            
        ];

        if ($this->Guru_m->update($data, $id) > 0) {
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
