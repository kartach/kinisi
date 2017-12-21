<?php
/**
 * @package     Ultimate Facebook J!Comments
 * @version     1.3.17
 * @author      Stergios Zgouletas <info@web-expert.gr>
 * @link        http://www.web-expert.gr
 * @copyright   Copyright (C) 2010 Web-Expert.gr All Rights Reserved
 * @license     http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 */
// No direct access to this file
defined('_JEXEC') or die('Restricted access');
if(!defined('DS')) define('DS',DIRECTORY_SEPARATOR);
jimport('joomla.filesystem.file');
class plgcontentWe_ufacebook_commentsInstallerScript
{
    public $mainifest="we_ufacebook_comments";
	public function preflight($route, $adapter) {}
    public function install($adapter) {}
    public function update($adapter) {}
    public function uninstall($adapter) {}
    public function postflight($route, $adapter) 
    {
		jimport('joomla.filesystem.folder');
		$files=JFolder::files(JPATH_SITE.DIRECTORY_SEPARATOR.'cache','.txt',false,true);
		$deleted=array();
		foreach($files as $file)
		{
			if(JString::strpos($file,'plg_ufb_')!==false){
				$deleted[]=(int)JFile::delete($file);
			}
		}
		
		$this->installExtras($adapter->get('parent')->getPath('source'));
	   return $this->fixManifest($adapter);
    }
     
    private function fixManifest($adapter)
    {
        $filesource = $adapter->get('parent')->getPath('source').DS.$this->mainifest.'.j25.xml';
        $filedest = $adapter->get('parent')->getPath('extension_root').DS.$this->mainifest.'.xml';
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
        JFile::delete($adapter->get('parent')->getPath('extension_root').DS.$this->mainifest.'.j25.xml');
        return true;
    }
	
	public function installExtras($path){
		$installer = new JInstaller;
		$result = $installer->install($path.DS.'zoo');
		//JFolder::delete($adapter->get('parent')->getPath('source').DS.'zoo');
	}
}