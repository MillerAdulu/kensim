<?php

namespace App\Http\Controllers;

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
      die("I have been sent!");
    }
}
