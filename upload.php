<?php
    $file_path = './uploads/';
    $file_path = $file_path.basename( $_FILES['uploaded_file']['name']);
    
    $exif = exif_read_data($_FILES['uploaded_file']['tmp_name']);
    if (!empty($exif['Orientation'])) 
    {
        error_log("Image Oriented" + $exif['Orientation']);
        $image = imagecreatefromjpeg($_FILES['uploaded_file']['tmp_name']);
        switch ($exif['Orientation']) 
        {
            case 3:
                $image = imagerotate($image, 180, 0);
                break;

            case 6:
                $image = imagerotate($image, -90, 0);
                break;

            case 8:
                $image = imagerotate($image, 90, 0);
                break;
        }

        if( imagejpeg($image, $file_path) )
          echo "success";
        else
          echo "fail";
    }
    else
    {
      error_log("No Orientaton");
      if( move_uploaded_file($_FILES['uploaded_file']['tmp_name'], $file_path) )
         echo "success";
      else
         echo "fail";
    }
?>