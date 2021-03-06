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
JHtml::_('behavior.keepalive');
JHtml::_('bootstrap.tooltip');

$tpjquerystatus	= (int) $params->get('tploadjquery', 0);
$document = JFactory::getDocument();
$document->addStyleSheet(JURI::base(true) . "/modules/mod_poplogin/assets/mod_poplogin.css", "text/css");

$ie7hack = '<!--[if IE 7]>' ."\n";
$ie7hack .= '<style type="text/css">.tpsignin {background-image:none!important;}</style>' ."\n";
$ie7hack .= '<![endif]-->' ."\n";
$document->addCustomTag($ie7hack);

// load jquery lib
JHtml::_('jquery.framework');
$document->addScript(JURI::base(true) . "/modules/mod_poplogin/assets/mod_poplogin.js", "text/javascript");

?>
<script type="text/javascript">
if (typeof jQuery == 'undefined') {
document.write('Your template does\'t have jQuery lib installed. Please enable jQuery from the module backend parameters to make it work'); 
}
</script>

<?php echo $params->get('posttext'); ?>

<?php if ($type == 'logout') : ?>
	<form action="<?php echo JRoute::_('index.php', true, $params->get('usesecure')); ?>" method="post" id="login-form">

		<input type="submit" name="Submit" class="poplogout" value="<?php echo JText::_('JLOGOUT'); ?>" />
		<input type="hidden" name="option" value="com_users" />
		<input type="hidden" name="task" value="user.logout" />
		<input type="hidden" name="return" value="<?php echo $return; ?>" />
		<?php echo JHtml::_('form.token'); ?>
	</form>
<?php else : ?>

<a href="#" rel="tppoplogin" class="poplogin"><?php echo JText::_('Login') ?></a>
<!-- TPPopLogin Module - Another Quality Freebie from TemplatePlazza.com -->
<div id="tppoplogin" class="popbox">
	<div class="tpsignin"><?php echo JText::_('SIGNINORREGISTER') ?></div>
	<div class="tpdiv1">
		<div class="tppoploginavatar"><img src="modules/mod_poplogin/assets/avatar.png" alt="Avatar" /></div>
		<div class="tppoploginh1"><?php echo JText::_('NOTYETREGISTERED'); ?></div>
		<p> <?php echo JText::_('JOINNOW'); ?></p>
    
		<p><?php echo $params->get('pretext'); ?></p>
		<p><?php echo $params->get('posttext'); ?></p>
		<p class="tppoploginremember">
		<span>
			<a href="<?php echo JRoute::_( 'index.php?option=com_users&view=reset' ); ?>">
				<?php echo JText::_('FORGOT_YOUR_PASSWORD'); ?></a>
		</span> - 
		<span>
			<a href="<?php echo JRoute::_( 'index.php?option=com_users&view=remind' ); ?>">
				<?php echo JText::_('FORGOT_YOUR_USERNAME'); ?></a>
		</span>
		</p>
    <?php
		$usersConfig = JComponentHelper::getParams('com_users');
		if ($usersConfig->get('allowUserRegistration')) : ?>
			<div class="tppopsigninbutton">
				<a href="<?php echo JRoute::_( 'index.php?option=com_users&view=registration' ); ?>">
					<?php echo JText::_('SIGNUP'); ?></a>
			</div>
		<?php endif; ?>

	</div>
	<div class="tpdiv2">
		<form action="<?php echo JRoute::_( 'index.php', true, $params->get('usesecure')); ?>" method="post" name="login" id="form-login" >

			<div class="tppoplogin">
				<span><?php echo JText::_('Username') ?></span>
				<input id="username" type="text" name="username" class="inputbox" alt="username" size="12" autocomplete="off" />
			</div>
			<div class="tppoplogin">
				<span><?php echo JText::_('Password') ?></span>
				<input id="passwd" type="password" name="password" class="inputbox" size="18" alt="password" />
			</div>
    
			<?php if(JPluginHelper::isEnabled('system', 'remember')) : ?>
			<div class="tppoploginremember">
				<input id="modlgn_remember" type="checkbox" name="remember" value="yes" alt="<?php echo JText::_('REMEMBER_ME') ?>" />
				<?php echo JText::_('REMEMBER_ME') ?></div>
			<?php endif; ?>
			<div>
				<input type="submit" name="Submit" class="tppoploginbutton" value="<?php echo JText::_('JLOGIN') ?>" />
			</div>
	
			<input type="hidden" name="option" value="com_users" />
			<input type="hidden" name="task" value="user.login" />
			<input type="hidden" name="return" value="<?php echo $return; ?>" />
			<?php echo JHtml::_('form.token'); ?>
		</form>
	</div>
	<div style="clear: both;"></div>
</div>
<?php endif; ?>
