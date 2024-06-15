<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GetQuestions extends Model
{
    use HasFactory;
    protected $table='questions';
    protected $primaryKey='id';

    public function maingroup()
    {
        return $this->belongsTo(MainGroup::class, 'maingroupid');
    }
}
