class Arrow {
  PImage img ;
  float targetRotation ; 
  float x ; 
  float y ; 
  
  Arrow (float x, float y ){
    this.x = x; 
    this.y = y ;
    img = loadImage("arrow.png") ;
  }
  
  void pointAtPoint(float x, float y){
    targetRotation = atan2(y - this.y , x - this.x  ); 
  }
  
  void display(){
    pushMatrix();
      
    // 把神之手移到要畫畫的位置
    translate(x,y);
    
    // 指定神之手的角度，使他瞄準滑鼠方向
    rotate( targetRotation ) ;
    
    // 神之手在螢幕上畫出東西
    image(img,0,0);
    
    rotate(0);
    // 神之手回到一開始的地方
    popMatrix();
  
  }
  

  // 加上移動跟重設
  //void reset (){
  //  x = -img.width ; 
  //}

  //void moveForward (){
  //  x += 1 ; 
  //}

}