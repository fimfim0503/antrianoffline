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
                  <form class="form-inline" style="padding-top: 20px;">
                    <div class="form-group" style="margin-bottom: 20px;">
                      <label for="nama"> <strong>Nama Anda:</strong> </label>
                      <input type="text" class="form-control">
                      <p class="form-text">Isikan Nama sesuai KTP </p>
                    </div>
                    <div class="form-group" style="margin-bottom: 20px;" >
                      <label for="alamat"> <strong>NO. KTP</strong>  :</label>
                      <input type="text" class="form-control" id="alamat">
                      
                    </div>		
                    <div class="form-group" style="margin-bottom: 20px;">
                      <label for="alamat"> <strong>No. Handphone</strong> </label>
                      <input type="text" class="form-control" id="alamat">
                    </div>		
                    <div class="form-group" style="margin-bottom: 20px;">
                      <label for="alamat"> <strong>Tanggal Lahir</strong> </label>
                      <input type="date" class="form-control" id="alamat">
                    </div>	
                    <div class="form-group" style="margin-bottom: 20px;">
                      <label for="alamat"> <strong>Silahkan PIlih Klinik Tujuan</strong> </label>
                      <select class="form-select" aria-label="Default select example">
                        <option selected>Pilih disini</option>
                        <option value="1">Bayar Umum </option>
                        <option value="2">BPJS</option>
                      </select>
                    </div>	
                    <div class="form-group" style="margin-bottom: 20px;">
                      <label for="alamat"> <strong>Silahkan PIlih Cara Bayar </strong> </label>
                      <select class="form-select" aria-label="Default select example">
                        <option selected>Pilih disini</option>
                        <option value="1">Bayar Umum </option>
                        <option value="2">BPJS</option>
                      </select>
                    </div>	

                    
                   
                  
                    <div style="text-align: center; margin-top: 30px;  ">
                      <a href="">
                        <button type="submit" class="btn btn-danger" style="font-size: 30px;border-radius: 15px; margin-right: 100px;">Print Antrian</button>
                      </a>
                      <a href="{{ url('/') }}">
                        <button type="submit" class="btn btn-success" style="font-size: 30px;border-radius: 15px;">Kembali</button>

                      </a>

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