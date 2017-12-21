<?php
// No direct access to this file
defined('_JEXEC') or die('Restricted access');
if(!defined('DS')) define('DS',DIRECTORY_SEPARATOR);

class mod_we_ufacebook_commentsInstallerScript
{
    public $mainifest="mod_we_ufacebook_comments";
	public function preflight($route, $adapter) {}
    public function install($adapter) {}
    public function update($adapter) {}
    public function uninstall($adapter) {}
    public function postflight($route, $adapter) 
    {
        if (stripos($route, 'install') !== false || stripos($route, 'update') !== false)
        {
            return $this->fixManifest($adapter);
        }
    }
     
    private function fixManifest($adapter)
    {
		
		$filesource = $adapter->get('parent')->getPath('source').'/'.$this->mainifest.'.j25.xml';
        $filedest = $adapter->get('parent')->getPath('extension_root').'/'.$this->mainifest.'.xml';
         
        if (!(JFile::copy($filesource, $filedest)))
        {
            JLog::add(JText::sprintf('JLIB_INSTALLER_ERROR_FAIL_COPY_FILE', $filesource, $filedest), JLog::WARNING, 'jerror');
             
            if (class_exists('JError'))
            {
                JError::raiseWarning(1, 'JInstaller::install: '.JText::sprintf('Failed to copy file to', $filesource, $filedest));
            }
            else
            {
                throw new Exception('JInstaller::install: '.JText::sprintf('Failed to copy file to', $filesource, $filedest));
            }
            return false;
        }
		if(JFile::exists($adapter->get('parent')->getPath('extension_root').'/helper.php')){
			JFile::delete($adapter->get('parent')->getPath('extension_root').'/helper.php');
		} 
        return true;
    }
}