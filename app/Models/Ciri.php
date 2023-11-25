<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ciri extends Model
{
    use HasFactory;
    protected $table = 'ciri';
    protected $guarded = ['id'];
    public $timestamps = false;

    public function kasus()
    {
        return $this->hasMany(Kasus::class, 'ciri_id');
    }
}
