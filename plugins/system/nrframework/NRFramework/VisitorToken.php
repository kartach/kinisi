<?php 

/**
 * @author          Tassos Marinos <info@tassos.gr>
 * @link            http://www.tassos.gr
 * @copyright       Copyright © 2017 Tassos Marinos All Rights Reserved
 * @license         GNU GPLv3 <http://www.gnu.org/licenses/gpl.html> or later
*/

namespace NRFramework;

defined('_JEXEC') or die('Restricted access');

class VisitorToken
{
   /**
     *  Class instance
     *
     *  @var  object
     */
    private static $instance;

	/**
	 *  Cookie Name
	 *
	 *  @var  string
	 */
	private $cookieName = "nrid";

	/**
	 *  Maximum age of visitors token id
	 *
	 *  @var  Integer
	 */
	private $expire = 90000000;

    /**
     *  Cookies Object
     *
     *  @var  object
     */
    private $cookies;

    /**
     *  Class constructor
     */
    private function __construct()
    {
        $this->cookies = \JFactory::getApplication()->input->cookie;

        $token = $this->cookies->get($this->cookieName, null);

        if ($token === null)
        {
            $this->store($this->create());
        }
    }

    /**
     *  Returns class instance
     *
     *  @return  object
     */
    public static function getInstance()
    {
        if (is_null(self::$instance))
        {
            self::$instance = new self();
        }

        return self::$instance;
    }

    /**
     *  Get a visitor's unique token id, if a token isn't set yet one will be generated.
     *
     *  @param   boolean   $forceNew  If true, force a new token to be created
     *  
     *  @return  string    The session token
     */
    public function get($forceNew = false)
    {
        return $this->cookies->get($this->cookieName);
    }

    /**
     *  Deprecated
     */
    public function getToken($forceNew = false)
    {
        return $this->get($forceNew);
    }

    /**
     *  Create a token-string
     *
     *  @param   integer $length  Length of string
     *
     *  @return  string  Generated token
     */
    private function create($length = 8)
    {
        return bin2hex(\JCrypt::genRandomBytes($length));
    }

    /**
     *  Deprecated
     */
    private function createToken($length = 8)
    {
        return $this->create($length);
    }

    /**
     *  Saves the cookie to the visitor's browser
     *
     *  @param   string  $value  Cookie Value
     *
     *  @return  void
     */
    private function store($value)
    {
        $this->cookies->set($this->cookieName, $value, time() + $this->expire, '/');
    }

    /**
     *  Deprecated
     */
    private function saveToken($value)
    {
        $this->store($value);
    }
}

?>