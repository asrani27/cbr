<?php

namespace App\Http\Controllers;

use App\Models\Tes;
use App\Models\Ciri;
use App\Models\Lurah;
use App\Models\Tpermohonan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class HomeController extends Controller
{
    public function superadmin()
    {
        return view('admin.home');
    }

    public function user()
    {
        $ciri = Ciri::get();
        $cirisaya = Tes::where('user_id', Auth::user()->id)->get();
        return view('user.home', compact('ciri', 'cirisaya'));
    }

    public function updatelurah(Request $request)
    {
        Lurah::first()->update($request->all());
        Session::flash('success', 'Berhasil Diupdate');
        return back();
    }
}
