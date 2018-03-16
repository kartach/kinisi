<?php
echo '<html><head></head><body>' . PHP_EOL;

echo '<form action="?" method="get" id="form1">' . PHP_EOL;
echo '    <input type="hidden" name="action" value="pack" />' . PHP_EOL;
echo '    <button type="submit" value="Export">Pack</button>' . PHP_EOL;
echo '</form>' . PHP_EOL . PHP_EOL;
echo '    &nbsp;' . PHP_EOL;
echo '<form action="?" method="get" id="form2">' . PHP_EOL;
echo '    <input type="hidden" name="action" value="unpack" />' . PHP_EOL;
echo '    <button type="submit" value="Import">Unpack</button>' . PHP_EOL;
echo '</form>' . PHP_EOL . '<br>';

$action= isset($_GET['action']) ? $_GET['action'] : "" ;

if ($action == 'unpack') {
	// assuming file.zip is in the same directory as the executing script.
	$file = '../../zip.zip';
	
	// get the absolute path to $file
	$path = pathinfo(realpath($file), PATHINFO_DIRNAME);
	echo 'path to zip = <b>' . path . '</b><br>';
	
	$zip = new ZipArchive;
	$res = $zip->open($file);
	if ($res === TRUE) {
		// extract it to the path we determined above
		$zip->extractTo($path);
		$zip->close();
		echo "WOOT! $file extracted to $path";
	} else {
		echo "Doh! I couldn't open $file";
	}
}
    
if ($action == 'pack') {
    echo 'NOT IMPLEMENTED';
}

?>