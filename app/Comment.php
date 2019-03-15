<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $table = 'comments';

    // Relación Many To One / de muchos a uno
    public function user(){
        return $this->belongsTo('App\User', 'user_id');
    }

    // Relación Many To One / de muchos a uno
    public function image(){
        return $this->belongsTo('App\Image', 'image_id');
    }


    
}
