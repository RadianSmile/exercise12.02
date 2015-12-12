// chicken 可以直接給他們
class Chicken {
  float x ; 
  float y ;
  PImage img ;
  float speed = 10 ; 
  Chicken (float x , float y ) {
    img = loadImage("chicken.png") ;
    this.x = x ; 
    this.y = y ;

  }
  void reset(){
    x = width / 2  ; 
    y = 0 ; 
  }
  void display (){
    image(img,x,y);
  }
  void moveUp (){
    y-= speed ;
  }
  void moveDown (){
    y+= speed ;
  }
  void moveLeft (){
    x-= speed ;
  }
  void moveRight (){
    x+= speed ;
  }
  
}