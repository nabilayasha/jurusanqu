<?php

namespace App\Http\Controllers;

use App\Models\Hasil;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TestController extends Controller
{
    protected $label = [
        //melakukan label untuk tipe mbti
        'I' => 'Introvert',
        'E' => 'Extrovert',
        'S' => 'Sensing',
        'N' => 'Intuition',
        'T' => 'Thinking',
        'F' => 'Feeling',
        'J' => 'Judging',
        'P' => 'Perceiving'

    ];
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {//menampilkan pertanyaan dari database
        $data['pertanyaan'] = DB::table('pertanyaan')->get()->all();
        $data['id'] = $request->id;

        return view('test', $data);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        # sum nilai masing-masing point mbti
        $array = array_count_values( array: $request->all());
        $I = (array_key_exists("I", $array) ? $array['I'] : 0) / 15 * 100;
        $E = (array_key_exists("E", $array) ? $array['E'] : 0) / 15 * 100;
        $S = (array_key_exists("S", $array) ? $array['S'] : 0) / 15 * 100;
        $N = (array_key_exists("N", $array) ? $array['N'] : 0) / 15 * 100;
        $T = (array_key_exists("T", $array) ? $array['T'] : 0) / 15 * 100;
        $F = (array_key_exists("F", $array) ? $array['F'] : 0) / 15 * 100;
        $J = (array_key_exists("J", $array) ? $array['J'] : 0) / 15 * 100;
        $P = (array_key_exists("P", $array) ? $array['P'] : 0) / 15 * 100;
    
        # perbandingan pohon keputusan
        $satu = $I > $E ? "I" : "E";
        $dua = $S > $N ? "S" : "N";
        $tiga = $T > $F ? "T" : "F";
        $empat = $J > $P ? "J" : "P";

        # hasil pohon keputusan
        $hasil = $satu . $dua . $tiga . $empat;
        # get data rekomendasi jurusan berdasarkan hasil pohon keputusan
        $recordRekomendasi = DB::table('rekomendasi_jurusan')->where('tipe', "$hasil")->get()->all();

        #simpan data hasil mbti ke database
        $data = [
            'I' => $I,
            'E' => $E,
            'S' => $S,
            'N' => $N,
            'T' => $T,
            'F' => $F,
            'J' => $J,
            'P' => $P,
            'hasil' => $hasil,
            'jurusan' => implode(",", array_column($recordRekomendasi, 'rekomendasi_jurusan')),
        ];
        $act = Hasil::where('id', $request->id)->update($data);

        if ($act) {
            # get kelas
            $res = Hasil::find($request->id);
            $kelas = DB::table('kelas')->where('id', $res->id_kelas)->first();
            #data untuk ditampilkan ke view
            $view = [
                'nama' => $res->nama,
                'sekolah' => $res->sekolah,
                'kelas' => $kelas->nama,
                'hasil' => $hasil,
                'satu' => $satu,
                'dua' => $dua,
                'tiga' => $tiga,
                'empat' => $empat,
                'label_satu' => $this->label[$satu],
                'label_dua' => $this->label[$dua],
                'label_tiga' => $this->label[$tiga],
                'label_empat' => $this->label[$empat],
                'julukan' => $recordRekomendasi[0]->julukan,
                'deskripsi' => $recordRekomendasi[0]->deskripsi,
                'jurusan' => $recordRekomendasi,
            ];
            // dd($view);

            return view('result', $view);
        }
    }

    public function storeBiodata(Request $request)
    {
        $validData = $request->validate([
            'nama' => 'required',
            'sekolah' => 'required',
            'id_kelas' => 'required',
        ]);

        $act = Hasil::create($validData);

        return redirect()->route('test', ['id' => $act->id]);
    }

    public function getPertanyaan()
    {
        return DB::table('pertanyaan')->orderBy('tipe_satu', 'asc')->get()->all();
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        //
    }
}
       