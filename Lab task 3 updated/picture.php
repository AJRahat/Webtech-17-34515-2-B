



<!DOCTYPE html>
<html>
<head>
	<title>Photo </title>


	<style type="text/css" media="screen">
		.box{
				margin: 100px;
				padding: 20px;
				height: 200px;
				width: 350px;

				padding-left: 400px;
		}
		
	</style>
</head>
<body>

	<form method="post" action="photo.php" enctype="multipart/form-data">
		<div class="box">
			<fieldset>
				<legend>PROFILE PICTURE</legend>


					<?php  

					 $image=$_FILES["filesToUpload"]["name"];
		              $img="uploads/".$image;
		              echo '<img src= "uploads/.$img">';
					?>

					<br>
				   

				<input type="file" name="fileToUpload" accept="image/*" id="fileToUpload">
				<hr>
				<input type="Submit" name="submit" value="Submit">  


			</fieldset>
		</div>
	</form>




	<?php
$target_dir = "uploads/";

$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));


if(isset($_POST["submit"])) {
  $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
  if($check !== false) {
    echo "Its an image - " . $check["mime"] . ".";
    $uploadOk = 1;
  } else {
    echo "Its not an image.";
    $uploadOk = 0;
  }
}

if (file_exists($target_file)) {
  echo "Sorry, file already exists.";
  $uploadOk = 0;
}



if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
&& $imageFileType != "gif" ) {
  echo "Sorry, only JPG, PNG, JPEG & GIF files are allowed.";
  $uploadOk = 0;
}

if ($uploadOk == 0) {
  echo "Sorry, the file was not uploaded.";
}
 else {
  if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
    echo "The file ". htmlspecialchars( basename( $_FILES["fileToUpload"]["name"])). " has been uploaded.";
  } else {
    echo "Error";
  }
}
?>



</body>
</html>