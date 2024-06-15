<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Invitations extends Model
{
    use HasFactory;
    protected $table='invitations';
    protected $primaryKey='id';
}
