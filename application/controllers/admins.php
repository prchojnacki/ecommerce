<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class  Admins extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('admin');
	}

	public function index()
	{
		$this->load->view('/admins/login');
	}

	public function validate_login()
	{

	}

	public function get_all_orders()
	{
		$data['orders'] = $this->Admin->get_all_orders();
		$this->load->view('/admins/all_orders', $data);
	}

	public function update_order_status()
	{
		$this->Admin->update_order_status($id);
	}

	public function get_all_products()
	{
		$data['products'] = $this->Admin->get_all_products();
		$this->load->view('/admins/inventory');
	}

	public function get_order_by_id()
	{
		$data['order'] = $this->Admin->get_order_by_id($id);
		$this->load->view('/admins/view_order');
	}

	public function get_product_by_id()
	{
		$id=$this->input->post('id');
		$data['product'] = $this->Admin->get_product_by_id($id);
		$this->load->view('/admins/edit_product');
	}

	public function edit_product()
	{
		$this->Admin->edit_product($this->input->post());
	}

	public function delete_product()
	{
		$this->Admin->delete_product($id);
	}

	public function add_product()
	{
		$this->Admin->add_product($this->input->post());
	}
}