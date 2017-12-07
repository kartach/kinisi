<?php

/**
 * @package         Google Structured Data
 * @version         3.1.1 Free
 *
 * @author          Tassos Marinos <info@tassos.gr>
 * @link            http://www.tassos.gr
 * @copyright       Copyright © 2017 Tassos Marinos All Rights Reserved
 * @license         GNU GPLv3 <http://www.gnu.org/licenses/gpl.html> or later
 */

defined('_JEXEC') or die('Restricted access');

class plgSystemGSD extends JPlugin
{
	/**
	 *  Auto loads the plugin language file
	 *
	 *  @var  boolean
	 */
	protected $autoloadLanguage = true;

	/**
	 *  The loaded indicator of helper
	 *
	 *  @var  boolean
	 */
	protected $init;

	/**
	 *  Application Object
	 *
	 *  @var  object
	 */
	protected $app;

	/**
	 *  JSON Helper
	 *
	 *  @var  class
	 */
	private $json;

	/**
	 *  Class constructor
	 *  We overriding in order to make the component's parameters available through all plugin events
	 *
	 *  @param  string  &$subject  
	 *  @param  array   $config
	 */
	public function __construct(&$subject, $config = array())
	{
		if (!$this->loadClasses())
		{
			return;
		}
		
		$config['params'] = GSDHelper::getParams();
		parent::__construct($subject, $config);
	}

	/**
	 *  onBeforeRender event (default) to add JSON markup to the document
	 *
	 *  Administrator can set the internal Joomla event on which the plugin should be initialised. 
	 *  This is very useful when the site is experiencing issues with the plugin not working.
	 *
	 *  @return void
	 */
	public function onBeforeRender()
	{
		if ($this->params->get('initonevent', 'onBeforeRender') == 'onBeforeRender')
		{
			$this->init();
		}
	}

	/**
	 *  onBeforeCompileHead event to add JSON markup to the document
	 *
	 *  @return void
	 */
	public function onBeforeCompileHead()
	{		
		if ($this->params->get('initonevent', 'onBeforeRender') == 'onBeforeCompileHead')
		{
			$this->init();
		}
	}

