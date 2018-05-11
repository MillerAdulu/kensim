<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laravel\Scout\Searchable;
use TCG\Voyager\Traits\Resizable;
use TCG\Voyager\Traits\Spatial;
use Grimzy\LaravelMysqlSpatial\Eloquent\SpatialTrait;

class Property extends Model
{
  use Searchable;
  use Resizable;
  use Spatial;
  use SpatialTrait;
  protected $spatialFields = [
	'gps_coordinates',
  ];
}
