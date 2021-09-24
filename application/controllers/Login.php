<?php

use chriskacerguis\RestServer\RestController;

class Login extends RestController
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Login_m');
    }

    function index_post()
    {
        $data = [
            'username' => $this->post('username'),
            'pass' => $this->post('password'),
        ];

        $login = $this->Login_m->Cek_login($data);

        if($login->num_rows() > 0){
            $data=$login->result_array();
            $this->response([
                'status' => true,
                'data' => $data,
                'message' => 'Data found!'
            ], 201);
        } else {
            $this->response([
                'status' => false,
                'message' => 'data not found'
            ], 404);
        }
    }
}
