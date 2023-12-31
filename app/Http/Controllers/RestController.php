<?php

namespace App\Http\Controllers;

use App\Models\Tes;
use App\Models\Ciri;
use App\Models\Role;
use App\Models\User;
use App\Models\Hasil;
use App\Models\Kasus;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class RestController extends Controller
{
    public function tambahCiri(Request $req)
    {
        $check = Tes::where('user_id', Auth::user()->id)->where('ciri_id', $req->id)->first();
        if ($check == null) {
            //store
            $n = new Tes;
            $n->user_id = Auth::user()->id;
            $n->ciri_id = $req->id;
            $n->save();

            $data['message']        = 'berhasil';
            return response()->json($data);
        } else {
            $data['message']        = 'gagal';

            return response()->json($data);
        }
    }
    public function deleteCiri($id)
    {
        $check = Tes::find($id);
        if ($check == null) {
            $data['message']        = 'gagal';
            return response()->json($data);
        } else {
            $check->delete();
            $data['message']        = 'berhasil';
            return response()->json($data);
        }
    }
    public function checkHasil()
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

        //save

        $hasil = max($data_saya->pluck('persen')->toArray());
        $nomor_kasus = $data_saya->where('persen', $hasil)->first()->nomor_kasus;
        $kepribadian = Kasus::where('nomor_kasus', $nomor_kasus)->first()->kepribadian->nama;

        $check = Hasil::where('user_id', Auth::user()->id)->first();
        if ($check == null) {
            $n = new Hasil;
            $n->user_id = Auth::user()->id;
            $n->hasil = $hasil;
            $n->kepribadian = $kepribadian;
            $n->save();
        } else {
            $check->update([
                'hasil' => $hasil,
                'kepribadian' => $kepribadian,
            ]);
        }

        $data['message']        = 'berhasil';
        return response()->json($data);
    }
    public function ciri()
    {
        $data = Ciri::get();
        return response()->json($data);
    }
    public function user()
    {
        $ciri = Ciri::get()->toArray();
        $cirisaya = Tes::where('user_id', Auth::user()->id)->get()->map(function ($item) {
            $item->nama = $item->ciri->nama;
            return $item;
        });

        $check = Hasil::where('user_id', Auth::user()->id)->first();
        if ($check == null) {
            $hasil = null;
        } else {
            $hasil = $check->kepribadian;
        }

        $data['message']        = 'Data Ditemukan';
        $data['nama']           = Auth::user()->name;
        $data['username']       = Auth::user()->username;
        $data['ciri']           =  $ciri;
        $data['cirisaya']       =  $cirisaya;
        $data['hasil']          =  $hasil;

        return response()->json($data);
    }

    public function login(Request $req)
    {
        if (Auth::attempt(['username' => $req->username, 'password' => $req->password])) {
            $user = Auth::user();
            if ($user->tokens()->first() == null) {
                $token = $user->createToken($req->username)->plainTextToken;
            } else {
                $user->tokens()->delete();
                $token = $user->createToken($req->username)->plainTextToken;
            }
            $data['message']       = 'Data Ditemukan';
            $data['data']          = Auth::user();
            $data['api_token']     = $token;
            return response()->json($data);
        } else {
            $data['message']       = 'username atau password anda tidak ditemukan';
            $data['data']          = null;
            return response()->json($data);
        }
    }
    public function register(Request $req)
    {
        $check = User::where('username', $req->username)->first();
        if ($check == null) {

            $role = Role::where('name', 'user')->first();
            $n = new User;
            $n->name = $req->nama;
            $n->username = $req->username;
            $n->password = $req->password;
            $n->save();

            $n->password = bcrypt($req->password);
            $n->save();
            $n->roles()->attach($role);

            $n->createToken($req->username)->plainTextToken;

            $data['message']       = 'berhasil mendaftar, silahkan login';
            return response()->json($data);
        } else {
            $data['message']       = 'gagal';
            return response()->json($data);
        }
    }
}
