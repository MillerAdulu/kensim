<?php

namespace App\Http\Controllers;

use App\Mail\ContactUs;
use Illuminate\Http\Request;
use Cornford\Googlmapper\Facades\MapperFacade as Mapper;

class ContactController extends Controller
{
    public function show()
    {
      Mapper::map(-1.2647608, 36.80071559999999);
      return view('contactus');
    }

    public function submit(Request $request)
    {
      $mail = new \StdClass();
      $mail->first_name = $request['first_name'];
      $mail->last_name = $request['last_name'];
      $mail->email = $request['email'];
      $mail->subject= $request['subject'];
      $mail->message = $request['message'];

      Mail::send();
    }
    
}

