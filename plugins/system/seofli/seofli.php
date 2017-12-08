<?php
/**
 * @Copyright
 * @package        SEOFLI - SEO Friendly Links and Images for Joomla! 3.x
 * @author         Viktor Vogel <admin@kubik-rubik.de>
 * @version        3.3.3 - 2017-08-13
 * @link           https://joomla-extensions.kubik-rubik.de/seofli-seo-friendly-links-and-images
 *
 * @license        GNU/GPL
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
defined('_JEXEC') or die('Restricted access');

class PlgSystemSeofli extends JPlugin
{
	function __construct(&$subject, $config)
	{
		// First check whether version requirements are met for this specific version
		if($this->checkVersionRequirements(false, '3.2', 'SEO Friendly Links and Images', 'plg_system_seofli', JPATH_ADMINISTRATOR))
		{
			parent::__construct($subject, $config);
			$this->loadLanguage('', JPATH_ADMINISTRATOR);
		}
	}

	/**
	 * Checks whether all requirements are met for the execution
	 * Written generically to be used in all Kubik-Rubik Joomla! Extensions
	 *
	 * @param  boolean $admin                 Allow backend execution - true or false
	 * @param  string  $version_min           Minimum required Joomla! version - e.g. 3.2
	 * @param  string  $extension_name        Name of the extension of the warning message
	 * @param  string  $extension_system_name System name of the extension for the language file loading - e.g.
	 *                                        plg_system_xxx
	 * @param  string  $jpath                 Path of the language file - JPATH_ADMINISTRATOR or JPATH_SITE
	 *
	 * @return bool
	 */
	private function checkVersionRequirements($admin, $version_min, $extension_name, $extension_system_name, $jpath)
	{
		$execution = true;
		$version = new JVersion();

		if(!$version->isCompatible($version_min))
		{
			$execution = false;
			$backend_message = true;
		}

		if(empty($admin))
		{
			if(JFactory::getApplication()->isAdmin())
			{
				$execution = false;

				if(!empty($backend_message))
				{
					$this->loadLanguage($extension_system_name, $jpath);
					JFactory::getApplication()->enqueueMessage(JText::sprintf('KR_JOOMLA_VERSION_REQUIREMENTS_NOT_MET', $extension_name, $version_min), 'warning');
				}
			}
		}

		return $execution;
	}

	/**
	 * Adds the data in the trigger onAfterRender
	 */
	public function onAfterRender()
	{
		if(JFactory::getDocument()->getType() != 'html')
		{
			return;
		}

		if($this->params->get('exclude_editor'))
		{
			if(class_exists('JEditor', false))
			{
				return;
			}
		}

		if($this->params->get('exclude_components'))
		{
			if($this->excludeLoadedComponent())
			{
				return;
			}
		}

		if($this->params->get('edit_links') OR $this->params->get('edit_images'))
		{
			$body = $body_only = JFactory::getApplication()->getBody(false);

			preg_match('@<body[^>]*>.*</body>@Uis', $body, $body_matches);

			if(!empty($body_matches[0]))
			{
				$body_only = $body_matches[0];
			}

			if($this->params->get('edit_links'))
			{
				$this->editLinks($body_only, $body);
			}

			if($this->params->get('edit_images'))
			{
				$this->editImages($body_only, $body);
			}

			JFactory::getApplication()->setBody($body);
		}
	}

	/**
	 * Checks whether plugin should be processed in the loaded component
	 *
	 * @return bool
	 */
	private function excludeLoadedComponent()
	{
		$option = JFactory::getApplication()->input->getWord('option');
		$exclude_components = array_map('trim', explode("\n", $this->params->get('exclude_components')));
		$loaded = false;
		$exclude = false;

		foreach($exclude_components as $exclude_component)
		{
			if($option == $exclude_component)
			{
				$loaded = true;
				break;
			}
		}

		if($this->params->get('exclude_components_toggle'))
		{
			if($loaded == false)
			{
				$exclude = true;
			}

			return $exclude;
		}

		if($loaded == true)
		{
			$exclude = true;
		}

		return $exclude;
	}

	/**
	 * Edits links depending on the settings
	 *
	 * @param $body_only
	 * @param $body
	 */
	private function editLinks($body_only, &$body)
	{
		preg_match_all('@(?!<a\s*[\"\'])<a\s?([^>\\\\]*)>.*</a>@Uis', $body_only, $links);

		foreach($links[0] as $count => $link)
		{
			$linked_text = htmlspecialchars(trim(strip_tags($links[0][$count])));

			if(preg_match('@<img\s.*src\s*=\s*[\"\'](.*)[\"\'].*\s?/>@Uis', $link, $link_image))
			{
				$linked_text = $this->getImageName($link_image[1]);
			}

			if(empty($linked_text))
			{
				if(preg_match('@href\s*=\s*[\"\'](.*)[\"\']@Ui', $link, $link_href))
				{
					$linked_text = $this->getImageName($link_href[1], 'link');
				}
			}

			if(preg_match('@<a[^>]*(title\s*=\s*[\"\'](.*)[\"\'])[^>]*>@Uis', $links[0][$count], $link_title_text))
			{
				if(empty($link_title_text[2]) OR $this->params->get('overwrite_links'))
				{
					$link_new = str_replace($link_title_text[1], 'title="'.trim($linked_text).'"', $link);
					$body = str_replace($link, $link_new, $body);
				}

				continue;
			}

			$link_new = str_replace($links[1][$count], $links[1][$count].' title="'.trim($linked_text).'"', $link);
			$body = str_replace($link, $link_new, $body);
		}
	}

	/**
	 * Generates the image name for the attributes
	 *
	 * @param string $image
	 * @param string $type
	 *
	 * @return string
	 */
	private function getImageName($image, $type = 'image')
	{
		$image_name = basename($image);

		if($type == 'image')
		{
			$image_clean = $this->cleanImageName($image);

			if(empty($image_clean))
			{
				// Image with invalid name (e.g. no extension) - return unchanged because it could be a placeholder
				return $image;
			}

			$image_name = basename(substr($image_clean, 0, strrpos($image_clean, '.')));
		}

		return htmlspecialchars(ucwords(str_replace(array('_', '-', '+', '=', '#', '?'), ' ', $image_name)));
	}

	/**
	 * Cleans the image name from parameters and checks whether the name has a valid extension
	 *
	 * @param string $image
	 *
	 * @return mixed
	 */
	private function cleanImageName($image)
	{
		if(strrpos($image, '?') !== false)
		{
			$image = substr($image, 0, strpos($image, '?'));
		}

		// Do we have a valid image name? If not, return false, not the changed name
		if(!preg_match('@\.(jpe?g|png|gif|bmp)$@i', $image))
		{
			return false;
		}

		return $image;
	}

	/**
	 * Edits images depending on the settings
	 *
	 * @param $body_only
	 * @param $body
	 */
	private function editImages($body_only, &$body)
	{
		preg_match_all('@<img\s(.*src\s*=\s*[\"\'](.*)[\"\'].*)\s?/>@Uis', $body_only, $images);

		foreach($images[0] as $count => $image)
		{
			// Set initial new image which will replace the original image
			$image_new = $image;

			$this->addImageAlt($image_new, $images, $count);

			if($this->params->get('edit_images') == 2)
			{
				$this->addImageTitle($image_new, $images, $count);
			}

			if($this->params->get('add_size'))
			{
				$this->addImageSize($image_new, $images, $count, $image);
			}

			$body = str_replace($image, $image_new, $body);
		}
	}

	/**
	 * Adds the alt attribute to the image tag
	 *
	 * @param $image_new
	 * @param $images
	 * @param $count
	 */
	private function addImageAlt(&$image_new, &$images, $count)
	{
		if(preg_match('@alt\s*=\s*[\"\'](.*)[\"\']@Uis', $image_new, $alt_text))
		{
			if(empty($alt_text[1]) OR $this->params->get('overwrite_images'))
			{
				$image_name = $this->getImageName($images[2][$count]);
				$image_new = str_replace($alt_text[0], 'alt="'.$image_name.'"', $image_new);
				$images[1][$count] = str_replace($alt_text[0], 'alt="'.$image_name.'"', $images[1][$count]);
			}

			return;
		}

		$image_with_alt = $images[1][$count].' alt="'.$this->getImageName($images[2][$count]).'"';
		$image_new = str_replace($images[1][$count], $image_with_alt, $image_new);
		$images[1][$count] = $image_with_alt;
	}

	/**
	 * Adds the title attribute to the image tag
	 *
	 * @param $image_new
	 * @param $images
	 * @param $count
	 */
	private function addImageTitle(&$image_new, &$images, $count)
	{
		if(preg_match('@title\s*=\s*[\"\'](.*)[\"\']@Uis', $image_new, $title_text))
		{
			if(empty($title_text[1]) OR $this->params->get('overwrite_images'))
			{
				$image_name = $this->getImageName($images[2][$count]);
				$image_new = str_replace($title_text[0], 'title="'.$image_name.'"', $image_new);
				$images[1][$count] = str_replace($title_text[0], 'title="'.$image_name.'"', $images[1][$count]);
			}

			return;
		}

		$image_with_title = $images[1][$count].' title="'.$this->getImageName($images[2][$count]).'"';
		$image_new = str_replace($images[1][$count], $image_with_title, $image_new);
		$images[1][$count] = $image_with_title;
	}

	/**
	 * Adds the size of the loaded image to the image tag
	 *
	 * @param $image_new
	 * @param $images
	 * @param $count
	 * @param $image
	 */
	private function addImageSize(&$image_new, $images, $count, $image)
	{
		$url_base = JUri::base();
		$url_base_true = JUri::base(true);

		strrpos($image, 'width=') === false ? $width_text = false : $width_text = true;
		strrpos($image, 'height=') === false ? $height_text = false : $height_text = true;

		if(empty($width_text) OR empty($height_text))
		{
			if(substr($images[2][$count], 0, 4) == 'http')
			{
				$image_path_rel = false;

				if(substr($images[2][$count], 0, strlen($url_base)) == $url_base)
				{
					$image_path_rel = str_replace($url_base, '', $images[2][$count]);
				}
			}
			else
			{
				$image_path_rel = $images[2][$count];

				if(substr($images[2][$count], 0, 1) == '/')
				{
					$image_path_rel = substr($images[2][$count], 1);
				}

				if(!empty($url_base_true))
				{
					$image_path_rel = str_replace($url_base_true.'/', '', $images[2][$count]);
				}
			}

			if(!empty($image_path_rel))
			{
				if($image_path_clean = $this->cleanImageName($image_path_rel))
				{
					$image_size = array();

					if(is_file(JPATH_SITE.'/'.$image_path_clean))
					{
						$image_size = getimagesize(JPATH_SITE.'/'.$image_path_clean);
					}

					if(!empty($image_size))
					{
						$image_with_size = '';

						if(empty($width_text) AND empty($height_text))
						{
							$image_with_size = $images[1][$count].' '.$image_size[3];
						}
						elseif(empty($width_text))
						{
							$image_with_size = $images[1][$count].' width="'.$image_size[0].'"';
						}
						elseif(empty($height_text))
						{
							$image_with_size = $images[1][$count].' height="'.$image_size[1].'"';
						}

						$image_new = str_replace($images[1][$count], $image_with_size, $image_new);
					}
				}
			}
		}
	}
}
