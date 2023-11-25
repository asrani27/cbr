<?php

namespace App\Http\Controllers;

use App\Models\Kepribadian;
use Illuminate\Http\Request;

class KepribadianController extends Controller
{
    public function index()
    {
        $data = Kepribadian::paginate(15);

        return view('admin.kepribadian.index', compact('data'));
    }
}
