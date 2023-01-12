
<?php 

/*
file name           : updatestud.php
database connection : buspassdatabase
table               : student
purpose             : 

     The functionality of this page is to update student data
	 
	 enter the hallticket number and change the required data and submit the form.

*/

?>


<?php include("nav.php");?>
<?php
require_once("dbcontroller.php");
$db_handle = new DBController();
$query ="SELECT * FROM route_master";
$results = $db_handle->runQuery($query);
?>
<!doctype html>
<html lang=''>
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
     <title>AGI- Logistic Mgmt | Student Update</title>
 
   <link rel="stylesheet" type="text/css" href="css/main.css">
   <script src="jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
	<script>
	
	 <!-- code for reading image -->
	function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah')
                        .attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }  
	</script>
   
    
  
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Poppins:300,400,500,700" rel="stylesheet">


  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
<script src="jquery-3.2.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>


<script src="webcam.min.js"></script>



<script>


<!-- code for boadring points based on route number -->
function getState(val) {
	$.ajax({
	type: "POST",
	url: "getState.php",
	data:'Route_no='+val,
	success: function(data){
		$("#boardingpoint").html(data);
		getCity();
	}
	});
}

<!-- code for fee based on boadring points -->

function getCity(val) {
	$.ajax({
	type: "POST",
	url: "getCity.php",
	data:'Boarding_point='+val,
	success: function(data){
		$("#fee").html(data);
	}
	});
}

</script>
    <style>
    #buttons{
	margin-top: 18px;
	overflow: hidden;
}
#blah{
  max-width:120px;
}
input[type=file]{
padding:10px;
}


input
{
		border-radius: 4px;
		<!-- text-transform: uppercase;-->
}
input[type=text]{	
	border:thin solid black;
	height:30px;
	width:250px;
}
input[type=number],[type=email]{	
	border:thin solid black;
	height:30px;
	width:250px;
}
input[type=date]{	
	border:thin solid black;
}
textarea{
	border:thin solid black;	
}


#show{
	display:block;
	z-index:1;
	background-color: #2196f3;
	width:230px;
	height:280px;
	margin:auto;
	padding-left:15px;
	display:none;
	text-align:center;
	border-radius: 10px;
}



#fee::-ms-expand
    {
        display: none;
    }
    #fee
    {   pointer-events:none;
        -webkit-appearance: none;
        -moz-appearance: none;      
        appearance: none;
        padding: 2px 30px 2px 2px;
        /*border: none; - if you want the border removed*/
    }
	
	h5{font-size:14px;}

    </style>
	   
    <link href="https://getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="https://getbootstrap.com/examples/jumbotron-narrow/jumbotron-narrow.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    </head>
	<script>
	function call(){
		
	var val = 0;	
	document.cookie = "updatevalues ="+val;	  // for showing form to enter id number
		
		
	var someVarName = 0;
    localStorage.setItem("status", someVarName);    //for camera access
    if(localStorage.getItem('htno1')!=1){
     var  val = 0;   
     localStorage.setItem("htno1", val);}    // for edit enable
    else{
    //alert(localStorage.getItem("htno1")); 
	
	
	 //for not showing drop down 
      document.getElementById("data").style.display = "block";
	  var dy = document.getElementById('routeno');
      var y = document.getElementById('boardingpoint');
	  var d = document.getElementById('file');
	  var c = document.getElementById('cam');
	  var a = document.getElementById('fee');
	  var acad = document.getElementById('Academicsyear');
	  var up = document.getElementById('update');
	  up.style.display = "none";
	  acad.style.display = "none";
	  a.style.display = "none";
	  c.style.display = "none";
	  d.style.display = "none";
	  dy.style.display = "none";
	  y.style.display = "none";
	  
	   // for making fields read only
	  document.getElementById("receipt").readOnly = true;
	  document.getElementById("studname").readOnly = true;
	  document.getElementById("Fname").readOnly = true;
	  document.getElementById("mobile").readOnly = true;
	  document.getElementById("paid").readOnly = true;
	  document.getElementById("Due").readOnly = true;
	  document.getElementById("remarks").readOnly = true;	  
	  
	  
	  //for showing drop downs
	  var dy1 = document.getElementById('routeno1');
      var y1 = document.getElementById('boardingpoint1');
	  var a1 = document.getElementById('fee1');
	  var acad1 = document.getElementById('Academicsyear1');
	  
	  acad1.style.display = "block";
	  a1.style.display = "block";
	  dy1.style.display = "block";
	  y1.style.display = "block";
	}
	}
	</script>
	
