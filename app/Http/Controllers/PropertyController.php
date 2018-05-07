<?php

namespace App\Http\Controllers;


use App\Property;
use App\Type;
use Cornford\Googlmapper\Facades\MapperFacade as Mapper;
use Illuminate\Http\Request;
use TCG\Voyager\Traits\Spatial;
use Carbon\Carbon;


class PropertyController extends Controller
{
  use Spatial;

  public function home()
  {
    $properties = Property::all();

    return view('index', compact('properties'));
  }

  public function getAbout()
  {
    return view('aboutus');
  }
  /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function index()
  {
	$properties = Property::orderBy('id', 'desc')->paginate(1);

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

    $property->gallery = $this->gallery_thumbnails('normal', $property->gallery);

	$property->price = strrev(chunk_split(strrev($property->price), 3, ','));
	
	$latitude = $property->gps_coordinates->getLat();
	$longitude = $property->gps_coordinates->getLng();

	$property->created_at = new Carbon($property->created_at);


	Mapper::map($latitude, $longitude);

	return view('property.single', compact('property'));

  }

  public function gallery_thumbnails($type, $gallery)
  {
    $thumbnails = [];

    foreach(json_decode($gallery) as $image_url):
      $ext = pathinfo($image_url, PATHINFO_EXTENSION);
      $name = str_replace_last('.'.$ext, '', $image_url);
      $url = $name . '-' . $type . '.' . $ext;
      array_push($thumbnails, $url);
    endforeach;

    return $thumbnails;
  }

}
