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

defined('_JEXEC') or die('Restricted Access');

/**
 *  Google Structured Data JSON generator
 */
class GSDJSON
{
	/**
	 *  Content Type Data
	 *
	 *  @var  object
	 */
	private $data;

    /**
     *  List of available content types
     *
     *  @var  array
     */
    public $contentTypes = array(
        
        'article'
    );

	/**
	 *  Class Constructor
	 *
	 *  @param  object  $data
	 */
	public function __construct($data = null)
	{
		$this->setData($data);
	}

	/**
	 *  Set Data
	 *
	 *  @param  array  $data
	 */
	public function setData($data)
	{
		if (!is_array($data))
		{
			return;
		}

		$this->data = new JRegistry($data);
		return $this;
	}

	/**
	 *  Get Content Type JSON
	 *
	 *  @return  string
	 */
	public function generate()
	{
		$contentTypeMethod = "contentType" . $this->data->get("contentType");

		if (!method_exists($this, $contentTypeMethod))
		{
			return;
		}

		// Call Method
		if (!$result = $this->$contentTypeMethod())
		{
			return;
		}

		$json = '
            <script type="application/ld+json">
            {
                ' . implode(",", $result) . '
            }
            </script>';

		// Add Custom Code
		$customCode = $this->data->get("custom", null);
		if (!empty($customCode) && strpos($customCode, '</script>') !== false)
		{
			$json .= "\n" . $customCode . "\n";
		}

		return $json;
	}

    /**
     *  Returns Breadcrumbs Content Type
     *
     *  @return  string
     */
    private function contentTypeBreadcrumbs()
    {
        $crumbsData = array();
        $crumbs = $this->data->get("crumbs");
        
        if (!is_array($crumbs))
        {
            return;
        }

        foreach ($crumbs as $key => $value)
        {
            $crumbsData[] = '{
                    "@type": "ListItem",
                    "position": ' . ($key + 1) . ',
                    "item": {
                        "@id":  "' . $value->link . '",
                        "name": "' . $value->name . '"
                    }
                }';
        }

        $json[] = '"@context": "https://schema.org",
                "@type": "BreadcrumbList",
                "itemListElement": [' . implode(",", $crumbsData) . ']';

        return $json;
    }

    /**
     *  Returns Site Name Content Type
     *  https://developers.google.com/structured-data/site-name
     *
     *  @return  string on success, boolean on fail
     */
    private function contentTypeSiteName()
    {
        $json[] = '"@context": "https://schema.org",
                "@type": "WebSite",
                "name": "' . $this->data->get("name") . '",
                "url": "' . $this->data->get("url") . '"';

        if ($this->data->get("alt"))
        {
            $json[] = '
                "alternateName": "' . $this->data->get("alt") . '"';
        }

        return $json;
    }

    /**
     *  Returns Sitelinks Searchbox Content Type
     *  https://developers.google.com/search/docs/data-types/sitelinks-searchbox
     *
     *  @return  string on success, boolean on fail
     */
    private function contentTypeSearch()
    {
        $json[] = '"@context": "https://schema.org",
                "@type": "WebSite",
                "url": "' . $this->data->get("siteurl") . '",
                "potentialAction": {
                    "@type": "SearchAction",
                    "target": "' . $this->data->get("searchurl") . '",
                    "query-input": "required name=search_term"
                }';

        return $json;
    }

    /**
     *  Returns Site Logo Content Type
     *  https://developers.google.com/search/docs/data-types/logo
     *
     *  @return  string on success, boolean on fail
     */
    private function contentTypeLogo()
    {
        $json[] = '"@context": "https://schema.org",
                "@type": "Organization",
                "url": "' . $this->data->get("url") . '",
                "logo": "' . $this->data->get("logo") . '"';

        return $json;
    }

	/**
	 *  Generates Article Content Type
	 *
	 *  @return  string
	 */
	private function contentTypeArticle()
	{
		$json[] = '"@context": "https://schema.org/",
                "@type": "Article",
                "mainEntityOfPage": {
                    "@type": "WebPage",
                    "@id": "' . $this->data->get("url") . '"
                },
                "headline": "' . $this->data->get("title") . '",
                "description": "' . $this->data->get("description") . '",
                "image": {
                    "@type": "ImageObject",
                    "url": "' . $this->data->get("image") . '",
                    "height": 800,
                    "width": 800
                }';

        

		// Author
		if ($this->data->get("authorName"))
		{
			$json[] = '
                "author": {
                    "@type": "Person",
                    "name": "' . $this->data->get("authorName") . '"
                }';
		}

		// Publisher
		if ($this->data->get("publisherName"))
		{
			$json[] = '
                "publisher": {
                    "@type": "Organization",
                    "name": "' . $this->data->get("publisherName") . '",
                    "logo": {
                        "@type": "ImageObject",
                        "url": "' . $this->data->get("publisherLogo") . '",
                        "width": 600,
                        "height": 60
                    }
                }';
		}

		$json[] = '
                "datePublished" : "' . $this->data->get("datePublished") . '",
                "dateCreated" : "' . $this->data->get("dateCreated") . '",
                "dateModified": "' . $this->data->get("dateModified") . '"';

		return $json;
	}

    
}

?>