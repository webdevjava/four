<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class ShowDataController extends Controller
{
    public function index(){
        $users = User::latest()->get();
        return view('user.DataTable',compact(['users']));
    }
}
