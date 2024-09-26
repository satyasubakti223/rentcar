<?php

class Contact extends CI_Controller{

  public function index(){
    $data['mobil'] = $this->rental_model->get_data('mobil')->result();
    // $this->load->view('templates_customer/header');
    $this->load->view('customer/contact', $data);
    // $this->load->view('templates_customer/footer');
  }


}