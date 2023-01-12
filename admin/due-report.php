<?php
/*

file name           : due-report.php
database connection : buspassdatabase
table               : student
purpose             :
             The functionality of this page is to generate report based on a payment due
			 
			 there are two functionalities
			 
			 1) print generated report 
			 
			 2) generate excel sheet with the generated report 
	 


*/

?>


<!doctype html>
<html lang=''>
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="icon" type="image/png" href="favicon.ico">
	
<title>Logistics Mgt. | Stud Due Reports</title>
 
  
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Poppins:300,400,500,700" rel="stylesheet">


  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">

    <style>
    #buttons{
	margin-top: 18px;
	overflow: hidden;
}
#blah{
  max-width:180px;
}
input[type=file]{
padding:10px;
}
#buttons :first-child{
	float:right;
}
#buttons:nth-child(2){
margin-right:15px;
float:right;
padding:30px 25px;
	
}
input
{
		border-radius: 4px;
}
input[type=text]{	
	border:thin solid black;
	height:30px;
	width:200px;
}
input[type=numeric]{	
	border:thin solid black;
	height:30px;
	width:100px;
}
input[type=date]{	
	border:thin solid black;
}
textarea{
	border:thin solid black;
}



tr:nth-child(odd){background: rgba(17,110,176,0.2);}
  td{font-size:14px;}


#pagination a{
	 border:1px solid black;
	 border-radius:10px;
	 color:white;
	 padding:5px;
	 background-color:#116eb0 !important;
	 text-decoration: none;
 }
 
#hidden_div{display: none;}


.wordbreak{
	
  word-wrap: break-word;
  word-break: break-all;
}


    </style>
    </head>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   
 
<body>

<?php include("nav.php");?>

        

  <div class="limiter" style="padding: 25px 50px; ">
<p style="color:#116EB0;font-size:14px; "><a href="adminhome.php">Home > </a>Generate > Student Reports ><a href="due-report.php"> Due Report</a></p><br>
	
  
  <!--form starts -->
  <form class="form-inline" action="#" method="get"  style="margin:0px 0 0 100px;">  
     

 <!-- script starts for date picker -->
	 <script>
  $( function() {
    $( "#datepicker" ).datepicker({dateFormat: 'yy-mm-dd'});  //gives the starting date
  } ); 
 
   $( function() {
    $( "#datepicker1" ).datepicker({dateFormat: 'yy-mm-dd'});  //gives the ending date
  } );
  </script>
  
  <!-- script ends -->

    <b>Start Date</b>&nbsp;&nbsp; <input type="text" name="datepicker" id="datepicker"> &nbsp;&nbsp; 
    <b>End Date</b> &nbsp;&nbsp;<input type="text" name="datepicker1" id="datepicker1" >&nbsp;&nbsp;
  
  
  &nbsp;&nbsp;&nbsp;&nbsp;
   <input type="hidden" value="1" name="page">
   <input type="submit" value="Go" style="border:1px solid #116EB0;width:50px;	
height:30px;color:white;background-color: #116eb0;">
  
  </form>
  <br/>
  <!-- form ends -->
  
  
  <!-- script for testing form values
  -->
   
    <!-- populate table from mysql database -->
	
<?php 
include("init.php");
 $dt1 ="";
 $dt2 ="";
 $number_of_results="";
