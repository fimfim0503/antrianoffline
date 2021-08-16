<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Poli extends Model
{
    use HasFactory;
    protected $table = 'Polis';

    public function jadwalpolis()
    {
        return $this->hasMany(Jadwalpoli::class, 'kodepoli', 'kodepoli');
    }
}
