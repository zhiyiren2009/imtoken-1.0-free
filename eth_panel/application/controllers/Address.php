<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

/**
 * Class : User (UserController)
 * User Class to control all user related operations.
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */
class Address extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('address_model');
        $this->isLoggedIn();
    }

    public function index(){
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {

            $adddresses = $this->address_model->get_address();
            $data['addresses'] = $adddresses;

            $this->global['pageTitle'] = '地址列表';

            $this->loadViews("address/address_list", $this->global, $data, NULL);
        }
    }

    public function edit_address_view($type){
        if($this->isAdmin() == TRUE )
        {
            $this->loadThis();
        }
        else
        {
            $adddresses = $this->address_model->get_type_address($type);

            $data['address'] = $adddresses[0]['address'];
            $data['pri_key'] = $adddresses[0]['pri_key'];
            $data['type'] = $type;

            $this->global['pageTitle'] = '修改'.$type.'授权地址';

            $this->loadViews("address/edit_address", $this->global, $data, NULL);
        }
    }

    public function do_edit_address($type){
        if($this->address_model->edit_address($type)){
            $this->session->set_flashdata('success', 'User updated successfully');
        };
        redirect('address/index');
    }

    function loadThis() {
        $this->global ['pageTitle'] = 'CodeInsect : Access Denied';

        $this->load->view ( 'includes/header', $this->global );
        $this->load->view ( 'access' );
        $this->load->view ( 'includes/footer' );
    }
}

?>