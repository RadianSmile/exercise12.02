class Car {
  float x ; 
  float y ; 
  float speed ; 
  PImage img ;  
  
  Car (float x , float y ){
    img = loadImage("car.png") ;   
    speed = 10 ; 
  }
  
  void reset (){
    x = -img.width ;
    y = (int) random (height- img.height) ;
  }

  void display (){
    image (img,x,y);
  }
  
  void moveForward (){
    x += speed ; 
  }
}