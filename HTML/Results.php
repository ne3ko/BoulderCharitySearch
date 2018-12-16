<!--Richard Moon-->

<!doctype html>

<html lang="en">
	<head>
	
	  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	
		
		
		    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	


		<link rel="stylesheet" href="Results.css">	
		
		<link rel="stylesheet" href="Header.css">
				

		<?php
   $host        = "host = ec2-23-23-110-26.compute-1.amazonaws.com";
   $port        = "port = 5432";
   $dbname      = "dbname = d3scuneimo0uco";
   $credentials = "user = crizzbzbapugiv password=c31154c5b8b6fc32b6499b57032a8a9242e1419fc0b785d6bd94dca146dafb52";
   $db = pg_connect( "$host $port $dbname $credentials"  );
   if(!$db) {
      echo "Error : Unable to open database\n";
   } 
   
// this makes it specific to the value from the form
   $catagory = $_GET['category'];
   $query = sprintf("SELECT charity_name, phone_number, assets, income, expenses, charity_tag, charity.charity_id FROM charity INNER JOIN financial ON financial.charity_id = charity.charity_id WHERE category_name = '%s'", pg_escape_string($catagory));
   $result = pg_query($db, $query);
// this will give you in the order of name, phone, assets, income, expenses, tag, charity_id

 
	$a=pg_fetch_all($result);
	
   
            $php_data1=array(
                  array("Charity Name",$a[0].[0]),
                  array("Phone Number",$a[0].[1]),
                  array("Assets",$a[0].[2]),
                  array("Income",$a[0].[3]),
                  array("Expenses",$a[0].[4])            
            );
            
            $php_name1=implode($catagory);
            $php_description1=$a[0].[5];
            
            
            $php_data2=array(
                  array("Charity Name",($a[1][0])),
                  array("Phone Number",$a[1][1]),
                  array("Assets",$a[1][2]),
                  array("Income",$a[1][3]),
                  array("Expenses",$a[1][4])           
            );
            
			    $php_name2=$a[1].[7];
				$php_description2=$a[1].[5];
            
            $php_data3=array(
                  array("Charity Name",$a[2].['charity_name']),
                  array("Phone Number",$a[2].['phone_number']),
                  array("Assets",$a[2].['assets']),
                  array("Income",$a[2].['income']),
                  array("Expenses",$a[2].['expenses'])           
            );
           $php_name3=implode($a[2]['charity_name']);
            $php_description3=$a[2].['charity_tag'];
            
            
            $php_data4=array(
                  array("Charity Name",$a[10].[21]),
                  array("Phone Number",$a[10].[22]),
                  array("Assets",$a[10].[23]),
                  array("Income",$a[10].[24]),
                  array("Expenses",$a[10].[25])           
            );
            
            $php_name4=$a[10].[21];
            $php_description4=$a[10].[26];
            
            $php_data5=array(
                  array("Charity Name",$a[10].[28]),
                  array("Phone Number",$a[10].[29]),
                  array("Assets",$a[10].[30]),
                  array("Income",$a[10].[31]),
                  array("Expenses",$a[10].[32])           
            );
            
            $php_name5=$a[10].[28];
            $php_description5=$a[10].[33];
            $php_data6=array(
                  array("Charity Name",$a[10].[35]),
                  array("Phone Number",$a[10].[36]),
                  array("Assets",$a[10].[37]),
                  array("Income",$a[10].[38]),
                  array("Expenses",$a[10].[39])           
            );
            
            $php_name6=$a[10].[35];
            $php_description6=$a[10].[40];
            $php_data7=array(
                  array("Charity Name",$a[10].[42]),
                  array("Phone Number",$a[10].[43]),
                  array("Assets",$a[10].[44]),
                  array("Income",$a[10].[45]),
                  array("Expenses",$a[10].[46])           
            );
            
            $php_name7=$a[10].[42];
            $php_description7=$a[10].[47];
            $php_data8=array(
                  array("Charity Name",$a[10].[49]),
                  array("Phone Number",$a[10].[50]),
                  array("Assets",$a[10].[51]),
                  array("Income",$a[10].[52]),
                  array("Expenses",$a[10].[53])           
            );
            
            $php_name8=$a[10].[49];
            $php_description8=$a[10].[54];
            $php_data9=array(
                  array("Charity Name",$a[10].[56]),
                  array("Phone Number",$a[10].[57]),
                  array("Assets",$a[10].[58]),
                  array("Income",$a[10].[59]),
                  array("Expenses",$a[10].[60])           
            );
            
            $php_name9=$a[10].[56];
            $php_description9=$a[10].[61];
      ?>
		
		<script type="text/javascript">
		<!-- initialization-->
			var page=+1;
			var data=[];
			var name1="";
			var data1=[];
			var desc1="";
			
			var name2="";
			var data2=[];
			var desc2="";
			
			var name3="";
			var data3=[];
			var desc3="";
			
			var name4="";
			var data4=[];
			var desc4="";
			
			var name5="";
			var data5=[];
			var desc5="";
			
			var name6="";
			var data6=[];
			var desc6="";
			
			var name7="";
			var data7=[];
			var desc7="";
			
			var name8="";
			var data8=[];
			var desc8="";
			
			var name9="";
			var data9=[];
			var desc9="";
			
			var name10="";
			var data10=[];
			var desc10="";
		
		<!--	var catagory=-->
		
		
		<!-- table hover-->
		
			$(document).ready(function(){
				
				makePage();
			
				
				$("#item1").hover(function() {
	
				$("table").show(20);	
				}, function() {                   
				$("table").hide(50);
				});
			
				$("#item2").hover(function(){
					$("table").show(20);
				}, function() {                   
				$("table").hide(50);
				});
			
				$("#item3").hover(function(){
					$("table").show(20);
				}, function() {                   
				$("table").hide(50);
				});
				
				
				$("#item4").hover(function(){
					$("table").show(20);
				}, function() {                   
				$("table").hide(50);
				});
			
				$("#item5").hover(function(){
					$("table").show(20);
				}, function() {                   
				$("table").hide(50);
				});
		
				$("#item6").hover(function(){
					$("table").show(20);
					}, function() {                   
					$("table").hide(50);
				});
		
				$("#item7").hover(function(){
					$("table").show(20);
					}, function() {                   
					$("table").hide(50);
				});
				
				$("#item8").hover(function(){
					$("table").show(20);
					}, function() {                   
					$("table").hide(50);
				});
			
				$("#item9").hover(function(){
					$("table").show(20);
					}, function() {                   
					$("table").hide(50);
			
			});
				$("#item10").hover(function(){
					$("table").show(20);
					}, function() {                   
					$("table").hide(50);
					});
				});	
				
			<!--makes new table when you hover, populate info-->
	
			function myF1() {
				data=data1;
				
				var testTable = makeTable($(document.getElementById("table")), data);
			}
			function myF2() {
				data=data2;
				
				var testTable = makeTable($(document.getElementById("table")), data);
			}
			function myF3() {
				data=data3;
				
				var testTable = makeTable($(document.getElementById("table")), data);
			}
			function myF4() {
				data=data4;
				
				var testTable = makeTable($(document.getElementById("table")), data);
			}
			function myF5() {
				data=data5;
				
				var testTable = makeTable($(document.getElementById("table")), data);
			}
			function myF6() {
				data=data6;
				
				var testTable = makeTable($(document.getElementById("table")), data);
			}
			function myF7() {
				data=data7;
				
				var testTable = makeTable($(document.getElementById("table")), data);
			}
			function myF8() {
				data=data8;
				
				var testTable = makeTable($(document.getElementById("table")), data);
			}
			function myF9() {
				data=data9;
				
				var testTable = makeTable($(document.getElementById("table")), data);
			}
			function myF10() {
			
			}
		
		
		function makeTable(container, data) {
				container.empty();
					var table = $("<table/>").addClass('popTable');
					$.each(data, function(rowIndex, r) {
				var row = $("<tr/>");
				$.each(r, function(colIndex, c) { 
					row.append($("<t"+(rowIndex == 0 ?  "h" : "d")+"/>").text(c));
				});
				table.append(row);
			});
			return container.append(table);
		}
		function getTableData(table) {
			var data = [];
			table.find('tr').each(function (rowIndex, r) {
				var cols = [];
				$(this).find('th,td').each(function (colIndex, c) {
					cols.push(c.textContent);
				});
				data.push(cols);
			});
			return data;
		}
		
		function previous(){
			if(page==1){
			alert("Please stop trying to go to search page 0");
			}else{
				page=page-1;
				makePage();
			}
		}
		function next(){
		page=page+1;
		makePage();
		
				}
		
