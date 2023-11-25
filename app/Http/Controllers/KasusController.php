<?php

namespace App\Http\Controllers;

use App\Models\Kasus;
use Illuminate\Http\Request;

class KasusController extends Controller
{
    public function index()
    {
        $data = Kasus::paginate(100);

        return view('admin.kasus.index', compact('data'));
    }
}
