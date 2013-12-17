/**
* slidebar-j.js
*
* (c) Copyright 2012
* Adam Kempenich
* coder12.com
*
* Jquery edition
*/

var $jQuery = jQuery.noConflict();
	
$jQuery(document).ready(function() {

	function slideSlideBar() {
		if(clicked==true){
		if(isExtended==0){
			$jQuery(slideBarTabImage).attr('src', $jQuery(slideBarTabImage).attr('src').replace(/(\.[^.]+)$/, '-active$1'));
			$jQuery(slideBarContents).animate({width:conWidth + 'px'}, slideSpeed);
			isExtended = 1;
		}
		
    	else{
			$jQuery(slideBarTabImage).attr('src', $jQuery(slideBarTabImage).attr('src').replace(/-active(\.[^.]+)$/, '$1'));
			$jQuery(slideBarContents).animate({width: '0px'}, slideSpeed);
			isExtended = 0;
		}
		clicked=false;
		}
		else{
			if(isExtended==0){
			}
	    	else{
				$jQuery(slideBarContents).animate({width:conWidth + 'px'}, 0);
				$jQuery(slideBar).animate({width:fullWidth + 'px'}, 0);
			}
		}
	}

	$jQuery(slideBarTab).click(slideSlideBar());
	window.slideSlideBar = slideSlideBar;
});