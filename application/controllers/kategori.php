<?php

class Kategori extends CI_Controller{

    public function converse()
    {
        $data['converse'] = $this->model_kategori->data_converse()
        ->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('kategori/converse', $data);
        $this->load->view('templates/footer');
    }

    public function nike()
    {
        $data['nike'] = $this->model_kategori->data_nike()
        ->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('kategori/nike', $data);
        $this->load->view('templates/footer');
    }

    public function adidas()
    {
        $data['adidas'] = $this->model_kategori->data_adidas()
        ->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('kategori/adidas', $data);
        $this->load->view('templates/footer');
    }

    public function reebok()
    {
        $data['reebok'] = $this->model_kategori->data_reebok()
        ->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('kategori/reebok', $data);
        $this->load->view('templates/footer');
    }

    public function puma()
    {
        $data['puma'] = $this->model_kategori->data_puma()
        ->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('kategori/puma', $data);
        $this->load->view('templates/footer');
    }

}