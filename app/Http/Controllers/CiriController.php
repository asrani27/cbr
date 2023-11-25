<?php

namespace App\Http\Controllers;

use App\Models\Ciri;
use Illuminate\Http\Request;

class CiriController extends Controller
{
    public function index()
    {
        $data = Ciri::paginate(15);

        return view('admin.ciri.index', compact('data'));
    }
}
