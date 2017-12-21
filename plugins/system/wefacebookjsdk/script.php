<?php
// No direct access to this file
defined('_JEXEC') or die('Restricted access');
if(!defined('DS')) define('DS',DIRECTORY_SEPARATOR);

class plgsystemwefacebookjsdkInstallerScript
{
    public $mainifest="wefacebookjsdk";
	public function preflight($route, $adapter) {}
    public function install($adapter) {}
    public function update($adapter) {}
    public function uninstall($adapter) {}
    public function postflight($route, $adapter) 
    {
      return $this->fixManifest($adapter);
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
		JFile::delete($adapter->get('parent')->getPath('extension_root').'/'.$this->mainifest.'.j25.xml');
        return true;
    }
}