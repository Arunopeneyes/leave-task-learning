<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Calendar;
use App\Models\addleave;
use App\User;
use Illuminate\Support\Facades\Auth;
use Validator;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
class RegistrationController extends Controller
{
   public function store(Request $request)
   {
      $abc = $request->validate([
         'Full_Name' => 'required',
         'Email' => 'required',
         'Password' => 'required',
         'Job_Title' => 'required',
         'Phone_Num' => 'required'
      ]);
      $user = Calendar::create($abc);
      $accessToken = $user->createToken('Access Token');

      return response()->jason(['user' => $user, 'Message' => 'Registration Successfully'], 201);
   }



   public function login(Request $request)
   {
      try {
         
      $abc = $request->validate
      ([
            'Email' => 'required',
            'Password' => 'required'
         ]);


      $abc = Calendar::where('Email', '=', $request->Email)->where('Password', '=', $request->Password)->first();
      $accessToken = $abc->createToken('Access Token');
      return response()->json(['message' => 'data Enter Succesfully', 'token' => $accessToken, 'info' => $abc], 201);

      } catch (\Exception $e) {
         report($e);
         return response()->json(['error' => $e->getMessage()],e.getMessage());
      }
   }

   public function addleave(Request $request, $id = null)
   {
      $request->validate([
         'Date' => 'required',
         'Reason' => 'required',
         'Other_Comment' => 'required'

      ]);
      //hello
      if (is_null($id)) {
         $leave = new Addleave;
         $msg = "added";
         $code = 202;
      } else {
         $leave = Addleave::find($id);
         $msg = "updated";
         $code = 200;
      }
      $leave->Date = $request['Date'];
      $leave->Reason = $request['Reason'];
      $leave->Other_Comment = $request['Other_Comment'];
      $leave->User_Id = Auth::user()->id;
      $leave->save();
      return response()->json(['message' => 'Data Successfuly ' . $msg], $code);
   }
   public function getlist($is_upcoming = 0)
   {
      $leave = Addleave::where('User_Id',Auth::user()->id);
      if ($is_upcoming == 1) {
         $leave->where('Date', ">=", Carbon::now());
      }
      $leave = $leave->get();
      return response()->json(['message' => 'data Display', 'Data' => $leave], 202);

   }
   public function delete($id)
   {

      $post = Addleave::where('id', $id)->first();
      if ($post != null) {
         $post->delete();
         return response()->json(['message' => 'data delete', 'Data' => $post, 200]);
      }

      return response()->json(['message' => 'data not Found', 405]);

   }
   public function todayabsent()
   {
      $date = date('yyyy-mm-dd');

      $leave = Addleave::where('Date', '=', $date)->get();
      return response()->json(['message' => 'Absent Employee', 'Data' => $leave, 200]);
   }

   public function getdata($id)
   {
      $post = Addleave::where('id', $id)->first();
      if ($post != null) {
         return response()->json(['message' => 'data display', 'Data' => $post, 200]);
      }

      return response()->json(['message' => 'data not Found', 405]);
   }
}