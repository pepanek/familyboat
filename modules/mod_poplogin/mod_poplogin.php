<?php
/**
 * @version		$Id: mod_poplogin.php 2.0 - Oct 2012
 * @www.templateplazza.com
 * @package		Joomla.Site
 * @joomla version: Joomla 3.0
 * @subpackage	mod_poplogin
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

// Include the syndicate functions only once
require_once __DIR__ . '/helper.php';

$params->def('greeting', 1);

$type	= modPopLoginHelper::getType();
$return	= modPopLoginHelper::getReturnURL($params, $type);
$user	= JFactory::getUser();
$layout = $params->get('layout', 'default');

// Logged users must load the logout sublayout
if (!$user->guest)
{
	$layout .= '_logout';
}

require JModuleHelper::getLayoutPath( 'mod_poplogin', $layout);
