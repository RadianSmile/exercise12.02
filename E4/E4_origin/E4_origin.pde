
PImage arrow ;
final int ArrowLength = 30 ;
final int numberOfArrowPerSide = 10 ; 
final int fixImageOffset = ArrowLength / 2 ;
void setup (){
  arrow =  loadImage("arrow.png") ;
  size(300 , 300) ;
  imageMode(CENTER);
  
}

void draw(){
  background(255);
  
  for (int i = 0  ; i < numberOfArrowPerSide ; i++){
    for (int j = 0 ; j < numberOfArrowPerSide ; j++){
      
      int currentArrowX = fixImageOffset  + i * ArrowLength ;
      int currentArrowY = fixImageOffset  + j * ArrowLength ;
      
      // 先記住神之手原本的位置
      pushMatrix();
      
      // 把神之手移到要畫畫的位置
      translate(currentArrowX,currentArrowY);
      
      // 指定神之手的角度，使他瞄準滑鼠方向
      rotate( atan2(mouseY - currentArrowY , mouseX - currentArrowX )) ;
      
      // 神之手在螢幕上畫出東西
      image(arrow,0,0);
      
      // 神之手回到一開始的地方
      popMatrix();
    }
  }
}