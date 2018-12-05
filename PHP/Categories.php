//variable is $_GET["category"]
<!Doctype = html>

<html>
<body>
   <h1>
<?php
   $host        = "host = ec2-23-23-110-26.compute-1.amazonaws.com";
   $port        = "port = 5432";
   $dbname      = "dbname = d3scuneimo0uco";
   $credentials = "user = crizzbzbapugiv password=c31154c5b8b6fc32b6499b57032a8a9242e1419fc0b785d6bd94dca146dafb52";

   $db = pg_connect( "$host $port $dbname $credentials"  );

   if(!$db) {
      echo "Error : Unable to open database\n";
   } else {
      echo "Opened database successfully\n";
   }
?>
</h1>
<h1>
   <?php    
   $cat = $_GET["category"]
   echo $cat
   ?>
   </h1>
</body>
</html>