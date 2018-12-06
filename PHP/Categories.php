<!doctype html>
<html>
   <body>
      <h1>Did this work?</h1>
      <h1>
<?php
   $host        = "host = ec2-23-23-110-26.compute-1.amazonaws.com";
   $port        = "port = 5432";
   $dbname      = "dbname = d3scuneimo0uco";
   $credentials = "user = crizzbzbapugiv password=c31154c5b8b6fc32b6499b57032a8a9242e1419fc0b785d6bd94dca146dafb52";

   $db = pg_connect( "$host $port $dbname $credentials"  );
   if(!$db) {
      echo "Error : Unable to open database\n";
   } 
   
   $catagory = $_GET['category'];
   $query = sprintf("SELECT charity_name, phone_number, assets, income, expenses, charity_tag, charity.charity_id FROM charity INNER JOIN financial ON financial.charity_id = charity.charity_id WHERE category_name = '%s'", pg_escape_string($catagory));

   $result = pg_query($db, $query);
// this will give you in the order of name, phone, assets, income, expenses, tag, charity_id

$row = pg_fetch_row($results);
echo $row[0];


      ?>
      </h1>


      </h1>
      
      </body>
</html>
