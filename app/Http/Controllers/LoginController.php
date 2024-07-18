<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class LoginController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('login');
    }

    public function auth(Request $request)
    {
        $request->validate([
            'email' => 'required',
            'password' => 'required'
        ]);

        $user = User::where('email', $request->email)->first();
        if ($user && $user->password == md5($request->password)) {
            Session::regenerate();

            Session::put('user', [
                'id'   => $user->id,
                'name' => $user->nama,
                'email' => $user->email,
            ]);

            return redirect()->intended('dashboard');
        }

        return redirect()->route('login');
    }
}
