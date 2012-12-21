<?php
class main extends CI_Controller {

	function index()
	{
		redirect('home');
	}
	function home(){
		$header['title'] = 'Pinpoint Africa Media | Cost Effective Advertising';
		$header['intro'] = '';
		
		$header['h1'] ='The Single Most Cost-effective Way to Reach Proffesional & Middle Class Tanzanians!
';
		
		$this->load->view('Header',$header);
		$this->load->view('navigation');
		$this->load->view('Home');
		$this->load->view('Footer');
	}
	
	function advertising($option='')
	{
		
		if($option == '')
		{
			$header['title'] = 'Advertising Rates';
			$header['h1'] ='Common Monthly Package Rates';
			$header['intro'] = '<span style = "color:#FFF"><strong>Real Time Perfomance Monitoring</strong></span>';
			$header['intro_p'] = '<span style = "color:#FFF"><strong>( #impressions, people reached, clicks, etc.)</strong></span>';
		
			//$data['cpm_advertising'] = $this->db->get('cpm_advertising_bundles');
			$this->db->select('*');
			$this->db->from('advertising_desc');
			$this->db->join('advertising', 'advertising_desc.id = advertising.category','left');
			$data = $this->db->get();
			
			//$data['title'][] = $v->title;
//			$data['icon'][] = $v->icon;
//			$data['rate'][] = $v->rate;
//			$data['icon'][] = $v->Details;
//			
		
        	//$data['query'] = $this->db->get();

			$this->load->view('Header',$header);
			$this->load->view('navigation');
			$this->load->view('advertising',$data);
		}
		else
		{
			$this->db->where('url',$option);
			$data = $this->db->get('content');
			$contents = $data->row();
			
			$header['title'] =  $contents->title;
			$header['h1'] = $contents->title;
			$header['intro'] = '';
			$datas['content'] = $contents->text;
			
			$this->load->view('Header',$header);
			$this->load->view('navigation');
			$this->load->view('adpages',$datas);
		}	
		$this->load->view('Footer');
	}
	
	function ad_types()
	{
		$this->db->where('url','add-types');
		$data = $this->db->get('content');
		$contents = $data->row();
		
		
		$header['title'] =  $contents->title;
		$header['h1'] = $contents->title;
		$header['intro'] = strip_tags($contents->text,'<a>');
		
		
		$this->db->where('url','ad-examples');
		$data = $this->db->get('content');
		$examples = $data->row();
		
		
		$datas['content'] = $examples->text;
		
		$this->load->view('Header',$header);
		$this->load->view('navigation');
		$this->load->view('adpages',$datas);
			
		$this->load->view('Footer');
	}
	

	function about()
	{
		$this->db->where('url','about');
		$data = $this->db->get('content');
		$contents = $data->row();
		
		$header['title'] =  $contents->title;
		$header['h1'] = $contents->title;
		$header['intro'] = '';
		$datas['content'] = $contents->text;
		$datas['peopleimg']=   '<img src="images/Home-Page-Image.png" style="margin: 84px 0px 0px 0px;" />';
		
		$this->load->view('Header',$header);
		$this->load->view('navigation');
		
		$this->load->view('adpages',$datas);
			
		$this->load->view('Footer');
	}
	
	function network()
	{
		$this->db->where('url','the-contect-network');
		$data = $this->db->get('content');
		$contents = $data->row();
		
		$header['title'] =  $contents->title;
		$header['h1'] = $contents->title;
		$datas['content'] = $contents->text;
		
		$this->db->where('url','the-contect-network-intro');
		$data = $this->db->get('content');
		$contents = $data->row();
		
		
		$header['intro'] = strip_tags($contents->text,'<a>');
		
		$datas['sites'] = $this->db->get('network_sites');
		
		$this->db->where('url','network-sites-footer');
		$data = $this->db->get('content');
		$contents = $data->row();
		$datas['footer'] = $contents->text;
		
		$this->load->view('Header',$header);
		$this->load->view('navigation');
		$this->load->view('network',$datas);
		$this->load->view('Footer');
	}
	
	
	function targeting()
	{
		$this->db->where('url','target-options-intro');
		$data = $this->db->get('content');
		$contents = $data->row();
		
		$header['title'] =  $contents->title;
		$header['h1'] = $contents->title;
		$header['intro'] = strip_tags($contents->text);
		
		
		$this->db->where('url','target-options-content');
		$data = $this->db->get('content');
		$contents = $data->row();
		$datas['content'] = $contents->text;
		
		$datas['options'] = $this->db->get('targeting_options');
		
		$this->db->where('url','target-options-content-bottom');
		$data = $this->db->get('content');
		$contents = $data->row();
		$datas['footer'] = $contents->text;
		
		$this->load->view('Header',$header);
		$this->load->view('navigation');
		$this->load->view('targeting',$datas);
		$this->load->view('Footer');
	}	
	
