<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;
use App\Http\Controllers\Controller;
use App\Models\Addleave;
use App\Models\Calendar;

class AddleaveController extends Controller
{
   public function store1(Request $request)
   {
      $request->validate([
         'Date' => 'required',
         'Reason' => 'required',
         'Other_Comment' => 'required'

      ]);
      $leave = new Addleave;
      $leave->Date = $request['Date'];
      $leave->Reason = $request['Reason'];
      $leave->Other_Comment = $request['Other_Comment'];
      $leave->User_Id = Auth::Calendar()->id;
      $leave->save();
      // $addleave = Addleave::create($leave);
      // $addleave->User_id =Auth::id;
      $accessToken = $leave->createToken('Access Token');

      return response(['Add_leave' => $leave, 'access_token' => $accessToken]);
   }
}