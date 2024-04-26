<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class People extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'age', 'picture', 'location'];
    public function reviews()
    {
        return $this->hasMany(Review::class);
    }	
}

?>