<body onload="call()">

       
<div class="limiter" style="padding: 15px 0 0 25px; ">
<p style="color:#116EB0;font-size:14px; "><a href="adminhome.php">Home > </a>Update ><a href="updatestud.php"> Update Student</a></p><br>
	
<div class="container" >

	<div >
		<form style="margin:0;padding:0px;" class="form-inline" action="updatestud.php" method="post">
		<label style="font-size:18px;">Enter Hallticket Number</label>&nbsp;&nbsp;
		<input type="text"  class="form-control"  id="hallticket" name="hallticket" placeholder="Enter Hallticket Number" size="30"  placeholder="Enter hallticket"  pattern="[0-9]{2}[a-zA-Z][0-9]{2}[a-zA-Z][0-9]{2}[a-zA-Z0-9][0-9]" title="enter valid Hallticket" required />&nbsp;&nbsp;
        <input type="submit" onclick="renderdata()" class="btn btn-primary" name="submit" value="Go">
		
	 </form>
    </div>
	   <div class="col-lg-4"  style=";<?php /* if($_COOKIE['updatevalues'] == 2&& $_POST['update']){ echo "display:block";}else echo "display:none";*/ ?> display:none;">
  <input type="button" id="printreg" name="submit" value="Print Form"  onclick="receiptreg()" class="btn btn-primary"/>
</div>
<br/><br/>
  <script>
  
function receiptreg(){ 
window.open('formprint.php', '_blank', 'toolbar=yes,scrollbars=yes,resizable=yes,top=250,left=500,width=1215,height=680');

 //document.getElementById('print').style.display = "none";
}

 
  </script>
		<?php
require "init.php";
 
//echo "<script>alert(localStorage.getItem('htno1')); </script>";	
//echo $_COOKIE['updatevalues'];
$hallticket3 = "";
$studname="";
$Fname="";
$department="";
$mobile="";
$Course="";
$Year="";
$total="";
$due="";
$boardingpoint="";
$routeno="";
$detain="";
$receipt="";
$date="";
$remarks="";
$idcard="";
$image = "";
$count1 = "";
$img = "";


