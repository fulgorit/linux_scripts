<?php 

function getDirContentsDir($dir, $filter = '',$i) {
    
    $array = array();

    if ($handle = opendir($dir)) {
    while (false !== ($entry = readdir($handle))) {
      if ($entry != "." && $entry != "..") {  
    //echo $entry; 

        if(is_dir($dir.$entry))  { array_push($array, $entry); //echo $entry; 

        }

    }

             }
        
    }
    
    closedir($handle);

    return $array;

}

function listDir($dir) {



    $array=array(); 

    if ($handle = opendir($dir)) {
    while (false !== ($entry = readdir($handle))) {
        if ($entry != "." && $entry != "..") {


        if (preg_match('/\.pdf$/i', $entry)) {

            $array[] = $entry;
            $md=md5_file($dir."/".$entry);
            echo $entry." -> ".$md."\n";
	    	if(!is_file('/mnt/aldi/mylibrary/PDF_REPO/TMP/'.$md.'.png'))
{

    	    $cmd='convert -verbose -density 1000x1000 "'.$dir.'/'.$entry.'[0]" -resize 1000x /mnt/aldi/mylibrary/PDF_REPO/TMP/'.$md.'.png';
   	echo $cmd;    
	$output = shell_exec($cmd);


            echo $output."\n";

            echo $entry." -> ".$md." ADDED TO /mnt/aldi/mylibrary/PDF_REPO/filelist.txt\n";	
	    	shell_exec('echo "'.$dir.'/'.$entry.'|'.$md.'.png||'.$entry.'" >> /mnt/aldi/mylibrary/PDF_REPO/TMP/filelist.txt');
	    	

}
    }

    //if  (count($array)>20) break;

             }
        }
    }
    closedir($handle);
    
    return $array;



}
$i=0;

$ar = getDirContentsDir('/mnt/aldi/mylibrary/PDF_REPO/', '/\.pdf$/',$i);
sort($ar);

foreach ($ar as $value) {

$folder=listDir('/mnt/aldi/mylibrary/PDF_REPO/'.$value);

}


$folder=listDir('/mnt/aldi/mylibrary/PDF_REPO');







































?>