<!-- this is the function we php-->		
		function makePage(){
	
				name1=<?php echo json_encode($php_name1); ?>;
				data1=<?php echo json_encode($php_data1); ?>;
				desc1=<?php echo json_encode($php_description1); ?>;
				
				document.getElementById("title1").innerHTML=name1;
				document.getElementById("body1").innerHTML=desc1;
				
				
				name2=<?php echo json_encode($php_name2); ?>;
				data2=<?php echo json_encode($php_data2); ?>;
				desc2=<?php echo json_encode($php_description2); ?>;
				
				document.getElementById("title2").innerHTML=name2;
				document.getElementById("body2").innerHTML=desc2;		
				
				
				name3=<?php echo json_encode($php_name3); ?>;
				data3=<?php echo json_encode($php_data3); ?>;
				desc3=<?php echo json_encode($php_description3); ?>;
				
				document.getElementById("title3").innerHTML=name3;
				document.getElementById("body3").innerHTML=desc3;
			
				
				name4=<?php echo json_encode($php_name4); ?>;
				data4=<?php echo json_encode($php_data4); ?>;
				desc4=<?php echo json_encode($php_description4); ?>;
				
				document.getElementById("title4").innerHTML=name4;
				document.getElementById("body4").innerHTML=desc4;
				
				
				name5=<?php echo json_encode($php_name5); ?>;
				data5=<?php echo json_encode($php_data5); ?>;
				desc5=<?php echo json_encode($php_description5); ?>;
				
				document.getElementById("title5").innerHTML=name5;
				document.getElementById("body5").innerHTML=desc5;
				
				
				name6=<?php echo json_encode($php_name6); ?>;
				data6=<?php echo json_encode($php_data6); ?>;
				desc6=<?php echo json_encode($php_description6); ?>;
				
				document.getElementById("title6").innerHTML=name6;
				document.getElementById("body6").innerHTML=desc6;
				
				
				name7=<?php echo json_encode($php_name7); ?>;
				data7=<?php echo json_encode($php_data7); ?>;
				desc7=<?php echo json_encode($php_description7); ?>;
				
				document.getElementById("title7").innerHTML=name7;
				document.getElementById("body7").innerHTML=desc7;
				
				
				name8=<?php echo json_encode($php_name8); ?>;
				data8=<?php echo json_encode($php_data8); ?>;
				desc8=<?php echo json_encode($php_description8); ?>;
				
				document.getElementById("title8").innerHTML=name8;
				document.getElementById("body8").innerHTML=desc8;
				name9=<?php echo json_encode($php_name9); ?>;
				data9=<?php echo json_encode($php_data9); ?>;
				desc9=<?php echo json_encode($php_description9); ?>;
				
				document.getElementById("title9").innerHTML=name9;
				document.getElementById("body9").innerHTML=desc9;
				
				
				document.getElementById("pagesU").innerHTML=page-1;
				document.getElementById("pagebU").innerHTML=page;
				document.getElementById("pagesL").innerHTML=page-1;
				document.getElementById("pagebL").innerHTML=page;
		}
		
		
		function getUserInfo(userObj){
		
		
		}
		</script>
		
		
	<style>
		body{
			background-color:#faece1 !important;
			margin: 20 px;
			padding: 20 px;
			
		}
		button{
			border-color: transparent;
			  background: #BFA959;
		}
		
	</style>
	</head>
	
