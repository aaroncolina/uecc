<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Members extends CI_Controller {

	public function __construct(){
        parent::__construct();
		$this->data['controller'] = $this->router->fetch_class();
		$this->data['method'] = $this->router->fetch_method();
	}
	public function index()
	{	
		$this->data['member_list'] = $this->Members_model->get_member_list();
		build_page($this->data['controller'].'/'.$this->data['controller'].'_main', $this->data);
	}
}
