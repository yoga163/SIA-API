<?php

use chriskacerguis\RestServer\RestController;

class Laporan extends RestController
{
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('Laporan_m');
        $this->load->model('Login_m');
    }

    public function index_get()
    {
        $id = $this->get('id');
        if ($id === null) {
            $laporan = $this->Laporan_m->getData();
        } else {
            $laporan = $this->Laporan_m->getData($id);
        }

        if ($laporan) {

            $this->response([
                'status' => true,
                'data' => $laporan,
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
            if ($this->Laporan_m->delete($id) > 0) {
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
            'nama' => $this->post('nama'),
            'nohp' => $this->post('nohp'),
            'alamat' => $this->post('alamat'),
            'laporan' => $this->post('laporan'),
            'tgl' => $this->post('tgl'),
            'foto' => $this->post('foto'),
        ];

        if ($this->Laporan_m->create($data) > 0) {
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
        $id = $this->put('id_lapor');
        $data = [
            'nama' => $this->put('nama'),
            'nohp' => $this->put('nohp'),
            'alamat' => $this->put('alamat'),
            'laporan' => $this->put('laporan'),
            'tgl' => $this->put('tgl'),
            'foto' => $this->put('foto'),
        ];

        if ($this->Laporan_m->update($data, $id) > 0) {
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
