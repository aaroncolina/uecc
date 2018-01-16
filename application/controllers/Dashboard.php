<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function __construct(){
        parent::__construct();
		// prearr($this->router);die;
		$this->data['controller'] = $this->router->fetch_class();
		$this->data['method'] = $this->router->fetch_method();
	}
	public function index()
	{
		build_page($this->data['controller'].'/'.$this->data['controller'].'_main', $this->data);
	}
}
