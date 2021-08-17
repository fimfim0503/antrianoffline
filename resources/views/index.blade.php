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

    <div class="container" style="margin-top: 50px; margin-bottom: 30px;">
		<div class="jumbotron" style="text-align: center;">
			
            <div style="color:#1A21C3; ">
                <h1> <strong>ANTRIAN PENDAFTARAN</strong>   </h1>
                <h1> <strong>RSU Dr. SLAMET GARUT </strong> </h1>
            </div>
			
		</div>
		
	</div>

    <div class="container">
	
		<div class="jumbotron" style="background-color: #220363; 
                height: 537px; width: 1084px; text-align: center; margin: auto; border-radius: 15px;">
			
			<div style="border-top: 20px; padding-top: 99px;" >
                <p style="margin-top: 20px;">
                    <a href="{{ route('lama') }}">
                        <button class="btn btn-lg btn-primary" style="font-size: 56px;"  >Pasien Lama</button></a>
                    
                </p>
                                
                <p style="margin-top: 30px; ">
                    <a href="{{ url('baru') }}"><button class="btn btn-lg btn-danger" style="font-size: 56px;"  >Pasien Baru</button></a>
                    
                </p>
                <p  style="color: white; margin-top: 100px;">Ket : Pasien lama adalah pasien yang pernah berobat di RSU dr. Slamet Garut</p>
            </div>

            <div>
                
            </div>

		</div>
		
	</div>

    

    <script src="frontend/libraries/jquery/jquery-3.6.0.min.js"></script>
    <script src="frontend/libraries/bootsrap/js/bootstrap.js"></script>
    
</body>
</html>