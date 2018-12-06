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
   
   $catagory = "Health";
// this makes it specific to the value from the form
   $query = sprintf("SELECT charity_name, phone_number, assets, income, expenses, charity_tag, charity.charity_id FROM charity INNER JOIN financial ON financial.charity_id = charity.charity_id WHERE category_name = '%s'", pg_escape_string($catagory));

   $result = pg_query($db, $query);
// this will give you in the order of name, phone, assets, income, expenses, tag, charity_id
   $a = array();
   while($row = pg_fetch_row($results))
   {
      // this is where you can fill in the array,
      array_push($a, $row[0]);
      echo $row[0];
      echo ",";
   }

echo a[0];
echo a[1];
echo a[2];

 $php_data1=array(
                  array("Charity Name",$a[0]),
                  array("Phone Number",$a[1]),
                  array("Assets",$a[2]),
                  array("Income",$a[3]),
                  array("Expenses",$a[4])            
            );
            
            $php_name1=$a[0];
            $php_description1=$a[5];
            echo $php_name1;
            
            $php_data2=array(
                  array("Charity Name",$a[7]),
                  array("Phone Number",$a[8]),
                  array("Assets",$a[9]),
                  array("Income",$a[10]),
                  array("Expenses",$a[11])           
            );
            
            $php_name2=$a[7];
            $php_description2=$a[12];
            echo " next ";
                        echo $php_name2;
            
            $php_data3=array(
                  array("Charity Name",$a[14]),
                  array("Phone Number",$a[15]),
                  array("Assets",$a[16]),
                  array("Income",$a[17]),
                  array("Expenses",$a[18])           
            );
            
            $php_name3=$a[14];
            $php_description3=$a[19];
            
            $php_data4=array(
                  array("Charity Name",$a[21]),
                  array("Phone Number",$a[22]),
                  array("Assets",$a[23]),
                  array("Income",$a[24]),
                  array("Expenses",$a[25])           
            );
            
            $php_name4=$a[21];
            $php_description4=$a[26];
            
            $php_data5=array(
                  array("Charity Name",$a[28]),
                  array("Phone Number",$a[29]),
                  array("Assets",$a[30]),
                  array("Income",$aa[31]),
                  array("Expenses",$a[32])           
            );
            
            $php_name5=$a[28];
            $php_description5=$a[33];
            $php_data6=array(
                  array("Charity Name",$a[35]),
                  array("Phone Number",$a[36]),
                  array("Assets",$a[37]),
                  array("Income",$a[38]),
                  array("Expenses",$a[39])           
            );
            
            $php_name6=$a[35];
            $php_description6=$a[40];
            $php_data7=array(
                  array("Charity Name",$a[42]),
                  array("Phone Number",$a[43]),
                  array("Assets",$a[44]),
                  array("Income",$a[45]),
                  array("Expenses",$a[46])           
            );
            
            $php_name7=$a[42];
            $php_description7=$a[47];
            $php_data8=array(
                  array("Charity Name",$a[49]),
                  array("Phone Number",$a[50]),
                  array("Assets",$a[51]),
                  array("Income",$a[52]),
                  array("Expenses",$a[53])           
            );
            
            $php_name8=$a[49];
            $php_description8=$a[54];
            $php_data9=array(
                  array("Charity Name",$a[56]),
                  array("Phone Number",$a[57]),
                  array("Assets",$a[58]),
                  array("Income",$a[59]),
                  array("Expenses",$a[60])           
            );
            
            $php_name9=$a[56];
            $php_description9=$a[61];
            $php_data10=array(
                  array("Charity Name",$a[63]),
                  array("Phone Number",$a[64]),
                  array("Assets",$a[65]),
                  array("Income",$a[66]),
                  array("Expenses",$a[67])           
            );
            
            $php_name10=$a[63];
            $php_description10=$a[68];

      ?>
      </h1>


      </h1>
      </body>
</html>