<body>

    <!-- Header -->
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
	<table id="table" align="right"style="position: fixed;top: 45%;right: 0;width: 40%;float: right;">
				
			</table>
		
			<br/>
			<br/>
			<div>
			<button id="prev" style="width:20%;height:40px;" onclick="previous()">PREV PAGE</button>
			<button id="next" style="width:20%;height:40px;" onclick="next()">NEXT PAGE</button>
			</div>
			<p>Charity Results <span id="pagesU"></span>1 through <span id="pagebU"></span>0</p>
			
			<br/>
			<div id="item1" onmouseover="myF1()" onclick="goThere()">
				<span id="title1" style="width:60%;"> </span> 
			
				<p id="body1" style="width:70%;word-wrap: break-word;";> </p>
			</div>

			<br/>
			<div id="item2" onmouseover="myF2()" onclick="goThere()">
				<span id="title2"> </span>
			
				<p id="body2"> </p>
			</div>
			<br/>
			<div id="item3" onmouseover="myF3()" onclick="goThere()">
				<span id="title3"> </span>
				
				<p id="body3"> </p>
			</div>
			<br/>
			<div id="item4"onmouseover="myF4()" onclick="goThere()">
				<span id="title4"> </span>
				
				<p id="body4"> </p>
		
			</div>
			<br/>
			<div id="item5" onmouseover="myF5()" onclick="goThere()">
				<span id="title5"> </span>
				
				<p id="body5"></p>
			</div>
			<br/>
			<div id="item6" onmouseover="myF6()" onclick="goThere()">
				<span id="title6"> </span>
				
				<p id="body6"> </p>
			</div>
			<br/>
			<div id="item7" onmouseover="myF7()" onclick="goThere()">
				<span id="title7"> </span>
				
				<p id="body7"> </p>
			</div>
			<br/>
			<div id="item8" onmouseover="myF8()" onclick="goThere()">
				<span id="title8"> </span>
				
				<p id="body8"> </p>
			</div>
			<br/>
			<div id="item9" onmouseover="myF9()" onclick="goThere()">
				<span id="title9"> </span>
			
				<p id="body9"> 	</p>
			</div>
			<br/>
			
			<div id="item10" onmouseover="myF10()" onclick="goThere()">
				<span id="title10"> <?php echo $php_name1 ?> </span>
			
				<p id="body10"> 
					<?php echo json_encode($php_name3); ?>
					<?php print_r ($a[2])?>
				</p>
			</div>
		<p>Charity Results <span id="pagesL"></span>1 through <span id="pagebL"></span>0</p>
		<div>
			<button id="prev" style="width:20%;height:40px;" onclick="previous()">PREV PAGE</button>
			<button id="next" style="width:20%;height:40px;" onclick="next()">NEXT PAGE</button>
			</div>
			
						<form action="CharityReview.php" method="get">
						<button  name="charity_id" type="submit" value="1">Link to review page for first charity</button>
					</form>
					<form action="CharityReview.php" method="get">
						<button  name="charity_id" type="submit" value="2">Link to review page for second charity</button>
					</form>
					<form action="CharityReview.php" method="get">
						<button  name="charity_id" type="submit" value="3">Link to review page for third charity</button>
					</form>

			
	<footer>
  		<div class="footer_text">
			<a href="ContactUs.html"><p>Contact Us<p></a>
			<p>Company © BCS. All rights reserved.</p>
		</div>
    </footer>
		</body>
