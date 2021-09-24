<?php

use chriskacerguis\RestServer\RestController;

class Role extends RestController
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Role_m');
    }

    public function index_get()
    {
        $id = $this->get('id');
        if ($id === null) {
            $kelas = $this->Role_m->getData();
        } else {
            $kelas = $this->Role_m->getData($id);
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
}