
//PImage arrow ;
 
final int ArrowLength = 30 ;
final int numberOfArrowPerSide = 10 ;
final int fixImageOffset = ArrowLength / 2 ;

Arrow[][] arrows = new Arrow[numberOfArrowPerSide][numberOfArrowPerSide] ;

void setup (){
  //arrow =  loadImage("arrow.png") ;
  size(300 , 300) ;
  imageMode(CENTER);
  
  for (int i = 0  ; i < numberOfArrowPerSide ; i++){
    for (int j = 0 ; j < numberOfArrowPerSide ; j++){
      
      int currentArrowX = fixImageOffset  + i * ArrowLength ;
      int currentArrowY = fixImageOffset  + j * ArrowLength ;

      arrows[i][j] = new Arrow(currentArrowX , currentArrowY) ; 
    }
  }
      
}

void draw(){
  background(255);
  
  for (int i = 0  ; i < numberOfArrowPerSide ; i++){
    for (int j = 0 ; j < numberOfArrowPerSide ; j++){
      arrows[i][j].pointAtPoint(mouseX , mouseY);
      arrows[i][j].display();
      
      //arrows[i][j].moveForward() ;
      //if (arrows[i][j].x > width - fixImageOffset ) arrows[i][j].reset();
      
    }
  }
}