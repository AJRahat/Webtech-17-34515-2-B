
<?php  
	$cpass = "pass";
	$npass  = $rpass ="";

	if($_SERVER["REQUEST_METHOD"] == "POST") {
		if(isset($_POST['submit'])){

			$npass= $_POST['npass'];
			$rpass= $_POST['rpass'];

			if($cpass != $_POST['cpass']){
				$errmsg="old password not matched";
			}else{
				if($npass == $rpass){
					$errmsg = "Valid password";
				}
				else{
					$errmsg="Password not machted";
				}
			}
		}

		
	}

?>


<!DOCTYPE html>
<html>
<head>
	<title>Change Password</title>

	<style type="text/css" media="screen">
		.box{
				margin: 100px;
				padding: 20px;
				height: 200px;
				width: 350px;
				padding-left: 400px;
		}

		.box2{
				height: 20px;
				width: 200px;
		}

		
	</style>
</head>
<body style="margin:0px;padding:0px;">

	<form method="post">

		<div class="box">
		<fieldset>
			<legend><b>Change Password</b></legend>

				<div align="right">
					<level>Current Pass :</level>
					<input type="text" name="cpass" class="box2"><br><br>
				</div>

				<div align="right">
					<level >New Pass :</level>
					<input type="text" name="npass" class="box2"><br><br>
				</div>

				<div align="right">
					<level>Retype Pass :</level>
					<input type="text" name="rpass" class="box2"><br><br>
				</div>

				<hr>

				<input type="submit" name="submit" >
				


		</fieldset>
		</div>
	</form>


	<?php
	

	echo $npass;
	echo "<br>";
	echo $rpass;
	echo "<br>";

	?>

</body>
</html>