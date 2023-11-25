<?php

namespace App\Http\Controllers;

use App\Models\Tes;
use App\Models\Ciri;
use App\Models\Hasil;
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

        $check = Hasil::where('user_id', Auth::user()->id)->first();
        if ($check == null) {
            $hasil = null;
        } else {
            $hasil = $check->kepribadian;
        }
        return view('user.home', compact('ciri', 'cirisaya', 'hasil'));
    }

    public function updatelurah(Request $request)
    {
        Lurah::first()->update($request->all());
        Session::flash('success', 'Berhasil Diupdate');
        return back();
    }
}
