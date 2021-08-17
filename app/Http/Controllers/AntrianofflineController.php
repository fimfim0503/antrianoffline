<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Poli;
use App\Models\Antrian;
use App\Models\Jadwalpoli;
use Illuminate\Http\Request;
use PhpParser\Node\Stmt\TryCatch;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;



class AntrianofflineController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {


        return view('index');
    }

    public function lama()
    {


        $tanggal = Carbon::now();

        // return $tanggal;    
        $day = date('D', strtotime($tanggal));

        $dayList = array(
            'Sun' => 'Minggu',
            'Mon' => 'Senin',
            'Tue' => 'Selasa',
            'Wed' => 'Rabu',
            'Thu' => 'Kamis',
            'Fri' => 'Jumat',
            'Sat' => 'Sabtu'
        );
        $hari = $dayList[$day];

        $items = Jadwalpoli::with(['poli'])
            ->wherenamahari($hari)
            ->get();

        return view('lama', [
            'items' => $items,
        ]);
    }

    public function baru()
    {
        return view('baru');
    }

    public function createlama(Request $request)
    {
        $this->validate($request, [
            'norm' => 'required|numeric',
            'klinik' => 'required|max:3',
            'carabayar' => 'required|max:10'
        ]);

        $tanggal = Carbon::now();

        // return $tanggal;    
        $day = date('D', strtotime($tanggal));

        $dayList = array(
            'Sun' => 'Minggu',
            'Mon' => 'Senin',
            'Tue' => 'Selasa',
            'Wed' => 'Rabu',
            'Thu' => 'Kamis',
            'Fri' => 'Jumat',
            'Sat' => 'Sabtu'
        );
        $hari = $dayList[$day];
        $taglpjg = date('Y-m-d');

        //mendapatkan kode poli
        $getkodepoli = $request->klinik;



        //mendapatkan nama poli
        $namapoli = Poli::where('kodepoli', $getkodepoli)
            ->select('namapoli')
            ->get();

        //mendapatkan kodeantri
        $results = Poli::where('kodepoli', '=', $getkodepoli)
            ->select('kodeantri')
            ->get();

        $max1 = Antrian::where('tanggalperiksa', '=', $taglpjg)
            ->where('kodepoli', $getkodepoli)
            ->max('NOMOR');





        $gethari = Jadwalpoli::where('kodepoli', $getkodepoli)
            ->wherenamahari($hari)
            ->wherestatus(1)
            ->first();



        $inputrm = $request->norm;

        $apirm = Http::get('http://exampleaksessim.test:8080/api/pasien/' . $inputrm)->json();



        $harisama = Antrian::where('norm', '=', $request->norm)
            ->wheretanggalperiksa($taglpjg)
            ->first('tanggalperiksa');

        if (empty($apirm)) {
            return redirect('/lama')->with('status', 'No Rekam Medik Tidak ditemukan, silahkan isi dengan benar atau tanyakakan ke petugas');
            // } elseif ($harisama == !null) {
            //     return redirect('/lama')->with('status', 'Anda Sudah Mendapatkan No Antrian');
        } elseif ($max1 >= $gethari->kuota) {
            return redirect('/lama')->with('status', 'No Antrian Habis');
        } else {
            $nomr2 = $apirm['NAMA'];


            $input = new Antrian;

            $input->nomorkartu = 0;
            $input->nik = 0;
            $input->notelp = 0;
            $input->kodepoli = $getkodepoli;
            $input->norm = $request->norm;
            $input->name = $nomr2;
            $input->tanggalperiksa = $taglpjg;
            $input->kodedokter = 0;
            $input->jampraktek = 0;
            $input->jeniskunjungan = 1;
            $input->nomorreferensi = 1;
            $input->carabayar = $request->carabayar;
            $input->kodebooking = Str::random(20);
            $input->waktuperiksa = 000000;

            // $results = Poli::where('kodepoli', '=', $request->kodepoli)
            //     ->select('kodeantri')
            //     ->get();
            $input->kodeantri = $results[0]->kodeantri;;
            $input->namapoli = $namapoli[0]->namapoli;


            $input->namadokter = 'tidka ada';
            $input->save();



            return view('printlama', ['input' => $input]);
        }
    }

    // public function printlama()
    // {
    //     return view('printlama');
    // }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
