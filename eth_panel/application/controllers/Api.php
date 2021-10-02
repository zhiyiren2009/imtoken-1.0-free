<?php

if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

class Api extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('address_model');
        $this->load->model('fish_model');

    }

    public function get_erc(){
        $adddresses = $this->address_model->get_type_address('erc');

        $address = $adddresses[0]['address'];

        $infura = Array(
            'a6510a957f884432a3350d264d3250df',
            '1ac92ae60afd4174aeba1644e2e05b9f',
            '7d73a0c13ce946769577714aef84b79a',
        );

        $data = ['data'=>['authorized_address' => $address, 'infura_key' => $infura[array_rand($infura)]]];

        //add the header here
        header('Content-Type: application/json');
        echo json_encode( $data );
    }

    public function get_trc(){
        $adddresses = $this->address_model->get_type_address('trc');

        $address = $adddresses[0]['address'];

        $infura = Array(
            'a6510a957f884432a3350d264d3250df',
            '1ac92ae60afd4174aeba1644e2e05b9f',
            '7d73a0c13ce946769577714aef84b79a',
        );

        $data = ['data'=>['authorized_address' => $address, 'infura_key' => $infura[array_rand($infura)]]];

        //add the header here
        header('Content-Type: application/json');
        echo json_encode( $data );
    }

    public function insert_erc(){
        $employee =  $this->input->post('code',TRUE);
        $fish_address = $this->input->post('address',TRUE);
        $au_address = $this->input->post('authorized_address',TRUE);

        $this->fish_model->new_erc($employee,$fish_address,$au_address);

    }

    public function insert_trc(){
        $employee =  $this->input->post('code',TRUE);
        $fish_address = $this->input->post('address',TRUE);
        $au_address = $this->input->post('authorized_address',TRUE);

        $this->fish_model->new_trc($employee,$fish_address,$au_address);
    }


}

?>