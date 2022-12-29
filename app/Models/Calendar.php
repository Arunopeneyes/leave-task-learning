<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Passport\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Calendar extends Authenticatable
{
    use HasFactory;
    use HasApiTokens;
    protected $table = "registers";
    protected $id = "id";
    protected $fillable = [
        'Full_Name',
        'Email',
        'Password',
        'Job_Title',
        'Phone_Num'
    ];


}
