<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    use HasFactory;
    protected $fillable = ['people_id', 'picture', 'person'];
    public function people()
    {
        return $this->belongsTo(People::class);
    }
}
