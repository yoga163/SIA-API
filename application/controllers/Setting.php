<?php

/**
 * 
 */
use chriskacerguis\RestServer\RestController;

class Setting extends RestController
{
	public function __construct()
    {
        parent::__construct();
        $this->load->model('Setting_m');
    }

	public function index_put()
    {
    	$old = $this->put('old');

        $id = $this->put('id');
        $data = [            
            'password' => $this->put('psw'),
        ];
        $cek_old = $this->Setting_m->cek_old($old,$id);
        if($cek_old === false){
            $this->response([
                'status' => false,                
                'message' => 'not match password old!!'
            ], 404);
        }else{

            if ($this->Setting_m->edtPass($data,$id) > 0) {
                $this->response([
                    'status' => true,
                    'data' => $data,
                    'message' => 'Password was updated!'
                ], 201);
            } else {
                $this->response([
                    'status' => false,                
                    'message' => 'Fail to update password!'
                ], 404);
            }
        }
    }
}