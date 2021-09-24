<?php

use chriskacerguis\RestServer\RestController;

class Mapel extends RestController
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Mapel_m');
    }

    public function index_get()
    {
        $id = $this->get('id');
        if ($id === null) {
            $mapel = $this->Mapel_m->getData();
        } else {
            $mapel = $this->Mapel_m->getData($id);
        }

        if ($mapel) {

            $this->response([
                'status' => true,
                'data' => $mapel,
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
            if ($this->Mapel_m->delete($id) > 0) {
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
            'mapel' => $this->post('mapel'),
                       
        ];

        if ($this->Mapel_m->create($data) > 0) {
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
        $id = $this->put('id_mapel');
        $data = [
            'mapel' => $this->put('mapel'),                        
        ];

        if ($this->Mapel_m->update($data, $id) > 0) {
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
