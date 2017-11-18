<?php
echo '<html><head></head><body>' . PHP_EOL;

echo '<form action="/kinisi/db/import.php" method="get" id="form1">' . PHP_EOL;
echo '    <input type="hidden" name="action" value="export" />' . PHP_EOL;
echo '    <button type="submit" value="Export">Export</button>' . PHP_EOL;
echo '</form>' . PHP_EOL . PHP_EOL;
echo '    &nbsp;' . PHP_EOL;
echo '<form action="/kinisi/db/import.php" method="get" id="form2">' . PHP_EOL;
echo '    <input type="hidden" name="action" value="import" />' . PHP_EOL;
echo '    <button type="submit" value="Import">Import</button>' . PHP_EOL;
echo '</form>' . PHP_EOL . '<br>';

$action= isset($_GET['action']) ? $_GET['action'] : "" ;

ob_start();
require_once '../configuration.php';
ob_end_clean();

$config = new JConfig();

$dir = new DirectoryIterator(__DIR__);

$mysqlDatabaseName = $config->db;
$mysqlUserName = $config->user;
$mysqlPassword = $config->password;

if ($action == 'import') {
    $commandStart = 'mysql -u' .$mysqlUserName .' -p'.$mysqlPassword .' -D ' .$mysqlDatabaseName .' < ';
    
    $command = $commandStart .$dir->getRealPath().'/'.$mysqlDatabaseName.'_database.sql';
    $commandLast = $commandStart .$dir->getRealPath().'/'.$mysqlDatabaseName.'_metadata.sql';
    
    runCommand($command);
    
    foreach ($dir as $fileinfo) {
        if (!$fileinfo->isDot() and $fileinfo->getExtension() === 'sql' and !$fileinfo->isDir() and
            $fileinfo->getFilename() != $mysqlDatabaseName . '_database.sql' and
            $fileinfo->getFilename() != $mysqlDatabaseName . '_metadata.sql'
            ) {
            $command= $commandStart .$fileinfo->getRealPath();
            runCommand($command);
        }
    }
    
    runCommand($commandLast);
}
    
if ($action == 'export') {
    echo 'NOT IMPLEMENTED';
}

function runCommand($command) {
    $output=array();
    exec($command,$output,$worked);
    switch($worked){
        case 0:
            echo 'success command <b>' .$command .'</b><br>';
            break;
        default: echo 'ERROR command <b>' .$command .'</b><br>';
        break;
    }
}

?>