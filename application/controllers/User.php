<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;

class User extends RestController {

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('User_m');
    }

    public function index_get()
    {
        $id = $this->get('id');
        if ($id === null) {
            $user = $this->User_m->getData();
        } else {
            $user = $this->User_m->getData($id);
        }

        if ($user) {

            $this->response([
                'status' => true,
                'data' => $user,
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
            if ($this->User_m->delete($id) > 0) {
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
            'username' => $this->post('username'),
            'password' => $this->post('password'),
            'role' => $this->post('role'),
        ];

        if ($this->User_m->create($data) > 0) {
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
        $id = $this->put('id_user');
        $data = [
            'username' => $this->put('username'),
            'password' => $this->put('password'),
            'role' => $this->put('role'),
        ];

        if ($this->User_m->update($data, $id) > 0) {
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
