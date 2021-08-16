<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Jadwalpoli extends Model
{
    use HasFactory;
    protected $table = 'Jadwalpolis';

    public function poli()
    {
        return $this->belongsTo(Poli::class, 'kodepoli', 'kodepoli');
    }
}
