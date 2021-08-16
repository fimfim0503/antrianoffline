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

    <div class="container" style="margin-top: 30px; margin-bottom: 10px;">
		<div class="jumbotron" style="text-align: center;">
			
            <div style="color:#1A21C3; ">
                <h1> <strong>ANTRIAN PENDAFTARAN</strong>   </h1>
                <h1> <strong>PASIEN LAMA </strong> </h1>
            </div>
			
		</div>
		
	</div>

    <div class="container">
	
		<div class="jumbotron" style="background-color: #268B92; 
        height: 580px; width: 1084px; text-align: center; margin: auto; border-radius: 15px;" >
			<div>
                <p style="color: white; padding-top: 20px; font-size: 24px;">SIlahkan isi data di bawah ini dengan benar !</p>
            </div>
        
            <!-- card -->
            <div class="card" style=" text-align: center; margin-left: 150px; margin-right: 150px; height: 480px; border-radius: 25px;">
                
                <div class="card-body">
                  
                  <!-- isi form -->
                  <form action="{{ route('createlama') }}" method="post" >
                    @csrf
                      <div class="row g-3 align-items-center " style="margin-top: 20px;">
                        <div class="col-auto">
                          <label for="norm" class="col-form-label" style="font-size: 20px;" >No Rekam Medik</label>
                        </div> 

                        <div class="col-auto">
                          <input type="text" id="norm" value="{{@old('norm')}}" name="norm" 
                              
                          class="form-control @error('norm') is-invalid
                            
                          @enderror " aria-describedby="passwordHelpInline" style="font-size: 24px; " placeholder="Isi  disini" required>
                          @error('norm')
                          <div class="invalid-feedback" >
                              {{ $message }}
                          </div>
                        @enderror
                        </div>
                        <div class="col-auto">
                          <span id="passwordHelpInline" class="form-text">
                            Silahkan masukan No Rekam Medik 
                          </span>
                        </div>
  
                        <div class="form-group" style="margin-bottom: 20px; text-align: left; ">
                          <label for="alamat" style="font-size: 20px;" > <strong>Silahkan PIlih Klinik Tujuan </strong> </label>
                          <select class="form-select" aria-label="Default select example" name="klinik" >
                            <option selected>Pilih Disini</option>
                            @foreach ($items as $pol )
                              <option value="{{ $pol->poli->kodepoli }}">{{ $pol->poli->namapoli }}</option>  
                            @endforeach
                            
                          </select>
                        </div>	
                        <div class="form-group" style="margin-bottom: 20px; text-align: left; ">
                          <label for="alamat" style="font-size: 20px;" > <strong>Silahkan PIlih Cara Bayar </strong> </label>
                          <select class="form-select" aria-label="Default select example" name="carabayar" >
                            <option selected>Pilih disini</option>
                            <option value="1">Bayar Umum </option>
                            <option value="2">BPJS</option>
                          </select>
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

                      </div>

                  </form>
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