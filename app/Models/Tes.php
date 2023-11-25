<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tes extends Model
{
    use HasFactory;

    protected $table = 'tes';
    protected $guarded = ['id'];
    public $timestamps = false;

    public function ciri()
    {
        return $this->belongsTo(Ciri::class, 'ciri_id');
    }
}
