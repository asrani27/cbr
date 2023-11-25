<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kasus extends Model
{
    use HasFactory;
    protected $table = 'kasus';
    protected $guarded = ['id'];
    public function ciri()
    {
        return $this->belongsTo(Ciri::class, 'ciri_id');
    }
    public function kepribadian()
    {
        return $this->belongsTo(Kepribadian::class, 'kepribadian_id');
    }
}
