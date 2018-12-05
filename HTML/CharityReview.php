<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- About Us Stylesheet -->
    <link rel="stylesheet" href="AboutUs.css">
    <link rel="stylesheet" href="Header.css">
    <style>
    img
    {
      .logo 
      {
      max-height: 240px;
      max-width: 240px;
      margin: 1em 5%;
      background-repeat: no-repeat; 
      background-size: cover; 
      border-radius: 8px;
    }
  }

    body{
        background-color: #faece1 !important;
      }

    </style>

    <title>Charity review - Boulder Charity Search</title>
  </head>
  <body>

    <!-- Header -->
    <!-- Header -->
    <div class="header">
      <a href="Home.html"><img src="https://raw.githubusercontent.com/ne3ko/BoulderCharitySearch/master/Logo/BCSLogo1%20(Backgroundless).png" alt="BCS Logo"></a>
    </div>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-default"> 
      <div class="container">
        <ul class="nav navbar-nav">
          <li><a href="#">Home</a></li>
          <li><a href="#">About Us</a></li>
          <li><a href="#">Categories</a></li>
        </ul>
      </div>
    </nav>
    
<h1>


<?php
   $host        = "host = ec2-23-23-110-26.compute-1.amazonaws.com";
   $port        = "port = 5432";
   $dbname      = "dbname = d3scuneimo0uco";
   $credentials = "user = crizzbzbapugiv password=c31154c5b8b6fc32b6499b57032a8a9242e1419fc0b785d6bd94dca146dafb52";

   $db = pg_connect( "$host $port $dbname $credentials"  );
   $query = "SELECT logo from charity WHERE charityid = 1";
   if(!$db) {
      echo "Error : Unable to open database\n";
   } else {
      echo "Opened database successfully\n";
   }
   
?>
</h1>

    <div class = "container">
      <!-- this will be logo and charity name -->
      <!-- going to use boot strap to keep the image in line with the charity name -->
      <div class = "row">

        <div class = "col-sm-4" >
          <!-- Will have a php command to fetch image url -->
          <!-- this query is mostly a guess so far for how to match to a forms data for the id -->
          <img src = '<?php echo pg_query($db, $query) ?>' style='margin: 80px;max-height:450px; max-width:450px;'>
        </div>

        <div class = "col-sm-4">
          <h1><?php echo pg_fetch_row(pg_query($db, "SELECT charity_name from charity WHERE charity_id = 1")); ?></h1>
        </div>
      </div>
    </div>

    <div class = "container">
      <div class = "row">
        <!-- this is for the link to the charity and the financal break down link -->
        <!-- there is no test case -->
        <div class = "col-sm-4">
          
            <a href = '<?php echo pg_query($db, "SELECT url from charity WHERE charity_id = 1"); ?>'> Link to Charity Webpage </a>
        </div>

        <div class = "col-sm-4">
            <!-- there is no test case -->
            <a href = '<?php echo pg_query($db, "SELECT finance from charity WHERE charityid = 1"); ?>'> Link to Charity IRS Form </a>
        </div>

      </div>
    </div>

    <h1 style = "margin-left:20%;">
      Charity Summary
    </h1>

    <div>
      <!-- pull from the summary in the table -->     
            <div><?php echo pg_query($db, "SELECT charity_description from charity WHERE charityid = $id"); ?></div>
    </div>

    <h1 style = "margin-left:20%;">
      Financial Summary
    </h1>

    <div>
          <div>  <?php echo  pg_query($db, "SELECT charity_tag from charity WHERE charityid = $id"); ?></div>
    </div>

    <div>
    </div>


    <footer>
      <div class="footer_text">
      <a href="ContactUs.html"><p>Contact Us<p></a>
      <p>Company © BCS. All rights reserved.</p>
      </div>
    </footer>
    
  </body>
</html>