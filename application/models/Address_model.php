<?php if(!defined('BASEPATH')) exit('No direct script access allowed');


class Address_model extends CI_Model
{

    function set_trc_addr($address, $pri_key)
    {
        $data = array(
            'address'=>$address,
            'pri_key'=>$pri_key,
            'type'=>'trc'
        );
        $this->db->insert('address',$data);
    }

    function set_erc_addr($address, $pri_key)
    {
        $data = array(
            'address'=>$address,
            'pri_key'=>$pri_key,
            'type'=>'erc'
        );
        $this->db->insert('address',$data);
    }

    function get_address(){
        $this->db->select('*');
        $query = $this->db->get('address');

        return $query->result_array();
    }

    function get_type_address($type){
        $this->db->select('*');
        $this->db->where('type',$type);
        $query = $this->db->get('address');
        return $query->result_array();
    }

    function edit_address($type){
        $data = array(
          'address' => $this->input->post('address'),
            'pri_key' => $this->input->post('pri_key')
        );
        $this->db->where('type', $type);
        $this->db->update('address', $data);

    }




    /**
     * This function used to insert reset password data
     * @param {array} $data : This is reset password data
     * @return {boolean} $result : TRUE/FALSE
     */
    function resetPasswordUser($data)
    {
        $result = $this->db->insert('tbl_reset_password', $data);

        if($result) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    /**
     * This function is used to get customer information by email-id for forget password email
     * @param string $email : Email id of customer
     * @return object $result : Information of customer
     */
    function getCustomerInfoByEmail($email)
    {
        $this->db->select('userId, email, name');
        $this->db->from('tbl_users');
        $this->db->where('isDeleted', 0);
        $this->db->where('email', $email);
        $query = $this->db->get();

        return $query->row();
    }

    /**
     * This function used to check correct activation deatails for forget password.
     * @param string $email : Email id of user
     * @param string $activation_id : This is activation string
     */
    function checkActivationDetails($email, $activation_id)
    {
        $this->db->select('id');
        $this->db->from('tbl_reset_password');
        $this->db->where('email', $email);
        $this->db->where('activation_id', $activation_id);
        $query = $this->db->get();
        return $query->num_rows();
    }

    // This function used to create new password by reset link
    function createPasswordUser($email, $password)
    {
        $this->db->where('email', $email);
        $this->db->where('isDeleted', 0);
        $this->db->update('tbl_users', array('password'=>getHashedPassword($password)));
        $this->db->delete('tbl_reset_password', array('email'=>$email));
    }

    /**
     * This function used to save login information of user
     * @param array $loginInfo : This is users login information
     */
    function lastLogin($loginInfo)
    {
        $this->db->trans_start();
        $this->db->insert('tbl_last_login', $loginInfo);
        $this->db->trans_complete();
    }

    /**
     * This function is used to get last login info by user id
     * @param number $userId : This is user id
     * @return number $result : This is query result
     */
    function lastLoginInfo($userId)
    {
        $this->db->select('BaseTbl.createdDtm');
        $this->db->where('BaseTbl.userId', $userId);
        $this->db->order_by('BaseTbl.id', 'DESC');
        $this->db->limit(1);
        $query = $this->db->get('tbl_last_login as BaseTbl');

        return $query->row();
    }
}

?>