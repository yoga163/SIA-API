<?php

/**
 * 
 */
class Setting_m extends CI_Model
{
	
	function cek_old($old,$id)
	{    
		if ($this->db->where('id_user',$id)) {
			$this->db->where('password',$old);		
			$query = $this->db->get('user');
			return $query;
		}else{
			return false;
		}
		
	}
	function edtPass($data,$id)
	{				
		$this->db->update('user',$data,['id_user' => $id]);
		return $this->db->affected_rows();	
	}
}