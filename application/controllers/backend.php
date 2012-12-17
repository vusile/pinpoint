<?php
class backend extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		
		$this->load->database();
		$this->load->helper('url');
		
		$this->load->library('grocery_CRUD');	
	}
	
	function _example_output($output = null)
	{
		$this->load->view('example.php',$output);	
	}
	
	function index()
	{
		$CI =& get_instance();
		$CI->load->library('ion_auth');
		
		if (!$CI->ion_auth->logged_in())
		{
			redirect('login');
		}
		else
		{
			$datas['datasent'] = '<ul>';

			$datas['datasent'] .= '<li   style = "background: #3366FF">' . anchor(site_url("backend/content"), "Content" , 'title="Content"') . "</li>"; 
			$datas['datasent'] .= '<li   style = "background: #3366FF">' . anchor(site_url("backend/network_sites"), "Network Sites" , 'title="Network Sites"') . "</li>"; 
			$datas['datasent'] .= '<li   style = "background: #3366FF">' . anchor(site_url("backend/targeting_options"), "Targeting Options" , 'title="Targeting Options"') . "</li>"; 
			$datas['datasent'] .= '<li   style = "background: #3366FF">' . anchor(site_url("backend/creative_services"), "Creative Services" , 'title="Creative Services"') . "</li>"; 
			$datas['datasent'] .= '<li   style = "background: #3366FF">' . anchor(site_url("backend/cpm_advertising_bundles"), "CPM Advertising Bundles" , 'title="CPM Advertising Bundles"') . "</li>"; 
			
			
			$datas['datasent'] .= '</ul>';
			$header['title'] = 'Pinpoint Africa Media Dashboard';
						
			$this->load->view('backend-header',$header);
			$this->load->view('dashboard',$datas);
		}
	}
	
	function content()
	{
		$output = $this->grocery_crud->render();

		$this->_example_output($output);
	}
		
		
	function network_sites()
	{
		$this->grocery_crud->set_field_upload('logo','pageimages');
		$output = $this->grocery_crud->render();

		$this->_example_output($output);
	}
	
	function targeting_options()
	{
		$output = $this->grocery_crud->render();

		$this->_example_output($output);
	}
	
	function creative_services()
	{
		$output = $this->grocery_crud->render();

		$this->_example_output($output);
	}	
	
	function cpm_advertising_bundles()
	{
		$this->grocery_crud->set_field_upload('image','images');
		$output = $this->grocery_crud->render();
		$this->_example_output($output);
	}
	
	
	
	
	
	function view($table)
	{
		$this->vedlib->index($table);
	}

	
	
	function view_uploaded_songs($approved = 1,$offset=0)
	{
		$this->session->set_userdata(array ('piano_uploaded_songs_add_function' => 'action/upload_song_form'));
		$this->session->set_userdata(array ('piano_uploaded_songs_edit_function' => 'action/edit_song/piano_uploaded_songs'));
		$this->session->set_userdata(array ('piano_uploaded_songs_delete_function' => 'action/delete_song'));
		
		
		
		if(!$this->ion_auth->is_admin())
		{
			$theUser = $this->ion_auth->user()->row();
			$user = $theUser->id;
			$this->db->select('id,jina_la_wimbo,mtunzi');
			$this->db->where('uploaded_by', $user);
			$this->db->order_by('jina_la_wimbo');
		}
		else
			$this->db->order_by('id','desc');

		$this->db->where('approved', $approved);
		$songs = $this->db->get('piano_uploaded_songs');
		$base_url = 'backend/view_uploaded_songs/' . $approved ;
		$this->vedlib->index('piano_uploaded_songs',$offset,$songs,$base_url);
	}
	
	
	function logout()
	{
		if($this->ion_auth->logout())
			redirect('login/2');
	}
	
	function find()
	{
		$this->session->set_userdata(array ('piano_uploaded_songs_add_function' => 'action/upload_song_form'));
		$this->session->set_userdata(array ('piano_uploaded_songs_edit_function' => 'action/edit_song/piano_uploaded_songs'));
		$this->session->set_userdata(array ('piano_uploaded_songs_delete_function' => 'action/delete_song'));
		
		$search_string = explode(' - ' , $_POST['search']); 
		$this->db->like('jina_la_wimbo', $search_string[0] );
		$results = $this->db->get('piano_uploaded_songs');
		$base_url = 'backend/view_uploaded_songs/';
		$this->vedlib->index('piano_uploaded_songs',1,$results,$base_url);
		
	}
	
	function view_piano_ads()
	{
		$this->session->set_userdata(array ('piano_ads_add_function' => 'action/new_ad'));
		$this->session->set_userdata(array ('piano_ads_edit_function' => 'action/edit_ad/piano_ads'));
		$this->session->set_userdata(array ('piano_ads_delete_function' => 'action/delete_song'));
		$this->vedlib->index('piano_ads');
	}
	
	
}