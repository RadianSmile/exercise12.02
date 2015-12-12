class Car {
  float x ; 
  float y ; 
  float speed ; 
  PImage img ;  
  
  Car (float x , float y ){
    img = loadImage("car.png") ;
    this.x = x ; 
    this.y = y ;
    speed = 10 ; 
  }

  Car (float x , float y , float speed){
    img = loadImage("car.png") ;
    this.x = x ; 
    this.y = y ;
    this.speed = speed ;   
  }
 
  
  void reset (){
    x = -img.width ; 
  }

  void display (){
    image (img,x,y);
  }
  
  void moveForward (){
    x += speed ; 
  }
}