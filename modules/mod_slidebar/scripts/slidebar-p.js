/**
* slidebar.js
* (c) Copyright Marcofolio.net
*
* For more great Joomla! extensions, please check http://www.marcofolio.net/
*
* Prototype edition
*/

document.observe("dom:loaded", function() {
});

function slideSlideBar(){
		
	if(clicked==true){
		if(isExtended==0){
			new Effect.Morph(proto_slideBarContents, {
	  					style: {width:conWidth + 'px'}, // CSS Properties
	  					duration: slideSpeed // Core Effect properties
						});
						
			$(proto_slideBarTabImage).writeAttribute('src', $(proto_slideBarTabImage).readAttribute('src').replace(/(\.[^.]+)$/, '-active$1'));
			isExtended=1;
		}
		
		else{
		
		new Effect.Morph(proto_slideBarContents, {
	  					style: 'width: 0px', // CSS Properties
	  					duration: slideSpeed // Core Effect properties
						});
					
			$(proto_slideBarTabImage).writeAttribute('src', $(proto_slideBarTabImage).readAttribute('src').replace(/-active(\.[^.]+)$/, '$1'));
			isExtended=0;
		}
	clicked=false;
	}
	else{
		if(isExtended==0){
        // PHP has already set the width to 0
		}
		else{
			new Effect.Morph(proto_slideBarContents, {
	  					style: {width:conWidth + 'px'}, // CSS Properties
	  					duration: 0 // Core Effect properties
						});
			new Effect.Morph(proto_slideBar, {
	  					style: {width:fullWidth + 'px'}, // CSS Properties
	  					duration: 0 // Core Effect properties
						});
		}
	}
}