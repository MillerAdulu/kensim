<?php

namespace App\Http\Controllers;


use App\Property;
use App\Type;
use Cornford\Googlmapper\Facades\MapperFacade as Mapper;
use Illuminate\Http\Request;
use TCG\Voyager\Traits\Spatial;


class PropertyController extends Controller
{
  use Spatial;


  /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function index()
  {
	$properties = Property::all();

	return view('property.all', compact('properties'));
  }

  /**
   * Display the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function show($id)
  {
	$property = Property::find($id);
	$types = Type::all();

	foreach($types as $type):
	  if($type->id = $property->property_type):
		$property->type = $type->type;
	  endif;
	endforeach;

	$latitude = $property->gps_coordinates->getLat();
	$longitude = $property->gps_coordinates->getLng();


	Mapper::map($latitude, $longitude);

	return view('property.single', compact('property'));

  }

  public function searchPropertyByCategory(Request $request){
	$properties = Property::where ('category', $request->query('id'));
	return view('property.create', compact('properties'));
  }

  public function showSearchForm(){
	return view('property.search');
  }

  public function results(Request $request){
    var_dump($request);
  }

}
