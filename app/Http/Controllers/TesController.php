<?php

namespace App\Http\Controllers;

use App\Models\Tes;
use App\Models\Kasus;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class TesController extends Controller
{
    public function store(Request $req)
    {
        $check = Tes::where('user_id', Auth::user()->id)->where('ciri_id', $req->ciri_id)->first();
        if ($check == null) {
            //store
            $n = new Tes;
            $n->user_id = Auth::user()->id;
            $n->ciri_id = $req->ciri_id;
            $n->save();
            Session::flash('success', 'berhasil disimpan');
            return back();
        } else {
            Session::flash('error', 'Ciri Ini sudah di input');
            return back();
        }
    }

    public function delete($id)
    {
        Tes::find($id);
        Session::flash('success', 'berhasil dihapus');
        return back();
    }

    public function hasil()
    {
        $cirisaya = Tes::where('user_id', Auth::user()->id)->pluck('ciri_id');
        $kasus = Kasus::groupBy('nomor_kasus')->select('nomor_kasus', DB::raw('count(*) as total'))->get();
        $data_saya = $kasus->map(function ($item) use ($cirisaya) {
            $item->jumlah_cocok = Kasus::where('nomor_kasus', $item->nomor_kasus)->pluck('ciri_id')->merge($cirisaya)->duplicates()->count();
            $item->jumlah_kasus = Kasus::where('nomor_kasus', $item->nomor_kasus)->count();
            $item->jumlah_ciri = $cirisaya->count();
            $item->pembagi = max($item->jumlah_kasus, $item->jumlah_ciri);
            $item->persen = ($item->jumlah_cocok / $item->pembagi) * 100;
            return $item;
        });
        return view('home');
    }
}
