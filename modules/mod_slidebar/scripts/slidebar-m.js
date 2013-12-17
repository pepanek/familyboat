/**
* slidebar.js
*
* (c) Copyright 2012
* Adam Kempenich
* coder12.com
*
* Mootools edition
*/

window.addEvent('domready', function() {

  function slideSlideBar() {
          
    var myHorizontalSlide = new Fx.Tween(proto_slideBarContents, {duration: slideSpeed});

    if(clicked==true){
      if(isExtended==0){
        myHorizontalSlide.start('width', conWidth + 'px');
        isExtended = 1;
            
        $(proto_slideBarTabImage).setProperty('src', $(proto_slideBarTabImage).get('src').replace(/(\.[^.]+)$/, '-active$1')); 

      }
      else{
        myHorizontalSlide.start('width', '0px');
        isExtended = 0;
            
        $(proto_slideBarTabImage).setProperty('src', $(proto_slideBarTabImage).get('src').replace(/-active(\.[^.]+)$/, '$1')); 
      }
      clicked=false;
    }
    else{
      if(isExtended==0){
        // PHP has already set the width to 0
      }
      else{
        myHorizontalSlide.start('width', '0px'); // Need to queue to do automatically
        myHorizontalSlide.start('width', '0px'); // Need to queue to do automatically and also change slideBar div
      }
    }
  }
  window.slideSlideBar = slideSlideBar;
});