	function creative()
	{
		$this->db->where('url','creative-services-intro');
		$data = $this->db->get('content');
		$contents = $data->row();
		
		
		$header['title'] =  $contents->title;
		$header['h1'] = $contents->title;
		$header['intro'] = strip_tags($contents->text);
		
		
		$this->db->where('url','creative-services-content');
		$data = $this->db->get('content');
		$contents = $data->row();
		$datas['content'] = $contents->text;
		
		$datas['options'] = $this->db->get('creative_services');
		
		
		$datas['footer'] = '';
		
		$this->load->view('Header',$header);
		$this->load->view('navigation');
		$this->load->view('targeting',$datas);
		$this->load->view('Footer');
	}
	
	function randomAlphaNum($length){ 

		/*$rangeMin = pow(36, $length-1); //smallest number to give length digits in base 36 
		$rangeMax = pow(36, $length)-1; //largest number to give length digits in base 36 
		$base10Rand = mt_rand($rangeMin, $rangeMax); //get the random number 
		$newRand = base_convert($base10Rand, 10, 36); //convert it 
		
		return $newRand; //spit it out */
		
		$arr = str_split('ABCDEFGHJKMNPQRSTUVWXYZ23456789'); // get all the characters into an array
		shuffle($arr); // randomize the array
		$arr = array_slice($arr, 0, $length); // get the first six (random) characters out
		return implode('', $arr); // smush them back into a string

	} 
	
	function contact()
	{
		$this->db->where('url','contact-pinpoint-africa-media');
		$data = $this->db->get('content');
		$contents = $data->row();
		
		$word = strtoupper($this->randomAlphaNum(7));
		
		$this->load->helper('captcha');
		
		$vals = array(
		'word' => $word,
		'img_path'	 => './captcha/',
		'img_url'	 => 'captcha/',
		'font_path'	 => './captcha/fonts/arial.ttf',
		'img_width'	 => '200',
		'img_height' => 50,
		);
		
		$datas['cap'] = create_captcha($vals);
	
		$cap_data = array(
		'captcha_time'	=> $datas['cap']['time'],
		'ip_address'	=> $this->input->ip_address(),
		'word'	 => $datas['cap']['word']
		);
		
		$query = $this->db->insert_string('captcha', $cap_data);	
		$this->db->query($query);
		
		$header['title'] = $contents->title;
		$header['h1'] = $contents->title;
		$header['intro'] = strip_tags($contents->text);
		$this->load->view('Header',$header);
		$this->load->view('navigation');
		$this->load->view('Contact',$datas);
		$this->load->view('Footer');
		
		
	}
	
	function validate_captcha($captcha)
	{
		$expiration = time()-7200; // Two hour limit
		$this->db->query("DELETE FROM captcha WHERE captcha_time < ".$expiration);	

	
		// Then see if a captcha exists:
		$sql = "SELECT COUNT(*) AS count FROM captcha WHERE word = ? AND ip_address = ? AND captcha_time > ?";
		$binds = array($captcha, $this->input->ip_address(), $expiration);
		$query = $this->db->query($sql, $binds);
		$row = $query->row();
		
		
		if($row->count == 0){		// validate??
			$this->form_validation->set_message('validate_captcha', 'Incorrect Captcha');
			return FALSE;
		}else{
			return TRUE;
		}
		
	}
	
