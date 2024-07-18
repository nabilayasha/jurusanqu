<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;
use App\Models\Hasil;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    protected $kelas;

    public function index(Request $request)
    {
        $data['hasil'] = DB::table('hasil')->select('hasil.*', 'kelas.nama AS nama_kelas')->leftJoin('kelas', 'kelas.id', '=', 'hasil.id_kelas')->paginate(10);
        $data['no'] = 1;
        $data['kelas'] = DB::table('kelas');
        $data['count_hasil'] = Hasil::count();
        $data['count_kelas2'] = Hasil::where('id_kelas', 1)->count();
        $data['count_kelas3'] = Hasil::where('id_kelas', 2)->count();
        return view('layout-admin', $data);
    }
}
