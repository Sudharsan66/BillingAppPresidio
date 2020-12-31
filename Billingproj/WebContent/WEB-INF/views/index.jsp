<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CODA | STORE</title>
<link rel="stylesheet" href="https://bootswatch.com/4/sandstone/bootstrap.min.css">
<style>


		img.bg {
			/* Set rules to fill background */
			min-height: 100%;
			min-width: 1024px;
			
			/* Set up proportionate scaling */
			width: 100%;
			height: auto;
			
			/* Set up positioning */
			position: fixed;
			top: 0;
			left: 0;
		}
		
		@media screen and (max-width: 1024px){
			img.bg {
				left: 50%;
				margin-left: -512px; }
		}
		
		#page-wrap { position: relative; width: 600px; height:600px; margin: 50px auto; padding: 20px; background: white; -moz-box-shadow: 0 0 20px black; -webkit-box-shadow: 0 0 20px black; box-shadow: 0 0 20px black; }
		p { font: 15px/2 Georgia, Serif; margin: 0 0 30px 0; text-indent: 40px; }
		
@-webkit-keyframes animation{from{opacity:0; -webkit-transform:scale(1.2) rotateX(45deg);transform:scale(1.2) rotateX(45deg);} to{ }}

@-webkit-keyframes animation2{from{opacity:0; -webkit-transform:scale(1.2) rotateX(45deg);transform:scale(1.2) rotateX(45deg);} to{ }}



