<?php

namespace App\Http\Controllers;

use App\Mail\NotifyMail;
use Illuminate\Http\Request;
use App\Models\Calendar;
use App\Models\addleave;
use App\User;
use Mail;
use Illuminate\Support\Facades\Auth;
//use Illuminate\Support\Facades\Mail;
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
      $mails = [
         'Subject' => 'Registration Succesfully',
                'body' => 'You Are Most Welcome...!'
              ];

      Mail::to($request->Email)->send(new NotifyMail($mails)); 
      return response()->json(['message' => 'data Enter Succesfully', 'token' => $accessToken, 'info' => $abc], 201);
      
   }



   public function login(Request $request)
   {
     try {
    //  $pin = rand(2000, 5000); 
      $validation = $request->validate([
            'Email' => 'required',
            'Password' => 'required'
         ]);


      $abc = Calendar::where('Email', '=', $request->Email)->where('Password', '=', $request->Password)->first();
      $confemail = $abc->Email;
      // if($abc)
      // {
      //    $abc->update('Pin'->$pin);
      //    $info = [
      //       'subject' => 'Send Otp',
      //       'body' => 'Verify Otp' .$pin
      //    ];
      //    Mail::to($confemail)->send(new LoginMail($info)); 


    
      $accessToken = $abc->createToken('Access Token');
      return response()->json(['message' => 'Registration Succesfully', 'token' => $accessToken, 'information' => $abc], 201);

      }
       catch (\Exception $e) {
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

      $abc = Carbon::now();
      $date = $abc->toDateString();
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

   // public function html_email() {
   //    $abc = [
   //       'Subject' => 'welcome my page',
   //       'body' => 'Your most welcome'
   //    ];
   //  Mail::to("ankitkyada23@gmail.com")->send(new MyTestMail($abc));  
   // }


   // public function login1(Request $request)
   // {  
   //    $request->validate
   //    ([
   //          'Email' => 'required',
   //          'Password' => 'required'
   //       ]);
   //       $abc = Calendar::where('Email', '=', $request->Email)->where('Password', '=', $request->Password)->first();
   //    $array = array(['Email' => $request->Email]);

   //            if($abc)
   //            {
   //             $xyz = [
   //                'Subject' => 'welcome my page',
   //             'body' => 'Your most welcome'
   //            ];
   //            Mail::to($array[['Mail']])->send(new MyTestMail($abc)); 
   //            return response()->json(['message' => 'You Are Login ans Sent Mail Your Email...!'],202);
   //            }
   //            else{
   //             return response()->json(['message' => 'Your Email And PAssword Not Match'],404);
   //            }
   // }

}