if(isset($_COOKIE['updatevalues']))
if($_COOKIE['updatevalues'] == 2){
		
$target="img/".basename($_FILES['image']['name']);
$image=$_FILES['image']['name'];


$hallticket3=$_POST['hallticket5'];
$studname=strtoupper($_POST['studname']);
$Fname=strtoupper($_POST['Fname']);
$department=strtoupper($_POST['department']);
$mobile=$_POST['mobile'];
$Course=strtoupper($_POST['Course']);
$Year=$_POST['Year'];

$due=$_POST['Due'];
$boardingpoint=strtoupper($_POST['boardingpoint']);
$routeno=$_POST['routeno'];
$detain=strtoupper($_POST['dYear']);
$receipt=strtoupper($_POST['receipt']);
$date= date("Y-m-d h:i:s");
$remarks=strtoupper($_POST['remarks']);
$ay = strtoupper($_POST['academicsyear']);
$usr = $_SESSION['username'];
if($detain == 'YES')
	$Year = $_POST['dYear'];


$status = 0;

$img = $_POST['image1'];
if($image == "" )
if($img == "")
 {
	// echo "<script>alert('Photo Not Found');</script>";
	 $status = 1;
 }
else	
{
//echo "img ".$img."img ";
    $folderPath = "img/";
  
    $image_parts = explode(";base64,", $img);
    $image_type_aux = explode("img/", $image_parts[0]);
    //$image_type = $image_type_aux[1];
  
    $image_base64 = base64_decode($image_parts[1]);
    $fileName = $hallticket3 . '1.png';
  
    $file = $folderPath . $fileName;
    file_put_contents($file, $image_base64);
    //echo $file;
    $image = $fileName;
	}

	

$msg="";

/* query execution starts */
//echo "boardingpoint";echo "Course";echo "date";echo "department";echo "due";echo "Fname";echo "hallticket";echo "image";echo "mobile";echo "studname";echo "receipt";echo "remarks";echo "routeno";echo "total";echo "Year";echo "acad";
//echo $boardingpoint." ".$Course." ".$date." ".$department." ".$due." ".$Fname." ". $hallticket." ".$image." ".$mobile." ".$studname." ".$receipt." ".$remarks." ".$routeno." ".$total." ".$Year." ".$ay;
	
//echo $target;
if($image == "")
{
		$sql = "UPDATE student SET 
Name='".$studname."',Father_Name= '".$Fname."',Department_Name='".$department."',Mobile_Number= '".$mobile."',Course='".$Course."',Year='".$Year."',Total='".$total."',Due='".$due."',Boarding_point='".$boardingpoint."',Route_no='".$routeno."',Detain='".$detain."',Remarks='".$remarks."',acadyear='".$ay."',Verifiedby='".$usr."' WHERE HallticketNumber = '".$hallticket3."'";
}
else
 	
		$sql = "UPDATE student SET 
Name='".$studname."',Father_Name= '".$Fname."',Department_Name='".$department."',Mobile_Number= '".$mobile."',Course='".$Course."',Year='".$Year."',Total='".$total."',Due='".$due."',Boarding_point='".$boardingpoint."',Route_no='".$routeno."',Detain='".$detain."',Receipt_Number='".$receipt."',Remarks='".$remarks."',imageofstudent= '".$image."',acadyear='".$ay."',Verifiedby='".$usr."' WHERE HallticketNumber = '".$hallticket3."'";
//echo $sql;
if(mysqli_query($conn, $sql) )
{
	echo '<h5 style="color:green">Student Data Updated Successfully.</h5><br>';
	
	
	
echo "<script> alert('Student Data Updated Successfully.');</script>";

	//echo $_COOKIE['status'];
	

}
else  if(!isset($_POST['hallticket']))
{
	echo '<h5 style="color:red">Student Updation UnSuccessful.</h5><br>';
	
echo "<script> alert('Student Updation UnSuccessfully.');</script>";

		}
		
		if(move_uploaded_file($_FILES['image']['tmp_name'],$target)){
	$msg="Image uploaded successfully";
}else
{
	$msg="There was a problem uploaded image";
}
		}

/* query execution ends */
?>
   

<script>
  function renderdata(){
	 var  someVarName = document.getElementById("hallticket").value;   
      localStorage.setItem("htno", someVarName);   
	  var  val = 1;   
      localStorage.setItem("htno1", val);
	  ht = document.getElementById('hallticket');
	  document.cookie = "hallticket = "+ht.value;    // for inserting image on camera capture
    //  
	//  document.getElementById("data").style.display = "block";
	// disable1();
	//alert(localStorage.getItem("htno1")); 
	
  }
 
</script>


<?php
require "init.php";
$hallticket="<script>document.write(localStorage.getItem('htno'));</script>";
$htstatus="<script>document.write(localStorage.getItem('htno1'));</script>";
$hallticket1 = "";

