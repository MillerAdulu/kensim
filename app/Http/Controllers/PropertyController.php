<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Property;
use App\Type;

class PropertyController extends Controller
{
  /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function index()
  {
	$properties = Property::all();
	return view('property.index',compact('properties'));
  }

  /**
   * Show the form for creating a new resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function create()
  {
	$types = Type::all();
	return view('property.create',compact('types'));
  }

  public function search()
  {
	$types = Type::all();
	return view('property.search', compact('types'));
  }

  public function searchby(Request $request)
  {
	$parameter = $request['parameter'];
	$category = $request['category'];

	$properties = null;

	if($category == 0):
	  $properties = $this->searchByLocation($parameter);
	elseif ($category == 1):
	  $properties = $this->searchByMinPrice($parameter);
	elseif ($category == 2):
	  $properties = $this->searchByMaxPrice($parameter);
	elseif ($category == 3):
	  $properties = $this->searchByMode(0);
	elseif ($category == 4):
	  $properties = $this->searchByMode(1);
	endif;

	return view('property.results', compact('properties'));
  }

  public function searchByLocation($location)
  {
	return Property::where('location', $location)->get();
  }

  public function searchByMaxPrice($maxPrice)
  {
	return Property::where('price', '<=', $maxPrice)->get();
  }

  public function searchByMinPrice($minPrice)
  {
	return Property::where('price', '>=', $minPrice)->get();
  }

  public function searchByBedrooms($bedrooms)
  {
	return Property::where('bedrooms', '=>', $bedrooms)->get();
  }

  public function searchByMode($mode)
  {
	return Property::where('mode', $mode)->get();
  }

  public function searchByBathrooms($bathrooms)
  {
	return Property::where('bathrooms', '=>', $bathrooms)->get();
  }

  public function searchBySize($size)
  {
	return Property::where('size', '=>', $size)->get();
  }



//  public function searchResults(Request $request)
//{
//	$min_price = ['price', '=>', $request['price_min']];
//	$max_price = ['price', '<=', $request['price_max']];
//	$constraints = array_only(Request::all(), [
//	  'property_name',
//	  'location',
//	  'mode',
//	  'price',
//	  'bedrooms',
//	  'bathrooms',
//	  'type',
//	  'size'
//	]);
//  }


  /**
   * Store a newly created resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @return \Illuminate\Http\Response
   */
  public function store(Request $request)
  {
	$property = new Property;

	$property->property_name = $request['property_name'];
	$property->location = $request['location'];
	$property->mode = $request['mode'];
	$property->price = $request['price'];
	$property->bedrooms = $request['bedrooms'];
	$property->bathrooms = $request['bathrooms'];
	$property->size = $request['size'];
	$property->type = $request['type'];
	$property->description = $request['description'];
	// $property->pic=$request['pic'];

	$property->save();

	return redirect()->back();
  }

  /**
   * Display the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function show($id)
  {
	//
  }

  /**
   * Show the form for editing the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function edit($id)
  {
	//
  }

  /**
   * Update the specified resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function update(Request $request, $id)
  {
	//
  }

  /**
   * Remove the specified resource from storage.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function destroy($id)
  {
	//
  }
}
