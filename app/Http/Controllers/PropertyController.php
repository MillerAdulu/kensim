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

    public function index()
    {
        $properties = Property::orderBy('id', 'desc')->paginate(9);

        return view('property.all', compact('properties'));
    }

    public function show($id)
    {
        $property = Property::find($id);
        $types = Type::all();

        $property->gallery = $this->gallery_thumbnails('normal', $property->gallery);

        $property->price = strrev(chunk_split(strrev($property->price), 3, ','));

        $latitude = $property->gps_coordinates->getLat();
        $longitude = $property->gps_coordinates->getLng();

        $property->created_at = new Carbon($property->created_at);


        Mapper::map($latitude, $longitude);

        return view('property.single', compact('property', 'types'));

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

    public function search(Request $request)
    {
        $properties = Property::search($request['search_item'])->paginate(9);
        $searchflag = true;
        return view('property.all', compact('properties', 'searchflag'));
    }

    public function advancedSearch(Request $request){
        $keyword = $request['keyword'];
        $maxPrice = $request['maxPrice'];
        $minPrice = $request['minPrice'];
        $mode = $request['mode'];
        $bathrooms = $request['bathrooms'];
        $bedrooms = $request['bedrooms'];

        $rawFilters = [
            'price >= ' . $minPrice,
            'price <= ' . $maxPrice,
            'mode = ' . $mode,
            'Bathrooms >= ' . $bathrooms,
            'Bedrooms >= ' . $bedrooms,
        ];

        $queryFilters = array_filter($rawFilters);
        $filterString = implode(' AND ', $queryFilters);

        $params = [
            'optionalFilters' => $filterString
        ];

        $properties = Property::search($keyword)->with($params)->paginate(9);
        $searchFlag = true;

        return view('property.all', compact('properties', 'searchFlag'));
    }

}
