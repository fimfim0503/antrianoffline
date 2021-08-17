<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="frontend/libraries/bootsrap/css/bootstrap.css">
</head>
<body>

    
	</div>

    <div class="container">
	
		<div class="jumbotron" style="background-color: #268B92; 
        height: 740px; width: 1084px; text-align: center; margin-top: 10px; margin-left: 120px; border-radius: 15px;" >
			<div>
                <p style="color: white; padding-top: 10px; font-size: 24px;">SIlahkan isi data di bawah ini dengan benar !</p>
            </div>
        
            <!-- card -->
            <div class="card" style=" text-align: left; margin-left: 150px; margin-right: 150px; height: 650px; border-radius: 25px;">
                
                <div class="card-body">
                  
                  <!-- isi form -->
                  <form action="{{ route('createbaru') }}" method="post" class="form-inline" style="padding-top: 20px;">
                    @csrf
                    <div class="form-group" style="margin-bottom: 20px;">
                      <label for="nama"> <strong>Nama Anda:</strong> </label>
                      <input type="text" class="form-control @error('nama') is-invalid @enderror " value="{{@old('nama')}}" name="nama"  >
                      @error('nama')
                      <div class="invalid-feedback" >
                          {{ $message }}
                      </div>
                    @enderror
                      <p class="form-text">Isikan Nama sesuai KTP </p>
                    </div>
                    <div class="form-group" style="margin-bottom: 20px;" >
                      <label for="alamat"> <strong>NO. KTP</strong>  :</label>
                      <input type="text" class="form-control @error('ktp') is-invalid @enderror" id="alamat" value="{{@old('ktp')}}" name="ktp">
                      @error('ktp')
                      <div class="invalid-feedback" >
                          {{ $message }}
                      </div>
                    @enderror
                      
                    </div>		
                    <div class="form-group" style="margin-bottom: 20px;">
                      <label for="alamat"> <strong>No. Handphone</strong> </label>
                      <input type="text" class="form-control @error('notelp') is-invalid @enderror " id="alamat" value="{{@old('notelp')}}" name="notelp">
                      @error('notelp')
                      <div class="invalid-feedback" >
                          {{ $message }}
                      </div>
                    @enderror
                    </div>		
                    	
                    <div class="form-group" style="margin-bottom: 20px; text-align: left; ">
                      <label for="alamat" style="font-size: 20px;" > <strong>Silahkan PIlih Klinik Tujuan </strong> </label>
                      <select class="form-select" aria-label="Default select example" name="klinik" >
                        <option selected>Pilih Disini</option>
                        @foreach ($items as $pol )
                          <option value="{{ $pol->poli->kodepoli }}">{{ $pol->poli->namapoli }}</option>  
                        @endforeach
                        
                      </select>
                      @error('klinik')
                      <div class="invalid-feedback" >
                          {{ $message }}
                      </div>
                    @enderror
                    </div>
                    <div class="form-group" style="margin-bottom: 20px; text-align: left; ">
                      <label for="alamat" style="font-size: 20px;" > <strong>Silahkan PIlih Cara Bayar </strong> </label>
                      <select class="form-select" aria-label="Default select example" name="carabayar" >
                        <option selected>Pilih disini</option>
                        <option value="Umum">Bayar Umum </option>
                        <option value="BPJS">BPJS</option>
                      </select>
                      @error('carabayar')
                      <div class="invalid-feedback" >
                          {{ $message }}
                      </div>
                    @enderror
                    </div>	

                    
                   
                  
                    <div style="text-align: center; margin-top: 30px;  ">
                          
                      <button type="submit" class="btn btn-danger" style="font-size: 30px;border-radius: 15px; ">Print Antrian</button>
                    
                    {{-- <a href="{{ url('/') }}">
                      <button type="submit" class="btn btn-success" style="font-size: 30px;border-radius: 15px; margin-left: 30px;">Kembali</button>
                    </a> --}}

                    <a class="btn btn-success" style="font-size: 30px;border-radius: 15px; margin-left: 30px;" href="{{ route('index') }}">Kembali</a>
                    
                  </div>		
                  </form>
                  @if (session('status'))
                      <div class="alert alert-danger">
                          {{ session('status') }}
                      </div>
                  @endif
                  <!-- end isi form -->
                  
                </div>
              </div>
            <!-- endcard -->
			

		</div>
		
	</div>

    

    <script src="frontend/libraries/jquery/jquery-3.6.0.min.js"></script>
    <script src="frontend/libraries/bootsrap/js/bootstrap.js"></script>
    
</body>
</html>