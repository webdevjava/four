<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class UserRegisterController extends Controller
{
    public function index(){

        return view('user.register');
    }

    public function register(){

        $this->validate(request(),[
            'username'=>'required|alpha_dash',
            'email'=>'required|unique:users,email',
            'password'=>'required|confirmed',
            'image'=>'max:2048'
        ]);

        if(request()->hasFile('image')){
            $image_name = uniqid().'.jpg';
            request()->file('image')->move('image/',$image_name);

            User::create([
                'username'=>request('username'),
                'email'=>request('email'),
                'location'=>request('location'),
                'phone'=>request('phone'),
                'gender'=>request('gender'),
                'password'=>bcrypt(request('password')),
                'image'=>$image_name
            ]);
        }else{
            User::create([
                'username'=>request('username'),
                'email'=>request('email'),
                'location'=>request('location'),
                'phone'=>request('phone'),
                'gender'=>request('gender'),
                'password'=>bcrypt(request('password')),

            ]);
        }


        return "Registration is done successfully";
    }
}