body {
    background:#1c1c1c;
           /*-webkit-perspective:1000px;*/
           overflow:hidden;

cursor: url(https://www.freeiconspng.com/uploads/arrow-graph-growth-21.png), auto;
}


.slider div p{color:#1c1c1c;position:absolute;bottom:-65px; font-family:font; font-size:22px;}
.slider{

     -webkit-animation:animation ease 1s;animation-delay:.8s;animation-fill-mode:backwards;
 

    margin:60px auto 0 auto;
    height:360px;
    width:300px;
    padding:40px;
    top:100px;

       perspective:1000px;
       transition:ease-in-out .2s;
             /*-webkit-transform:rotateX(45deg);
             -webkit-transform-style:preserve-3d;
                 position:absolute;*/
}
/*.slider:active{ -webkit-transform:rotateZ(10deg);}*/


.slide img { text-align:center;width:100%; height:100%; -webkit-user-drag:none;user-drag:none;-moz-user-drag:none; border-radius:2px; }


.slide{

    

-webkit-user-select:none;
user-select:none;
  -moz-user-select:none;
    position:absolute;
        height:300px;
    width:300px;

box-shadow: 0px 10px 30px 0px rgba(0,0,0,0.3);
background:#fcfcfc;
             -webkit-transform-style:preserve-3d;
              transform-style:preserve-3d;
  -moz-transform-style:preserve-3d;
             text-align:center;
             /*overflow:hidden;*/
             border:12px white solid;
             box-sizing:border-box;
             border-bottom:55px white solid;
             border-radius:5px;


    
}
.transition {
     -webkit-transition: cubic-bezier(0,1.95,.49,.73) .4s ;
   -moz-transition: cubic-bezier(0,1.95,.49,.73) .4s ;
      transition: cubic-bezier(0,1.95,.49,.73) .4s ;
}
</style>
</head>
<body>

<hr>
<img src="https://thumbs.dreamstime.com/b/autumn-thanksgiving-background-pumpkins-maple-leaves-turquoise-table-above-autumn-thanksgiving-background-pumpkins-160472384.jpg" class="bg">
	
	<div id="page-wrap">
<a href="login" class="btn btn-primary ">LOGIN--></a>
              <div class="slider">
        <div class="slide" ><img src="https://www.freeiconspng.com/uploads/arrow-graph-growth-21.png" /><p>Generate Reports</p></div>
        <div class="slide"><img src="https://www.freeiconspng.com/uploads/shopping-basket-icon-24.png" /><p>Easy Shopping</p></div>
        <div class="slide"><img src="https://www.freeiconspng.com/uploads/user-add-icon---shine-set-add-new-user-add-user-30.png" /><p>Free Registration</p></div>
        <div class="slide" ><img src="https://www.freeiconspng.com/uploads/user-interface-checklist-icon--ios-7-iconset--icons8-6.png" /><p>Easy Stock Management</p></div>
    </div>
<footer class="bg-light text-center text-lg-start">
              <!-- Copyright -->
 <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2)">
                © 2020 Copyright:
                <a class="text-dark" href="https://mdbootstrap.com/">P SIVA KRISHNA REDDY,</a>
                <a class="text-dark" href="https://mdbootstrap.com/">GOWTHAM S,</a>
                <a class="text-dark" href="https://mdbootstrap.com/">SUDHARSAN S.</a>
              </div>
              <!-- Copyright -->
 </footer>	

<script>

window.addEventListener('load', onWndLoad, false);

function onWndLoad() {
   
    var slider = document.querySelector('.slider');
    var sliders = slider.children;
   
   
   
   
    var initX = null;  
    var transX = 0;
    var rotZ = 0;
    var transY = 0;
   
    var curSlide = null;
    
    var Z_DIS = 50;
    var Y_DIS = 10;
    var TRANS_DUR = 0.4;
  
     var images=document.querySelectorAll('img');
  for(var i=0;i<images.length;i++)
    {
      images[i].onmousemove=function(e){
        e.preventDefault()
        
      }
      images[i].ondragstart=function(e){
        return false;
        
      }
    }
  
    function init() {
       
        var z = 0, y = 0;

        for (var i = sliders.length-1; i >=0; i--) {
            sliders[i].style.transform = 'translateZ(' + z + 'px) translateY(' + y + 'px)';
           
            z -= Z_DIS;
            y += Y_DIS;
        }


        attachEvents(sliders[sliders.length - 1]);

      
       
    }
    function attachEvents(elem) {
        curSlide = elem;

        curSlide.addEventListener('mousedown', slideMouseDown, false);
        curSlide.addEventListener('touchstart', slideMouseDown, false);
    }
    init();
    function slideMouseDown(e) {
    
        if (e.touches) {
            initX = e.touches[0].clientX;
        }
        else {
            initX = e.pageX;
        }
     
       
        document.addEventListener('mousemove', slideMouseMove, false);
        document.addEventListener('touchmove', slideMouseMove, false);

        document.addEventListener('mouseup', slideMouseUp, false);
        document.addEventListener('touchend', slideMouseUp, false);
    }
    var prevSlide = null;
   
    function slideMouseMove(e) {
        var mouseX;
      
        if (e.touches) {
            mouseX = e.touches[0].clientX;
        }
        else {
            mouseX = e.pageX;
        }

        transX += mouseX - initX;
        rotZ = transX / 20;

        transY = -Math.abs(transX / 15);
     
      
      
        curSlide.style.transition = 'none';
        curSlide.style.webkitTransform = 'translateX(' + transX + 'px)' + ' rotateZ(' + rotZ + 'deg)' + ' translateY(' + transY + 'px)';
       curSlide.style.transform = 'translateX(' + transX + 'px)' + ' rotateZ(' + rotZ + 'deg)' + ' translateY(' + transY + 'px)';
        var j = 1;
        //remains elements
         for (var i = sliders.length -2; i >= 0; i--) {

        sliders[i].style.webkitTransform = 'translateX(' + transX/(2*j) + 'px)' + ' rotateZ(' + rotZ/(2*j) + 'deg)' + ' translateY(' + (Y_DIS*j) + 'px)'+ ' translateZ(' + (-Z_DIS*j) + 'px)';
        sliders[i].style.transform = 'translateX(' + transX/(2*j) + 'px)' + ' rotateZ(' + rotZ/(2*j) + 'deg)' + ' translateY(' + (Y_DIS*j) + 'px)'+ ' translateZ(' + (-Z_DIS*j) + 'px)';
        sliders[i].style.transition = 'none';
        j++;
        }      
        
          
         
          initX =mouseX;
          e.preventDefault();
          if (Math.abs(transX) >= curSlide.offsetWidth-30) {
           
              document.removeEventListener('mousemove', slideMouseMove, false);
              document.removeEventListener('touchmove', slideMouseMove, false);
              curSlide.style.transition = 'ease 0.2s';
              curSlide.style.opacity = 0;
              prevSlide = curSlide;
              attachEvents(sliders[sliders.length - 2]);
              slideMouseUp();
              setTimeout(function () {
                 
               
                 
               
                  
                  slider.insertBefore(prevSlide, slider.firstChild);
                  
                  prevSlide.style.transition = 'none';
                  prevSlide.style.opacity = '1';
                  slideMouseUp();
                
              },201);
            
             
              
              return;
          }
    }
    function slideMouseUp() {
        transX = 0;
        rotZ = 0;
        transY = 0;
      
        curSlide.style.transition = 'cubic-bezier(0,1.95,.49,.73) '+TRANS_DUR+'s';

        curSlide.style.webkitTransform = 'translateX(' + transX + 'px)' + 'rotateZ(' + rotZ + 'deg)' + ' translateY(' + transY + 'px)';
       curSlide.style.transform = 'translateX(' + transX + 'px)' + 'rotateZ(' + rotZ + 'deg)' + ' translateY(' + transY + 'px)';
        //remains elements
        var j = 1;
        for (var i = sliders.length -  2; i >= 0; i--) {
               sliders[i].style.transition = 'cubic-bezier(0,1.95,.49,.73) ' + TRANS_DUR / (j + 0.9) + 's';
        sliders[i].style.webkitTransform = 'translateX(' + transX + 'px)' + 'rotateZ(' + rotZ + 'deg)' + ' translateY(' + (Y_DIS*j) + 'px)' + ' translateZ(' + (-Z_DIS*j) + 'px)';
           sliders[i].style.transform = 'translateX(' + transX + 'px)' + 'rotateZ(' + rotZ + 'deg)' + ' translateY(' + (Y_DIS*j) + 'px)' + ' translateZ(' + (-Z_DIS*j) + 'px)';

        j++;
        }
         
        document.removeEventListener('mousemove', slideMouseMove, false);
        document.removeEventListener('touchmove', slideMouseMove, false);
     
    }


}
</script>
 </div>
</body>
</html>