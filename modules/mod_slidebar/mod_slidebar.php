<?php
/**
* mod_slidebar.php ,v 2.1
* @copyright (C) 2012 Adam Kempenich, http://coder12.com
* Based on MFSlidebar by Marcofolio; http://www.marcofolio.net/
* Ported and upgraded by Adam Kempenich.
* http://coder12.com
*
* Joomla 1.6+ Module
* SlideBar (Based on MFSlideBar) allows you to display another module
* in a fancy sliding sidebar.
*/

/** ensure this file is being included by a parent file */
defined( '_JEXEC' ) or die( 'Direct Access to this location is not allowed.' );
	// Load the parameters
	$loadmodule 		= $params->def( 'loadmodule', 'slidebar' );
	$pos 				= $params->def( 'pos', 'left' );
	$toppos 			= $params->def( 'toppos', '140' );
	$theme 				= $params->def( 'theme', 'sleekWhite' );
	$type 				= $params->def( 'type', 'png' );
	$concolor 			= $params->def( 'concolor', 'rgba(221,221,221,1)' );
	$concolorgrad1 		= $params->def( 'concolorgrad1', 'rgba(190,190,190,0.8)' );
	$concolorgrad2 		= $params->def( 'concolorgrad2', 'rgba(221,221,221,1)' );
	$conwidth 			= $params->def( 'conwidth', '200' );
	$conheight 			= $params->def( 'conheight', '320' );
	$conpaddingleft		= $params->def( 'conpaddingleft', '10' );
	$conpaddingright	= $params->def( 'conpaddingright', '10' );
	$conpaddingtop  	= $params->def( 'conpaddingtop', '10' );
	$conpaddingbottom	= $params->def( 'conpaddingbottom', '10' );
	$retina 			= $params->def( 'retina', 'On' );
	$imgalt 			= $params->def( 'imgalt', 'SlideBar' );
	$cornerradius 		= $params->def( 'cornerradius', '15');
	$retinawidth		= $params->def( 'retinawidth', '28' );
	$retinaheight		= $params->def( 'retinaheight', '137' );
	$shadowradius 		= $params->def( 'shadowradius','5');
	$shadowx	 		= $params->def( 'shadowx','5');
	$shadowy 			= $params->def( 'shadowy','5');
	$shadowspread 		= $params->def( 'shadowspread','5');
	$shadowcolor 		= $params->def( 'shadowcolor','rgba(0,0,0,1)');
	$slidevertical		= $params->def( 'slidevertical','absolute');
	$widthdebug 		= $params->def( 'widthdebug', '1');
	$divwidth 			= $params->def( 'divwidth', '0');
	$jslibrary 			= $params->def( 'jslibrary', 'slidebar-jr6ro');
	$autoopen			= $params->def( 'autoopen', '0');
	$zindex				= $params->def( 'zindex', '999999');
	//$opacity			= $params->def( 'opacity', '1.0');
	$loadlibraries		= $params->def( 'loadlibraries', '1');
	$speed				= $params->def( 'speed', '500');
	$autosizing			= $params->def( 'autosizing', 'on');
	$module_id 			= $module->id;
	$imageOpen			= "modules/mod_slidebar/templates/$theme-$pos/slide-button.$type";
	$imageClose			= "modules/mod_slidebar/templates/$theme-$pos/slide-button-active.$type";
	$doc				= &JFactory::getDocument();
	
	// Get X/Y
	list($width, $height, $imgtype, $attr) = getimagesize("modules/mod_slidebar/templates/$theme-$pos/slide-button.$type");
	$filetype = $params->get('type', 'gif');

	// Convert old hex colors to new standards
	if ($concolor[0]!='#' && $concolor[0]!='r') {
		$concolor = '#' . $concolor;
	}
	if ($concolorgrad1[0]!='#' && $concolorgrad1[0]!='r') {
		$concolorgrad1 = '#' . $concolorgrad1;
	}
	if ($concolorgrad2[0]!='#' && $concolorgrad2[0]!='r') {
		$concolorgrad2 = '#' . $concolorgrad2;
	}
	if ($shadowcolor[0] != '#' && $shadowcolor[0] !='r') {
		$shadowcolor = '#' . $shadowcolor;
	}

	// Retina (X&Y/2)
	switch( $params->get('retina', 'Off' ) ){
	case "On" :
		$retinawidth = $width/2;
		$retinaheight = $height/2;
		break;
	default : // Leave images alone
		$retinawidth = $width;
		$retinaheight = $height;		
	break;
	}
	
	// Width=0 for formatting
	switch( $params->get('widthdebug', '0') ){
	case "1" : // Set the width to the retina width
		$divwidth = $retinawidth;
		break;
	default : // Change the width to the image width (Retina included)
		$divwidth = '0';
	break;
	}
	
	// Calculate the entire width of the DIV
	$truewidth = $params->get('conwidth', '200') + ($params->get('conpaddingleft', '10')+$params->get('conpaddingright', '10'));
	$truebarwidth = $truewidth + $retinawidth;

	// Move the curve to the opposing edge
	switch($params->get('pos', 'left')){
	case "right" : // Switch radius to right
			$radiusside = 'left';
		break;
	default: // Switch the radius to left
			$radiusside = 'right';
	break;
	}
	
	//Set the bar to be opened/closed initially
	switch($params->get('autoopen', '0')){
	case '0': // Bar is closed
		$initialWidth = 0;
		$initialImage = $imageOpen;
		break;
	default: // Bar is open
		$initialWidth = $truewidth;
		$initialImage = $imageClose;
		break;
	}

	// Load appropriate libraries
	switch( $params->get('jslibrary', 'slidebar-m') ){
		case "slidebar-p" : // Prototype
			if ($loadlibraries == '1')
				$doc->addScript("modules/mod_slidebar/libraries/prototype.js");
			if ($loadlibraries == '1')
				$doc->addScript("modules/mod_slidebar/libraries/effects.js");
			
			$leftright = "";	
			break;
			
		case "slidebar-m" : // MooTools
			if ($loadlibraries == '1')
				$doc->addScript("modules/mod_slidebar/libraries/mootools.js"); 

			$leftright = "";
			break;
	
		default : // jQuery
			if ($loadlibraries == '1')
				$doc->addScript("http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"); 
			if ($loadlibraries == '1')
				$doc->addScript("modules/mod_slidebar/libraries/jqueryeffects.js"); 
				
			$leftright = $params->get('pos', 'left');
			break;	
	}
	?>

	<!-- Send the initial container info to Javascript -->
	<script>
		var isExtended_<?php echo($module_id) ?> = <?php echo($autoopen) ?>; // Independent management of each bar's position.
		var clicked = false;
		var slideSpeed = <?php echo($speed) ?>;
		var isExtended = <?php echo($autoopen) ?>;
		var slideBarTab= '#slideBarTab_<?php echo($module_id) ?>';
		var slideBar = '#slideBar_<?php echo($module_id) ?>';
		var proto_slideBar = '#slideBar_<?php echo($module_id) ?>';
		var	slideBarContents= '#slideBarContents_<?php echo($module_id) ?>';
		var	slideBarTabImage= '#slideBarTabImage_<?php echo($module_id) ?>';
		var proto_slideBarContents= 'slideBarContents_<?php echo($module_id) ?>';
		var proto_slideBarTabImage= 'slideBarTabImage_<?php echo($module_id) ?>';
		var tabclosed = 'modules/mod_slidebar/templates/<?php echo($theme); ?>-<?php echo($pos); ?>/slide-button.<?php echo($type) ?>';
		var tabopened = 'modules/mod_slidebar/templates/<?php echo($theme); ?>-<?php echo($pos); ?>/slide-button-active.<?php echo($type) ?>';
		var autoSizing = '<?php echo($autosizing) ?>';
		if( autoSizing == 'On'){
			var conWidth = '<?php echo($truewidth) ?>';
			var conHeight = '<?php echo($conheight) ?>';
		}
		else{
			var conWidth = '<?php echo($truewidth) ?>';
			var conHeight = '<?php echo($conheight) ?>';
		}
		var fullWidth = conWidth + <?php echo($retinawidth) ?>;
	</script>

	<!--Load the CSS parameters -->
	<script type="text/javascript" src="modules/mod_slidebar/scripts/<?php echo($jslibrary); ?>.js"></script>
	<div style="pointer-events: none; 
		text-align:left;
		background-color:transparent !important; 
		position: <?php echo($slidevertical); ?>; 
		width: <?php echo($truebarwidth); ?>px;
		height: auto; 
		top: <?php echo($toppos); ?>px;
		<?php echo($pos); ?>:0px;
		z-index:<?php echo($zindex); ?>;
		" 
	id="slideBar_<?php echo($module_id) ?>">	
		<div style="pointer-events: visible;
		 	width:<?php echo($initialWidth) ?>px; 
		 	display:hidden;overflow:hidden !important;
		 	float:<?php echo($pos); ?>;
		 	overflow:hidden !important; 
		 	height:<?php echo($conheight); ?>px; 
		 	background-color: <?php echo($concolor);  ?>; 
		 	background: -webkit-gradient(linear, left top, right top, from(<?php echo($concolorgrad1);  ?>), to(<?php echo($concolorgrad2);  ?>)); 
		 	background: -webkit-linear-gradient(left, <?php echo($concolorgrad1);  ?>, <?php echo($concolorgrad2);  ?>);   
		 	background: -moz-linear-gradient(left, <?php echo($concolorgrad1);  ?>, <?php echo($concolorgrad2);  ?>); 
		 	background: -ms-linear-gradient(left, <?php echo($concolorgrad1);  ?>, <?php echo($concolorgrad2);  ?>);   
		 	background: -o-linear-gradient(left, <?php echo($concolorgrad1);  ?>, <?php echo($concolorgrad2);  ?>); 
	 		-webkit-border-bottom-<?php echo($radiusside); ?>-radius: <?php echo($cornerradius); ?>px; 
		 	-moz-border-radius-bottom<?php echo($radiusside); ?>: <?php echo($cornerradius); ?>px; 
		 		 border-bottom-<?php echo($radiusside); ?>-radius: <?php echo($cornerradius); ?>px; 
		 	-webkit-box-shadow: <?php echo($shadowx); ?>px <?php echo($shadowy); ?>px <?php echo($shadowradius); ?>px <?php echo($shadowspread); ?>px <?php echo($shadowcolor); ?>; 
		 			box-shadow: <?php echo($shadowx); ?>px <?php echo($shadowy); ?>px <?php echo($shadowradius); ?>px <?php echo($shadowspread); ?>px <?php echo($shadowcolor); ?>;" 
		id="slideBarContents_<?php echo($module_id) ?>">
			<div style="pointer-events: visible; 
				width:<?php echo($conwidth); ?>px; 
				padding-left:<?php echo($conpaddingleft); ?>px;
				padding-right:<?php echo($conpaddingright); ?>px;
				padding-top:<?php echo($conpaddingtop); ?>px;
				padding-bottom:<?php echo($conpaddingbottom); ?>px;" 
			id="slideBarContentsInner_<?php echo($module_id) ?>">
				<?php
   					jimport('joomla.application.module.helper');
   					$myblurb_modules = &JModuleHelper::getModules( $loadmodule );
  					 /* loop through the array and render their output */
  					 foreach ($myblurb_modules as $myblurb) {
   					 echo JModuleHelper::renderModule( $myblurb );
  				}?>
  			</div>
		</div>

		<!-- Send the current container info to JS after the specific bar is clicked -->
			<a onClick="clicked = true;
				isExtended = isExtended_<?php echo($module_id) ?>;
				if(isExtended_<?php echo($module_id) ?> == 1){
				isExtended_<?php echo($module_id) ?> = 0;
				}
				else{
				isExtended_<?php echo($module_id) ?> = 1;
				}
				slideBarTab= '#slideBarTab_<?php echo($module_id) ?>';
				slideBarContents= '#slideBarContents_<?php echo($module_id) ?>';
				slideBarTabImage= '#slideBarTabImage_<?php echo($module_id) ?>';
				proto_slideBarContents= 'slideBarContents_<?php echo($module_id) ?>';
				proto_slideBarTabImage= 'slideBarTabImage_<?php echo($module_id) ?>';
				slideSpeed = <?php echo($speed) ?>;
				var autoSizing = '<?php echo($autosizing) ?>';
				if(autoSizing == 'On'){
					conWidth ='<?php echo($truewidth) ?>';
					conHeight = '<?php echo($conheight) ?>';
				}
				else{
					conWidth ='<?php echo($truewidth) ?>';
					conHeight = '<?php echo($conheight) ?>';
				}
				fullWidth = conWidth + <?php echo($retinawidth) ?>;
				tabclosed = 'modules/mod_slidebar/templates/<?php echo($theme); ?>-<?php echo($pos); ?>/slide-button.<?php echo($type) ?>';
				tabopened = 'modules/mod_slidebar/templates/<?php echo($theme); ?>-<?php echo($pos); ?>/slide-button-active.<?php echo($type) ?>';
				javascript:slideSlideBar();"
			style="-webkit-user-select: none; /* Safari, Chrome */
    			-khtml-user-select: none; /* Konqueror */
    			-moz-user-select: none; /* Firefox */
    			-ms-user-select: none; /* IE */
    			user-select: none; /* CSS3 */
    			pointer-events: visible; 
    			cursor:pointer; 
    			float:<?php echo($pos); ?>;
    			height:<?php echo($retinaheight); ?>px;
    			width:<?php echo($divwidth); ?>px;" id="slideBarTab">
    		<img src="<?php echo($initialImage) ?>" 
    			alt="<?php echo($imgalt);?>" title="<?php echo($imgalt);?>" 
    			width="<?php echo($retinawidth); ?>" 
    			height="<?php echo($retinaheight); ?>" 
    		id="slideBarTabImage_<?php echo($module_id) ?>" /></a>
	</div>
	<!-- End SlideBar - Joomla! Module by Coder12 and Marcofolio -->
<?php
?>