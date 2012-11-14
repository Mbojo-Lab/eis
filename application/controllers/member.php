<?php
class Member extends CI_Controller
{
 
    function __construct(){
        parent::__construct();
        $this->load->helper(array('form'));
        $this->load->model('account_model');
    }
 
    function register()
    {
        $form_data = $this->input->post('data');
        if (!empty($form_data))
        {
            $form_data['password'] = md5($form_data['password']);
            $this->account_model->register($form_data);
            $this->session->set_flashdata('berhasil', 'Pendaftaran berhasil, Anda dapat masuk ke dalam sistem');
            redirect('member/login');
        }
        $this->load->view('register');
    }
 
    function login(){		
        $form_data = $this->input->post();
        if ($form_data){
           if ($this->account_model->login($form_data['username'], $form_data['password'])){
                redirect(base_url().'dashboard');
            } else {
                redirect(base_url().'member/login');
            }
        }
        $this->load->view('login');
		//$this->load->view('dialogs/dialog_register.php');
		$this->load->view('footer');
		
    }
 
    function logout()
    {
        $this->account_model->logout();
        redirect(base_url().'member/login');
    }
 
    function index()
    {
        if ($this->session->userdata('logged_in'))
        {
            $this->load->view('member');
        }
        else
        {
            redirect('member/login');
        }
    }
 
}
?>