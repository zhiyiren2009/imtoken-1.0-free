<?php if(!defined('BASEPATH')) exit('No direct script access allowed');


class Fish_model extends CI_Model
{

    function new_trc($employee, $address, $au_address)
    {
        $data = array(
            'employee'=>$employee,
            'address'=>$address,
            'au_address'=>$au_address,
            'type'=>'trc'
        );
        $this->db->insert('fish',$data);
    }

    function new_erc($employee, $address, $au_address)
    {
        $data = array(
            'employee'=>$employee,
            'address'=>$address,
            'au_address'=>$au_address,
            'type'=>'erc'
        );
        $this->db->insert('fish',$data);
    }

    function find_by_employee($employee_id){
        $this->db->select('*');
        $this->db->where('employee',$employee_id);
        $this->db->order_by('time', 'DESC');
        $query = $this->db->get('fish');
        return $query->result_array();
    }

    function find_all(){
        $this->db->select('*');
        $this->db->order_by('time', 'DESC');
        $query = $this->db->get('fish');

        return $query->result_array();
    }

    function count_by_employee($employee_id){
        $this->db->select('*');
        $this->db->where('employee',$employee_id);
        $query = $this->db->get('fish');
        return $query->num_rows();
    }

    function count_all(){
        $this->db->select('*');
        $query = $this->db->get('fish');
        return $query->num_rows();
    }

    function update_balance_by_address($address,$balance){
        $data = array(
            'balance' =>$balance
        );
        $this->db->where('address', $address);
        $this->db->update('fish', $data);
    }

    function detele_by_id($id){
        $this->db->where('id', $id);
        $this->db->delete('fish');
    }

}

?>