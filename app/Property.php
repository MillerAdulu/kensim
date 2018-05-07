<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;
use TCG\Voyager\Traits\Spatial;
use Grimzy\LaravelMysqlSpatial\Eloquent\SpatialTrait;
class Property extends Model
{
  use Resizable;
  use Spatial;
  use SpatialTrait;
  protected $spatialFields = [
	'gps_coordinates',
  ];
}