//  echo $_GET['date1'];

  /* if executes when details are submitted */

  if(isset($_GET['page']) )
  {
	if($_GET['datepicker'] != "" && !isset($_GET['page']))  
	{
		$dt1 = $_GET['datepicker']." 00:00:00";  // for getting value from form on submit
        $dt2 = $_GET['datepicker1']." 00:00:00"; // for getting value from form on submit
	}
   else	
	   {
		$dt1 = $_GET['datepicker'];   // for getting value from link for pagination
        $dt2 = $_GET['datepicker1'];  // for getting value from link for pagination
	   }
	// echo $dt1;echo $dt2;echo $_GET['branch']; 
	
	/* queries starts for determining number of rows */
	
	if($dt1 != ""){ 
   // echo $dt1." ".$dt2;
   
      /* when date is picked */
       $query = "SELECT Receipt_Number,HallticketNumber,Name,Route_no,Boarding_point,Course,Department_Name,Year,Total,Due,Verifiedby,Remarks FROM student where Date_of_Payment BETWEEN '$dt1' AND '".date('Y-m-d',strtotime('+1 day', strtotime($dt2)))."' AND Due > 0 ORDER BY Date_of_Payment DESC";
	   $search_result = mysqli_query($conn, $query);
	}
	else
	 /* when date is not picked and branch other than pharmacy is picked  */	

	  {
		  $query = "SELECT Receipt_Number,HallticketNumber,Name,Route_no,Boarding_point,Course,Department_Name,Year,Total,Due,Verifiedby,Remarks FROM student where Due > 0 ORDER BY Date_of_Payment DESC";
		  $search_result = mysqli_query($conn, $query);
	  }
	 
     /* queries ends  */	
	
	
	 $number_of_results=mysqli_num_rows($search_result);  // calculating number of rows for pagination 
	 
	 
	/* if starts for checking number of rows and based on the result table is displayed */ 
	 if ($number_of_results>0){
		$results_per_page = 25;   //results per page.
    $number_of_pages = ceil($number_of_results/$results_per_page);  //rounds of to nearest number
	
	 
     if (!isset($_GET['page']))
       {
        $page = 1;   // for initializing pagination
        $count = 0;  // serial number of table in first page 
       }  
     else
		{
			$count = ($_GET['page'] -1)*$results_per_page;  // for serial number in tables
		}


	//echo $dt1;	
	if(isset($_GET['page']))
		 $page = $_GET['page']; // to get page number for url
	 
	 $this_page_first_result = ($page-1)*$results_per_page; // starting row in table to be used in query for limit function 
	 
	 
	/*  queries to be executed for pagination using limit */ 
		 if($dt1 != ""){ 
    //echo $dt1." ".$dt2;
	
	   /* when date is picked */
	
	   $st1 = "SELECT * FROM student where Date_of_Payment BETWEEN '".$dt1."' AND '".date('Y-m-d',strtotime('+1 day', strtotime($dt2)))."' AND  Due > 0 ORDER BY Date_of_Payment DESC LIMIT ".$this_page_first_result.",".$results_per_page ;
	   $search_result1 = mysqli_query($conn, $st1);

	}
	else
		
	  /* when date is not picked and branch other than pharmacy is picked  */
	
	 	{
	  $st1 = "SELECT * FROM student where Due > 0 ORDER BY Date_of_Payment DESC LIMIT ".$this_page_first_result.",".$results_per_page ;
	  $search_result1 = mysqli_query($conn,$st1 );
	 // echo $st1;
	  }	 
		 
   ?> 
   
   	 
	<!--- this div is used to print and save the data in excel
	div start
	
	this table will not be displayed on browser
	--> 
	 
    <div id="printdiv">
      <div id="hidden_div">
	

             <table id="team-list" class="table " style="text-align:center;border:1px solid black;margin-top:10px;width:100%;

			 table #team-list {counter-reset: rowNumber !important;}
			 table#team-list tr:nth-child(n+2) {counter-increment: rowNumber!important;}
			 table#team-list tr:nth-child(n) td:first-child::before {content: counter(rowNumber ) !important;
			 min-width: 1em;margin-right: 0.5em;}
             tr:nth-child(odd){background: rgba(17,110,176,0.2)} !important;"  
			 width="90vw">
        <caption>Total Student Registrations Based on Route</caption>
		  <tr style=" background: rgba(17,110,176,0.9);color:white;">
		     <th>#</th>
			<th>Receipt</th>
			<th>Hallticket</th>
			<th> Name </th>
			<th> Route</th>
			<th>Boarding point</th>
			<th> Course </th>
			<th> Branch </th>
			<th> Year </th>
			<th> Total </th>
			<th> Due </th>
			<th>Verified</th>
        </tr> 
  
  <?php
   while($row = mysqli_fetch_array($search_result)){?>
    <tr>
	     <td></td>
		<td><?php echo $row['Receipt_Number'];?></td>
    	<td><?php echo $row['HallticketNumber'];?></td>
		<td class="wordbreak"><?php echo $row['Name'];?></td>
		<td><?php echo $row['Route_no'];?></td>
		<td class="wordbreak"><?php echo $row['Boarding_point'];?></td>
		<td><?php echo $row['Course'];?></td>
		<td><?php echo $row['Department_Name'];?></td>
		<td><?php echo $row['Year'];?></td>
		<td><?php echo $row['Total'];?></td>
		<td><?php echo $row['Due'];?></td>
		<td><?php echo $row['Verifiedby'];?></td>
    </tr>
  <?php } ?>

   </table>
    </div>
</div>
   
   <!--div end-->
   
   
   
   <!-- table that is displayed on the browser -->
   
   
   <p style="color:#116EB0">Latest on Top</p>
      <table  class="table " style="text-align:center;border:1px solid black;margin-top:10px;"  width="80vw">
         <tr style=" background: rgba(17,110,176,0.9);color:white;">
		     <th>#</th>
			<th>Receipt</th>
			<th>Hallticket</th>
			<th> Name </th>
			<th> Route</th>
			<th>Boarding point</th>
			<th> Course </th>
			<th> Branch </th>
			<th> Year </th>
			<th> Total </th>
			<th> Due </th>
			<th>Verified</th>
        </tr> 
  
  <?php
   while($row = mysqli_fetch_array($search_result1)){?>
    <tr>
	    <td><?php $count = $count + 1; echo $count;?></td>
		<td><?php echo $row['Receipt_Number'];?></td>
    	<td><?php echo $row['HallticketNumber'];?></td>
		<td><?php echo chunk_split($row['Name'], 25, " ");?></td>
		<td><?php echo $row['Route_no'];?></td>
		<td><?php echo chunk_split($row['Boarding_point'],20," ");?></td>
		<td><?php echo $row['Course'];?></td>
		<td><?php echo $row['Department_Name'];?></td>
		<td><?php echo $row['Year'];?></td>
		<td><?php echo $row['Total'];?></td>
		<td><?php echo $row['Due'];?></td>
		<td><?php echo $row['Verifiedby'];?></td>
    </tr>
  <?php } ?>
  
 
  <?php 
 
  }
  else{
	  ?>
	  <h6>No Data Found.</h6>
	 
	  <?php
  }  
  /*  if for checking rows ended  */
  
  
  ?>
  
