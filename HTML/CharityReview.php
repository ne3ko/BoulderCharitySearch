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
	@import url('https://fonts.googleapis.com/css?family=Brawler|Lato:700')
	h1 { font-family: 'Lato', sans-serif; }
    img
    {
      .logo 
      {
      max-height: 240px;
      margin: 1em 5%;
      background-repeat: no-repeat; 
      background-size: cover; 
      border-radius: 8px;
    }
  }
  .btn{
    background-color: #7d7b27 !important;
    color: #faece1 !important;
    font-family: 'Brawler', serif !important;
  }

    body{
        background-color: #faece1 !important;
		font-family: 'Brawler', serif;
      }
	#summary { border-top: solid black 1px; padding-top: 2em; margin-right: 10%; margin-left: 10%; } 

    </style>

    <title>Charity review - Boulder Charity Search</title>
  </head>
  <body>

    <div class="header">
      <a href="Home.html"><img src="https://raw.githubusercontent.com/ne3ko/BoulderCharitySearch/master/Logo/BCSLogo1%20(Backgroundless).png" alt="BCS Logo"></a>
    </div>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-default"> 
      <div class="container">
        <ul class="nav navbar-nav">
          <li><a href="Home.html">Home</a></li>
          <li><a href="Categories.html">Categories</a></li>
          <li><a href="AboutUs.html">About Us</a></li>
          <li><a href="ContactUs.html">Contact Us</a></li>
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
   if(!$db) {
      echo "Error : Unable to open database\n";
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
          <img src = '<?php $result = pg_query($db, "SELECT logo FROM charity WHERE charity_id = 1");
if (!$result) {
  echo "/";
  exit;
}

while ($row = pg_fetch_row($result)) {
  echo "$row[0]";

}?>' style='margin: 80px;max-height:250px; max-width:250px;'>
        </div>

        <div class = "col-sm-4">
          <h1 style = "margin-top:100px;"><?php
          $result = pg_query($db, "SELECT charity_name FROM charity WHERE charity_id = 1");
           if (!$result) {
            echo "An error occurred.\n";
            exit;
            }

            while ($row = pg_fetch_row($result)) {
            echo "$row[0]";
            }
          ?></h1>
        </div>
      </div>
    </div>

    <div class = "container">
      <div class = "row">
        <!-- this is for the link to the charity and the financal break down link -->
        <!-- there is no test case -->
        <div class = "col-sm-4">
          <button type = "button" class = "btn">
            <a href = '<?php 

$result = pg_query($db, "SELECT url FROM charity WHERE charity_id = 1");
if (!$result) {
  echo "An error occurred.\n";
  exit;
}

while ($row = pg_fetch_row($result)) {
  echo "$row[0]";
}
             ?>'> Link to Charity Webpage </a>
           </button>
        </div>

        <div class = "col-sm-4">
            <!-- there is no test case -->
            <button type = "button" class = "btn">
            <a href = '<?php 

$result = pg_query($db, "SELECT irs_form FROM financial WHERE charity_id = 1");
if (!$result) {
  echo "/";
  exit;
}

while ($row = pg_fetch_row($result)) {
  echo "$row[0]";
}
             ?>'> Link to Charity IRS Form </a>
           </button>
        </div>

      </div>
    </div>

    <h1 style = "margin-left:20%;">
      Charity Summary
    </h1>

    <div id="summary">
      <!-- pull from the summary in the table -->     
            <div>
            <?php
          $result = pg_query($db, "SELECT charity_description FROM charity WHERE charity_id = 1");
           if (!$result) {
            echo "An error occurred.\n";
            exit;
            }

            while ($row = pg_fetch_row($result)) {
            echo "$row[0]";
            echo "<br />\n";
            }
          ?>
    </div>
    </div>

    <h1 style = "margin-left:10%;">
      Financial Summary
    </h1>

    <div id="summary">
          <div style = "margin-left:20%">  <?php
          $result = pg_query($db, "SELECT charity_description FROM charity WHERE charity_id = 1");
           if (!$result) {
            echo "An error occurred.\n";
            exit;
            }

            while ($row = pg_fetch_row($result)) {
            echo "$row[0]";
            echo "<br />\n";
            }
          ?>
            
          </div>
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
