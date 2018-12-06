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
   } else {
      echo "Opened database successfully\n";
   }
?>
      </h1>

      <h1>
         <?php echo $_GET["category"];?>
      </h1>
      
       <h1>
       <?php


   $results = pg_query($db, "SELECT charity_name, phone_number, assets, income, expenses, charity_tag, charity.charity_id FROM charity INNER JOIN financial ON financial.charity_id = charity.charity_id WHERE category_name = 'Environment'");
if (!$result) {
  echo "NOOOOOO.\n";
  exit;
}

$row = pg_fetch_result($result);
echo $row[0];

// while ($row = pg_fetch_row($result)) {
//   echo "charity name =  $row[0] ";
//   echo "<br />\n";
// }
 
?>
</h1>
<h1>

       <?php


$result = pg_query($db, "SELECT charity_tag FROM charity WHERE charity_id = 1");
if (!$result) {
  echo "An error occurred.\n";
  exit;
}

while ($row = pg_fetch_row($result)) {
  echo "charity TAG =  $row[0] ";
  echo "<br />\n";
}
 
?>

      </h1>
      </body>
</html>