if(isset($_POST['hallticket'])){
$hallticket=strtoupper($_POST['hallticket']);

$htno = strlen($hallticket);
$hallticket1 = $hallticket;

if($htno == 10){

echo "<script> document.getElementById('hallticket').value = localStorage.getItem('htno');

</script>";
 
 $query=mysqli_query($conn,"SELECT * FROM `student` WHERE HallticketNumber='".$hallticket."'");




?>


<script type="text/javascript">

 

(function() {

 // document.getElementById("file").display = none;
	  //document.getElementById("button").display = "none";
	  //alert("called");

var img = document.getElementById('blah').firstChild;
img.onload = function() {
    if(img.height > img.width) {
        img.height = '100%';
        img.width = 'auto';
    }
};}());

</script>
<?php
$rowCount = "";

$rowCount = mysqli_num_rows($query);
if($rowCount == null)
  {
	  echo "<h5 style='color:red;'>student not registered</h5>";
  }
else{
//echo "<script>alert(localStorage.getItem('htno'));alert(localStorage.getItem('htno1'));</script>";

 while($row = mysqli_fetch_array($query)):
 
 ?>
 
<br/><br/>
<div id="data">
		<form name="form1" style="margin-left:80px;"  action="updatestud.php" method="POST" enctype="multipart/form-data">
		
 <div class="row">
	<div class="col-lg-4">
      <div class="form-group">
       <label for="rcpno">Receipt_Number</label>
        <input type="text" class="form-control" id="receipt" name="receipt" value="<?php echo $row['Receipt_Number'];?>" Maxlength="10" placeholder="Receipt no" required />
      </div>
    </div>
	<div class= "col-lg-4">
      <div class="form-group">
        <label for="Name">HallTicket number</label>
        <input type="text" class="form-control" id="hallticket5" value="<?php echo $row['HallticketNumber'];?>" name="hallticket5" maxlength="10" onChange="getwords()" placeholder="Enter hallticket" readOnly  />
      </div>
    </div>
	<span style="margin:-10px 0px 0px 50px">
	<img id="blah" src="img/<?php  $GLOBALS['image5'] = $row['imageofStudent']; echo $image5;?>" alt="your image" width="119" />
	<input type="hidden" name="image1" class="image-tag">
	</span>
<script>

function done(){
    $('#snapshots').html("uploaded");
}
</script>
<script language='JavaScript'>
function getwords(){
myOutput= document.getElementById('Course');
ht = document.getElementById('hallticket5');

document.cookie = "hallticket = "+ht.value;


}
</script>
  </div>
 
    <div class="row">
  
    	<div class= "col-lg-4">
 <div class="form-group">
    <label for="Name">Name</label>
         <input type="text" class="form-control"  value="<?php echo $row['Name'];?>" id="studname" name="studname"  placeholder="student name"  pattern="[A-Za-z ]{3,}" title="No special characters, only characters of minimum 3 and maximum 30" maxlength="30"  required />
    
  </div>
  </div>
  <script>
  
  $('#studname').on('keypress', function (event) {
	  
    var regex = new RegExp("^[a-zA-Z ]");
    var key = String.fromCharCode(!event.charCode ? event.which : event.charCode);
    if (!regex.test(key)) {
       event.preventDefault();
       return false;
    }
});
  </script>
    	<div class= "col-lg-4">
 <div class="form-group">
    <label for="Father's name">Father's name</label>
      <input type="text" class="form-control" id="Fname" name="Fname"  value="<?php echo $row['Father_Name'];?>" placeholder="your father's name"  pattern="[A-Za-z ]{3,}" title="No special characters, only characters of minimum 3 and maximum 30" maxlength="30" required />
     
  </div>
  </div>
  
   <script>
  
  $('#Fname').on('keypress', function (event) {
	  
    var regex = new RegExp("^[a-zA-Z ]");
    var key = String.fromCharCode(!event.charCode ? event.which : event.charCode);
    if (!regex.test(key)) {
       event.preventDefault();
       return false;
    }
});
  </script>
  
  
  <div class="col-lg-4">
  
  <input type="file" id="file" name="image"  onchange="readURL(this);"  />                                     
  <input id="cam" type="button" value="Capture Image"  onchange="readURL(this);" style="border:1px solid #116EB0;width:250px;height:35px;color:white;background-color: #116eb0;" onclick="camcall();"/>
  </div>
 </div><br/>
  <div class="modal" id="show" >
   <input type="button" id="clickclose" class="close" style="background-color:transparent;margin-right:10px;color:black;height:20px;width:15px;"  value="X" />

    <div id="my_camera" ></div>
		
			    <input type="button" class="btn btn-success" value="Take Snapshot" onClick="take_snapshot()">
             
  </div>
  
  
  <script language="JavaScript">
    Webcam.set({
        width: 200,
        height: 220,
        image_format: 'jpeg',
        jpeg_quality: 100
    });
  
    function take_snapshot() {
        Webcam.snap( function(data_uri) {
		
            $(".image-tag").val(data_uri);
             $('#blah').attr('src', data_uri);
			 $('#show').delay(40).fadeOut();
			//alert(data_uri);
			Webcam.reset();
          //  document.getElementById('results').innerHTML = '<img src="'+data_uri+'"/>';
        } );
    }
</script>

  <script>
  
	$('#clickclose').click(function() {
		//alert('hi');
		Webcam.reset();
		$('#show').delay(10).fadeOut();
});
	
	function camcall(){
		 
			 
  Webcam.attach( '#my_camera' );
   $('#show').delay(40).fadeIn();

		//document.getElementById("button").disabled = true;
		document.getElementById("show").style.display = "block";
		
	}	
  </script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript"> 
     
	var modal = document.getElementById('show');

// Get the button that opens the modal
var btn = document.getElementById("show");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
    </script>
  
 
  <div class="row">
  
    	<div class= "col-lg-4">
 <div class="form-group">
    <label for="course">Course</label>
    <input type="text" class="form-control"  value="<?php echo $row['Course'];?>" id="Course" name="Course" readonly />
	
  </div>
  </div>
  
    	<div class= "col-lg-4">
 <div class="form-group">
    <label for="Department">Department</label>
    <input type="text" class="form-control" id="department"  value="<?php echo $row['Department_Name'];?>" name="department" readonly />
	
  </div>
  </div>
  
   <div class="col-lg-4">
   <div class="form-group">
    <label for="Year" >Year</label>
    <input type="text" class="form-control" id="Year"  value="<?php echo $row['Year'];?>" name="Year" readonly />
		
  </div>
  </div>
 </div>
 
    <div class="row">
<div class="col-lg-4">
  <div class="form-group">
    <label for="Mobile">Mobile Number</label>
    <input type="text" class="form-control" pattern="[6789][0-9]{9}" title="Phone number starting with 6-9 and remaining 9 digit with 0-9" id="mobile"  value="<?php echo $row['Mobile_Number'];?>" name="mobile" placeholder="Enter Mobile No" maxlength="10" required>
    
  </div>
  </div>
   <script>
  
  $('#mobile').on('keypress', function (event) {
	  
    var regex = new RegExp("^[0-9]");
    var key = String.fromCharCode(!event.charCode ? event.which : event.charCode);
    if (!regex.test(key)) {
       event.preventDefault();
       return false;
    }
});
  </script>
  
  
  <div class= "col-lg-4">
  
    
    <label class="Detain" >Detained ?<div class="form-group form-inline" style="margin-top:5px;">
    <input type="radio" class="form-control" id="YES" name="Detain" <?php if($row['Detain']=='YES')
		echo "checked";?> onChange="detainyes()"	value="YES">&nbsp;&nbsp;Yes </label>&nbsp;&nbsp;
	    <label class="Detain">

	<input type="radio" class="form-control" id="NO" <?php if($row['Detain']=='NO')
		echo "checked";?> name="Detain" onchange="detainno()" value="NO">&nbsp;&nbsp;No
	</label>
<script language='JavaScript'>
function detainyes()
{ var dy = document.getElementById('detainyear');
	 if(document.getElementById("YES").checked == true)
	  {
		  dy.style.display = "block";
	  }
}


function detainno()
{ var dy = document.getElementById('detainyear');
	 if(document.getElementById("NO").checked == true)
	  {
		  dy.style.display = "none";
	  }
}

</script>
	    
   </div>
  </div>
  
  <div class="col-lg-4" id="detainyear" style="display:none;">
   <div class="form-group" >
    <label for="dYear" >Current Year</label>
    <input type="text" class="form-control"  value="<?php echo $row['Year'];?>" id="dYear" name="dYear" placeholder="enter current year" />
		
  </div>
  </div>
  </div>
  
  <div class="row">
   <div class="col-lg-4">
  <div class="form-group">
  <label>Route Number</label><br/>
   <input type="text" class="form-control" id="routeno1"  value="<?php echo $row['Route_no'];?>" name="rtno" readonly />
<select name="routeno" id="routeno" style="height:30px;width:250px;border:1px solid black;" class="form-control" onChange="getState(this.value);">
<option value disabled selected>Select Route</option>
  

<?php
foreach($results as $country) {
?>
<option value="<?php echo $country["Route_No"]; ?>"><?php echo $country["Route_No"]; ?></option>
<?php
}
?>
</select>

  </div>
  </div>
 
 <div class="col-lg-7">
  <div class="form-group">
    <label for="bp">Boarding Point</label><br/>
	 <input type="text" class="form-control" id="boardingpoint1"  style="width:100%;" value="<?php echo $row['Boarding_point'];?>" name="boardingpoint1" readonly />
	<select name="boardingpoint" style="height:30px;border:1px solid black;" id="boardingpoint" class="form-control" onChange="getCity(this.value);" required >
<option value="">Select Boarding point</option>

</select>
   
  </div>
  </div>
  
 </div> 
  
   <div class="row">
  <div class="col-lg-4">
   <div class="form-group">
    <label for="fee">Total Fee</label><br/>
	 <input type="text" class="form-control" id="fee1"  value="<?php echo $row['Total'];?>" name="paidfee" readonly />
     <select name="fee" id="fee"  style="height:30px;width:250px;border:1px solid black;" class="form-control"  onChange="feepaid();">
</select>
  </div>
  
  </div>
  
  
		<div class= "col-lg-4">
  <div class="form-group">
    <label for="paid"> Paid </label>
  <input type="number" class="form-control"  value="<?php $pay = $row['Total']-$row['Due'];
    echo $pay; ?>"  id="paid" onChange="feepaid()" name="paid"  placeholder=" " required>
    
  </div>
  </div>
 <script> 
 /*
 function feepaid(){
e = document.getElementById('fee');
paidfee = document.getElementById('paid');

var previousfee = "<?php $pay = $row['Total']-$row['Due'];echo $pay; ?>";
if(paidfee.value <= 0){
	document.getElementById("paid").value = previousfee;
	alert("Enter Valid Amount"); 
}else
if (paidfee.value != "")
{  
   var duefee = e.value - paidfee.value;
   
   if(duefee<0)
   { document.getElementById("paid").value = "Enter Valid Amount"; 
     document.getElementById("Due").value = " ";
   }
   else
     document.getElementById("Due").value = duefee;

}

}
 */
 
 
 function feepaid(){
e = document.getElementById('fee');
paidfee = document.getElementById('paid');
var previousfee = "<?php $pay = $row['Total']-$row['Due'];echo $pay; ?>";
//alert(previousfee);

if(paidfee.value <= 0){
	document.getElementById("paid").value = previousfee;
	alert("Enter Valid Amount"); 
}else

if (paidfee.value != "")
{  
   var duefee = e.value - paidfee.value - previousfee;
   
   if(duefee<=-1)
   { alert('Invalid amount');
document.getElementById("paid").value = previousfee; 
     document.getElementById("Due").value = e.value- previousfee;
   }
   else
   {
	   var a = confirm('Total Fee: '+e.value+'\n Paid Fee: '+(e.value - duefee)+'\n Due Fee: '+duefee+'?'); 
		 if(a){ 
		 
     document.getElementById("paid").value = e.value - duefee; 
		 document.getElementById("Due").value = duefee;
		 }
		 else{
			 
document.getElementById("paid").value = previousfee; 
     document.getElementById("Due").value = e.value- previousfee;
		 }
   }
}

}
 </script>
 
  
  <div class="col-lg-4">
  
  <label for="due">Due</label>
      <input type="text"  class="form-control"  value="<?php echo $row['Due'];?>" id="Due" name="Due" readOnly />
  </div>
  
</div>
  
    <div class="row">
  
  <div class="col-lg-4">
  <div class="form-group">
    <label for="Name">Remarks</label>
    <input type="text" class="form-control" id="remarks"  value="<?php echo $row['Remarks'];?>" name="remarks" maxlength="50" aria-describedby="Name" placeholder="Remarks" >
    
  </div>
  </div>
  <?php  
    $y = date("Y"); 
    $y1 = $y%100 ;
    $y2 = $y1 + 1;	
	$y3 = $y1 + 2;
  ?>
  <div class="col-lg-4">
   <div class="form-group">
    <label for="Year">Academic Year</label>
	 <input type="text" style="width:100%;" class="form-control" id="Academicsyear1"  value="<?php echo $row['acadyear'];?>" name="ac" readonly />
    <select class="form-control" style="height:30px;width:250px;border:1px solid black;" id="Academicsyear" name="academicsyear">
		<option>Select Academic year</option>
		<option value="<?php echo ($y -1)."-".$y%100; ?>"><?php echo ($y -1)."-".$y%100; ?></option>
		<option value="<?php echo $y."-".$y2; ?>" selected ><?php echo $y."-".$y2; ?></option>
		<option value="<?php floor($y/100).$y2."-".$y3; ?>"><?php echo floor($y/100).$y2."-".$y3; ?></option>
    </select>
  </div>
  </div>
  </div>
    
	<script>
	
	// for showing drop downs
	
	
    function edit1(){
	//alert("edit");
	  var edit = document.getElementById('edit');
      edit.style.display = "none";
	
	  var dy2 = document.getElementById('routeno');
      var y2 = document.getElementById('boardingpoint');
	  var d2 = document.getElementById('file');
	  var c2 = document.getElementById('cam');
	  var a2 = document.getElementById('fee');
	  var acad2 = document.getElementById('Academicsyear');
	  var update = document.getElementById('update');
	  document.getElementById("routeno").value = document.getElementById("routeno1").value
	  
	  var bp = "<?php echo $row['Boarding_point'];?>";
	  document.cookie = "bppoint = "+bp;
      
	  getState(document.getElementById("routeno").value);
	    var up1 = document.getElementById('update');
	  up1.style.display = "block";
	  update.style,display = "block";
	  acad2.style.display = "block";
	  a2.style.display = "block";
	  c2.style.display = "block";
	  d2.style.display = "block";
	  dy2.style.display = "block";
	  y2.style.display = "block";
	  
	  document.getElementById("receipt").readOnly = false;
	  document.getElementById("studname").readOnly = false;
	  document.getElementById("Fname").readOnly =  false;
	  document.getElementById("mobile").readOnly = false;
	  document.getElementById("paid").readOnly = false;
	  document.getElementById("Due").readOnly = false;
	  document.getElementById("remarks").readOnly = false;	  
	  
	  var dy3 = document.getElementById('routeno1');
      var y3 = document.getElementById('boardingpoint1');
	  var a3 = document.getElementById('fee1');
	  var acad3 = document.getElementById('Academicsyear1');
	  var sub = document.getElementById('sub');
	  //sub.style.display = "none";
	  acad3.style.display = "none";
	  a3.style.display = "none";
	  dy3.style.display = "none";
	  y3.style.display = "none";
	}
  </script>
	     <div class="row">
  <!--
  <div class="col-lg-4">
  <div class="form-group">
   <input type="submit" id="sub" name="submit" value="verify" onClick="verify1()" class="btn btn-primary"/>
  </div>
  </div>
  <script>
    function verify1()
	{
		alert("Student verified successfully.");
	}
  </script> -->
  <div class="col-lg-5">
   <div class="form-group">
    
  </div>
  </div> 
  <div class="col-lg-5">
   <div class="form-group">
    <input type="button" name="edit" id="edit" value="Edit" onClick="edit1();"	class="btn btn-primary"/>
	<input type="submit" id="update" name="update" value="Update" onClick="update1();" class="btn btn-primary"/>
 
  </div>
  </div>
  
  
  <div class="col-lg-1">
  <div class="form-group form-inline">
    </div>
  </div>
  </div>
  
  <script>
  function update1(){
	  var  val1 = 2;   
      document.cookie = "updatevalues ="+val1;
  }
   </script>
  
</form>
    </div>
  
  
  
  
<?php endwhile;}}
}
 ?>


	
</div>
</div>
 <?php if(isset($_POST['hallticket']))
    { include('footer.php'); }
else
{?>
	 <div style="position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;">
	<?php include('footer.php');?>
  </div>
	<?php
}
 ?>
</body>
</html>