<?php
  }
  
?>

   </table>
   
   
   
   <!--  pagination starts  -->
   
   <?php if ($number_of_results>0){?>
<div id="pagination" style="text-align:center;margin-top:0px;">

<!-- anchor tag which takes to first page in pagination  -->

<a href="<?php $page = 1;  echo basename($_SERVER['PHP_SELF']).'?page=' . $page . '&datepicker='.$dt1.'&datepicker1='.$dt2.' ';?>" style="text-decoration: none;color:white !important;<?php if ($_GET['page'] == 1 || $number_of_pages == 1){ echo 'pointer-events:none;background-color:rgba(17,110,176,0.5) !important;';} else{ echo 'background-color:#116eb0 !important;'; }?> " ><<</a>


<!-- anchor tag which takes to previous page in pagination  -->

  <a href="<?php $page = $_GET['page'] -1;  echo basename($_SERVER['PHP_SELF']).'?page=' . $page . '&datepicker='.$dt1.'&datepicker1='.$dt2.' ';?>" style="text-decoration: none;color:white !important;<?php if ($_GET['page'] == 1 || $number_of_pages == 1){ echo 'pointer-events:none;background-color:rgba(17,110,176,0.5) !important;';} else{ echo 'background-color:#116eb0 !important;'; }?> " ><</a>
  
  
 
  <?php
  
  /*  pagination of all the pages  */
  
  if($number_of_pages < 12 ){
  
for ($page=1;$page<=$number_of_pages && $page <12;$page++) { ?> 
&nbsp; <a href="<?php echo basename($_SERVER['PHP_SELF']).'?page=' . $page . '&datepicker='.$dt1.'&datepicker1='.$dt2.'';?>" style="text-decoration: none;<?php if(isset($_GET['page'])){ if ($page != $_GET['page']) echo 'background-color:#116eb0 !important;color:white !important;'; else echo 'background-color:white !important;color:#116eb0 !important;'; }?>"><?php echo $page ; ?></a> 
    

  <?php } }
  else{
if($number_of_pages < $_GET['page']+5)	 // condition to print 11 page numbers from the end  
	$pages = $number_of_pages - 10;  
 else
    if($_GET['page']-5<1)	   // condition to print 11 page numbers from the start
	$pages = 1;  	
 else
	$pages =  $_GET['page'] -5;  // when page number is above 5 and below 5 form last

for ($page=$pages;$page <= $number_of_pages && $page<= $pages + 10;$page++) { ?> 

 <!-- basename is for getting the name of thee file -->
  &nbsp; <a href="<?php echo basename($_SERVER['PHP_SELF']).'?page=' . $page . '&datepicker='.$dt1.'&datepicker1='.$dt2.'';?>" style="text-decoration: none;<?php if(isset($_GET['page'])){ if ($page != $_GET['page']) echo 'background-color:#116eb0 !important;color:white !important;'; else echo 'background-color:white !important;color:#116eb0 !important;'; }?>"><?php echo $page;  ?></a>
  <?php 
  }}
  ?>  

  <!-- anchor tag which takes to next page in pagination  -->
  
	 <a href="<?php $page = $_GET['page'] + 1; echo basename($_SERVER['PHP_SELF']).'?page=' . $page . '&datepicker='.$dt1.'&datepicker1='.$dt2.'';?>" style="margin-left:10px;text-decoration: none;color:white !important;<?php if ($_GET['page'] == $number_of_pages || $number_of_pages == 1) {echo 'pointer-events:none;background-color:rgba(17,110,176,0.5) !important;'; }else{ echo 'background-color:#116eb0 !important;' ; }?>">></a>   
 
 
  <!-- anchor tag which takes to last page in pagination  -->
 
 <a href="<?php $page = $number_of_pages; echo basename($_SERVER['PHP_SELF']).'?page=' . $page . '&datepicker='.$dt1.'&datepicker1='.$dt2.'';?>" style="margin-left:10px;text-decoration: none;color:white !important;<?php if ($_GET['page'] == $number_of_pages || $number_of_pages == 1) {echo 'pointer-events:none;background-color:rgba(17,110,176,0.5) !important;'; }else{ echo 'background-color:#116eb0 !important;' ; }?>">>></a>
 
 </div>

   <?php 
   }
   /*  pagination ends */
   
   
   if ($number_of_results>0){ ?>
<div style="text-align:center;margin-top:15px;display:inline; " >

<!--  button for printing table data  -->



<!--  button for excel export  -->
<form action="export_excel.php" style="margin-top:35px;" class="form-inline justify-content-center"  method="post">
 
 <input type="button" style="border:1px solid #116EB0;width:50px;border-radius:4px;	
  height:35px;color:white;background-color: #116eb0;"  onclick="printContent();" value="Print" />	
  <input type="hidden" value = "<?php echo $query;?>" name="query1" >
									
  <input type="submit" style="border:1px solid #116EB0;width:120px;border-radius:4px;	
height:35px;color:white;background-color: #116eb0;margin-left:20px;"  id="export" value = "Excel Report" >

<form>

</div>


</div>
   
	<?php include('footer.php');  // footer page  
	} 
  else {?>
	  	 <div style="position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;">
	<?php include('footer.php');?>
  </div>
	<?php
}
 ?>  
  
  <!-- script for printing table data -->
  
 <script>
	function printContent() {    
	  var content = document.getElementById('printdiv').innerHTML;
    var mywindow = window.open('', 'Print', 'height=600,width=800');

    mywindow.document.write('<html><head><title>Print</title>');
    mywindow.document.write('<style>margin:0;padding:0;width:95%;font-size:10px;;table #team-list {counter-reset: rowNumber !important;}table#team-list tr:nth-child(n+2) {counter-increment: rowNumber!important;}	 table#team-list tr:nth-child(n) td:first-child::before {content: counter(rowNumber ) !important; min-width: 1em;margin-right: 0.5em;}tr:nth-child(odd){background: rgba(17,110,176,0.2)} !important;" </style></head><body >');
    mywindow.document.write(content);
    mywindow.document.write('</body></html>');

    mywindow.document.close();
    mywindow.focus()
    mywindow.print();
    mywindow.close();
    return true;
                }
  </script>


</body>
</html>