	function send_message()
	{
		if(isset($_POST))
		{
			$this->form_validation->set_rules('subject', 'Subject', 'required');
			$this->form_validation->set_rules('message', 'The Message', 'required');
			$this->form_validation->set_rules('captcha', 'The Captcha', 'required|callback_validate_captcha');
			$this->form_validation->set_rules('email', 'Email', 'matches[confirm_email]');
			$this->form_validation->set_rules('name', 'Your Name', 'required');
			$this->form_validation->set_rules('company', 'Company Name', 'required');
			
			if ($this->form_validation->run() == TRUE)
			{
				$this->load->library('email');
				
				$config['protocol'] = 'smtp';
				$config['smtp_port'] = 25; 

				$config['smtp_host'] = 'relay-hosting.secureserver.net';
				$config['mailtype'] = 'html';
				$config['wordwrap'] = TRUE;
				$config['charset']='utf-8';  
				$config['newline']="\r\n";  
					
				$this->email->initialize($config);

				$this->email->from('info@pinpointafricamedia.com', 'PinPoint Africa Media');
			
				$this->email->subject($_POST['subject']);
					
				$message = '';
				$message .= '<html><head></head><body>';
				$message .= '<br><br><strong>Name:</strong> ' . $_POST['name'] ;
				$message .= '<br><br><strong>Company:</strong> ' . $_POST['company'] ;
				$message .= '<br><br><strong>Subject:</strong> ' . $_POST['subject'] ;
				$message .= '<br><br><strong>Message:</strong> ' . $_POST['message'] ;
				$message .= '<br><br><strong>Email:</strong> ' . $_POST['email'] ;
				if(isset($_POST['phone']))
					$message .= '<br><br><strong>Phone:</strong> ' . $_POST['phone'] ;
				$message .= '</body></html>';
		
				$this->email->message($message);	
				$this->email->set_alt_message(strip_tags($message));
				$this->email->to('kirk@pinpointafricamedia.com'); 
				$this->email->bcc('terence@zoomtanzania.com'); 
				if($this->email->send())
				{

					
					$header['title'] = 'Message Sent Succesfully';
					$header['h1'] = 'Message Sent Succesfully';
					$header['intro'] = '';
					$data['results'] = "Your message was sent successfully, we will respond to you shortly.";
					
					$this->load->view('Header',$header);
					$this->load->view('navigation');
					$this->load->view('Page',$data);
					$this->load->view('Footer');
					
				}
				else
				{
					$data['results'] = "Oops, something went wrong, Your message was not sent successfully, please try again.";
					
					$header['title'] = 'Message Was NOT Sent Succesfully';
					$header['h1'] = 'Message NOT Sent Succesfully';
					$header['intro'] = '';
					$data['results'] = "Oops, something went wrong, Your message was not sent successfully, please try again.";
					
					$this->load->view('Header',$header);
					$this->load->view('navigation');
					$this->load->view('Page',$data);
					$this->load->view('Footer');					
				}

			}
			else
				$this->contact();
			
		}
		else
			redirect('contact');
	}


	
	function login($success = 0)
	{
		
		if($success == 1)
			$data['success'] = 'Incorrect Login Details';
		if($success == 2)
			$data['success'] = 'You have successfully logged out';
			
		else $data['success'] = '';
		

		$data['h1']=$header['title'] = 'Login';
		$header['intro']='';
		$header['h1']='Login';

		$this->load->view('Header',$header);
		$this->load->view('login',$data);
		$this->load->view('navigation');
		$this->load->view('Footer');
	}
	
	function login_user()
	{
		$this->form_validation->set_rules('email', 'Email', 'required|valid_email');
		$this->form_validation->set_rules('password', 'Password', 'required');
		if ($this->form_validation->run() == TRUE)
		{
			$identity = $_POST['email'];
			$password = $_POST['password'];
			$remember = false; // remember the user
			if($this->ion_auth->login($identity, $password, $remember))
			{
				if ($this->session->userdata('current_page')!='')
					redirect($this->session->userdata('current_page'));
				else
					redirect(base_url());
			}
			else
				redirect('login/1');
		}
		else
			$this->login();
	
	}
	
	function logout()
	{
		if($this->ion_auth->logout())
			redirect('login/2');
	}
	
	function display_ads()
	{
		$this->db->where('url','display-ads-types');
		$data = $this->db->get('content');
		$contents = $data->row();
		
		
		$header['title'] =  $contents->title;
		$header['h1'] = $contents->title;
		$header['intro'] = '';
		
		

		$datas['content'] = $contents->text;
		

		
		
		$datas['footer'] = '';
		
		$this->load->view('Header',$header);
		$this->load->view('navigation');
		$this->load->view('display_banners',$datas);
		$this->load->view('Footer');
	}
	
	function rich_ads()
	{
		$this->db->where('url','rich-media-examples');
		$data = $this->db->get('content');
		$contents = $data->row();
		
		
		$header['title'] =  $contents->title;
		$header['h1'] = $contents->title;
		$header['intro'] = '';
		
		$datas['content'] = $contents->text;
		
		
		$datas['footer'] = '';
		
		$this->load->view('Header',$header);
		$this->load->view('navigation');
		$this->load->view('rich_banners',$datas);
		$this->load->view('Footer');
	}
	
	function concepts($url)
	{
		$this->db->where('url',$url);
		$data = $this->db->get('content');
		$contents = $data->row();
		
		$header['title'] =  $contents->title;
		$header['h1'] = $contents->title;
		$header['intro'] = $contents->intro;
		$datas['content'] = $contents->text;
		
		$this->load->view('Header',$header);
		$this->load->view('navigation');
		$this->load->view('adpages',$datas);
		$this->load->view('Footer');
	}
	
	
	
}
