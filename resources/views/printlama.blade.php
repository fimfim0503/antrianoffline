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

  
    <div class="container" style="width:400px; margin-left:30px; margin-top:30px; border:solid 3px black; padding-top:15px" >
            <div style="text-align: center; ">
                <div style="margin-bottom: 20px;  border-bottom:solid 3px black;">
                    <h4>Antrian Pendaftaran Rawat Jalan </h4>
                    <h4 style="">RSU Dr. Slamet Garut </h4>    
                </div >
                <div style="color: black ; border-bottom:solid 3px black; height:50px; padding-top:5px;">
                    <h5>Klinik <strong>{{ $input->namapoli }}</strong> </h5>
                </div>
                
                <div style="margin-top: 15px">
                    <h6>
                    No. Antrian : 
                </h6>
                <h1 style="strong ; font-size: 80px">
                   {{ $input->kodeantri }}.{{ $input->id }}
                </h1>
    
                <h6>
                    No. RM : 
                </h6>
                <h5  >
                    <strong >{{ $input->norm }}</strong> 
                </h5>
                <h6>
                   Nama :
                </h6>
                <h5>
                    <strong>{{ $input->name }}</strong> 
                </h5>
                <h6>
                   Cara Bayar :
                </h6>
                <h5>
                    <strong>{{ $input->carabayar}}</strong> 
                </h5>
                <h6 style="font-size: 12px ; margin-top:30px">
                    Tanggal : 
                </h6>
                <h6 style="font-size: 12px">
                   <strong>{{ $input->created_at}}</strong> 
                </h6>
                </div>
                

            </div>

    </div>
    
    <script>
		window.print();
	</script>

    {{-- <script>
         setTimeout(
                function() 
                {
                    window.location.replace("/");
                }, 500);
    </script> --}}

   

    <script src="frontend/libraries/jquery/jquery-3.6.0.min.js"></script>
    <script src="frontend/libraries/bootsrap/js/bootstrap.js"></script>
    

</body>
</html>