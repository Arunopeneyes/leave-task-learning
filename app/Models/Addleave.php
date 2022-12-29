<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Laravel\Passport\HasApiTokens;
class Addleave extends Model
{
    use HasFactory;
    use HasApiTokens;
    protected $table = "add_leave";
    protected $id = "id";
    protected $fillable = [
        'Date',
        'Reason',
        'Other_Comment'];


        // public static function add($request)
        // {
            
           
        // }
        // public static function update1($request)
        // {
            
        // }
}
