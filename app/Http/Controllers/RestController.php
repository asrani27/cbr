<?php

namespace App\Http\Controllers;

use App\Models\Tes;
use App\Models\Ciri;
use App\Models\Role;
use App\Models\User;
use App\Models\Hasil;
use Illuminate\Http\Request;
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