	/**
	 *  Adds Google Structured Markup to the document in JSON Format
	 *
	 *  @return void
	 */
	private function init()
	{
		// Load Helper
		if (!$this->getHelper())
		{
			return;
		}

		GSDHelper::log($this->app->input->getArray());

		// Get JSON markup for each available type
		$data = array(
			$this->getJSONSiteName(),
			$this->getJSONSitelinksSearch(),
			$this->getJSONLogo(),
			
			$this->getCustomCode(),
			$this->getJSONBreadcrumbs()
		);

        // Load and trigger plugins
        GSDHelper::event()->trigger('onGSDBeforeRender', array(&$data));

		// Convert data array to string
		$markup = implode("\n", array_filter($data));

		// Return if markup is empty
		if (!$markup || empty($markup) || is_null($markup))
		{
			return;
		}

		// Minify output
		if ($this->params->get('minifyjson', false))
		{
			$markup = GSDHelper::minify($markup);
		}

		GSDHelper::log($markup);

		// Add final markup to the document
		JFactory::getDocument()->addCustomTag('
            <!-- Start: ' . JText::_("GSD") . ' -->
            ' . $markup . '
            <!-- End: ' . JText::_("GSD") . ' -->
        ');
	}

	/**
	 *  Route default form's prepare event to onGSDPluginForm to help our plugins manipulate the form
	 *
	 *  @param   JForm  $form  The form to be altered.
	 *  @param   mixed  $data  The associated data for the form.
	 *
	 *  @return  boolean
	 */
	function onContentPrepareForm($form, $data)
	{
		// Run only on backend
		if (!$this->app->isAdmin() || !$form instanceof JForm)
		{
			return;
		}

		GSDHelper::event()->trigger("onGSDPluginForm", array($form, $data));
	}
	
	/**
	 *  This event is triggered after the framework has rendered the application.
	 *
	 *  @return void
	 */
	public function onAfterRender()
	{
		// Fix fields showOn bug in the backend
		$this->showOnFix();

		// Load Helper
		if (!$this->getHelper())
		{
			return;
		}

		

		// Output log messages if debug is enabled
    	if ($this->params->get("debug", false) && JFactory::getUser()->authorise('core.admin'))
    	{
    		$data = var_export(GSDHelper::$log, true);
    		highlight_string("<?php\n\$data =\n" . $data . ";\n?>");
    	}
	}

	/**
	 *  This hook tries to fix the showOn bug appeared in Joomla 3.7
	 *  Used for the Joomla! Content and K2 article editing page
	 *
	 *  https://github.com/joomla/joomla-cms/pull/14007
	 *
	 *  Update 1: It seems that this fix is no longer available in Joomla 3.8.0 Ohh boy..
	 *  Update 2: Finally, bug fix merged back again in Joomla 3.8.1. Let's see what's going to happen in v3.8.2 :)
	 *  
	 *  @return  void
	 */
	private function showOnFix()
	{
		// Only in Admin
		if ($this->app->isSite())
		{
			return;
		}

		// Only on Joomla < v3.8.1
		if (version_compare(JVERSION, '3.8.1', '>'))
		{
			return;
		}

		// Context vars
		$buffer = $this->app->getBody();

		// If is com_gsd
		if ($this->app->input->get("option") == 'com_gsd' && $this->app->input->get("view") == 'item')
		{
	        $buffer = str_replace('.author][option', '][author][option', $buffer);
	        $buffer = str_replace('.image][option', '][image][option', $buffer);
	        $buffer = str_replace('.rating][option', '][rating][option', $buffer);

			$this->app->setBody($buffer);
		}
	}

	

	/**
	 *  Returns Breadcrumbs structured data markup
	 *  https://developers.google.com/structured-data/breadcrumbs
	 *
	 *  @return  string
	 */
	private function getJSONBreadcrumbs()
	{
		// Skip on homepage 
		if (!$this->params->get("breadcrumbs_enabled", true) || GSDHelper::isFrontPage())
		{
			return;
		}

		// Generate JSON
		return $this->json->setData(array(
			"contentType" => "breadcrumbs",
			"crumbs"      => GSDHelper::getCrumbs($this->params->get('breadcrumbs_home', JText::_('GSD_BREADCRUMBS_HOME')))
		))->generate();
	}

	/**
	 *  Returns Site Name strucuted data markup
	 *  https://developers.google.com/structured-data/site-name
	 *
	 *  @return  string on success, boolean on fail
	 */
	private function getJSONSiteName()
	{
		if (!$this->params->get("sitename_enabled", true) || !GSDHelper::isFrontPage())
		{
			return;
		}

		// Generate JSON
		return $this->json->setData(array(
			"contentType" => "sitename",
			"name"        => GSDHelper::getSiteName(),
			"url"         => GSDHelper::getSiteURL(),
			"alt"         => $this->params->get("sitename_name_alt")
		))->generate();
	}

	/**
	 *  Returns Sitelinks Searchbox structured data markup
	 *  https://developers.google.com/search/docs/data-types/sitelinks-searchbox
	 *
	 *  @return  string on success, boolean on fail
	 */
	private function getJSONSitelinksSearch()
	{
		if (!$sitelinks = $this->params->get('sitelinks_enabled', false))
		{
			return;
		}

		// Setup the right Search URL
		switch ($sitelinks)
		{
			case "1": // com_search
				$searchURL = GSDHelper::route(JURI::base() . 'index.php?option=com_search&searchphrase=all&searchword={search_term}');
				break;
			case "2": // com_finder
				$searchURL = GSDHelper::route(JURI::base() . 'index.php?option=com_finder&q={search_term}');
				break;
			case "3": // custom URL
				$searchURL = trim($this->params->get('sitelinks_search_custom_url'));
				break;
		}

		// Generate JSON
		return $this->json->setData(array(
			"contentType" => "search",
			"siteurl"     => GSDHelper::getSiteURL(),
			"searchurl"   => $searchURL
		))->generate();
	}

	/**
	 *  Returns Site Logo structured data markup
	 *  https://developers.google.com/search/docs/data-types/logo
	 *
	 *  @return  string on success, boolean on fail
	 */
	private function getJSONLogo()
	{
		if (!$logo = GSDHelper::getSiteLogo())
		{
			return;
		}

		// Generate JSON
		return $this->json->setData(array(
			"contentType" => "logo",
			"url"         => GSDHelper::getSiteURL(),
			"logo"        => $logo
		))->generate();
	}

	

	/**
	 *  Returns Custom Code
	 *
	 *  @return  string  The Custom Code
	 */
	private function getCustomCode()
	{
		return trim($this->params->get('customcode'));
	}

	/**
	 *  Load required classes
	 *
	 *  @return  bool 
	 */
	private function loadClasses()
	{
		if (!@include_once(JPATH_PLUGINS . '/system/nrframework/autoload.php'))
		{
			return false;
		}
		
		JLoader::register('GSDHelper', JPATH_ADMINISTRATOR . '/components/com_gsd/helpers/helper.php');
		JLoader::register('GSDJSON', JPATH_ADMINISTRATOR . '/components/com_gsd/helpers/json.php');

		return class_exists('GSDHelper') && class_exists('GSDJSON');
	}

	/**
	 *  Loads Helper files
	 *
	 *  @return  boolean
	 */
	private function getHelper()
	{
		// Return if is helper is already loaded
		if ($this->init)
		{
			return true;
		}

		// Return if we are not in frontend
		if (!$this->app->isSite())
		{
			return false;
		}

		// Only on HTML documents
		if (JFactory::getDocument()->getType() != 'html')
		{
			return false;
		}

		// Load required classes
		if (!$this->loadClasses())
		{
			return false;
		}

		// Return if current page is an XML page
		if (NRFramework\Functions::isFeed() || $this->app->input->getInt('print', 0))
		{
			return false;
		}

		// Initialize JSON Generator Class
		$this->json = new GSDJSON();

		return ($this->init = true);
	}
}
