

final int carNum = 10 ;
final int rowNum = 10 + 2 ; 
Car[] cars = new Car[carNum];  
Chicken chicken; 

void setup () {
  size(500, 600);

  // 創建 cars , 並指定速度 
  for (int i = 0; i < carNum; i++) {
    cars[i] = new Car(0,50 + i * 50 ,random(1, 3)) ;
  }
  
  //// 創建小雞物件、呼叫小雞 reset
  chicken = new Chicken (0,0) ;
 
}

void draw () {
  background(255);
  
  
  chicken.display();

  for (int i = 0; i < carNum; i++) {
    cars[i].display();
    cars[i].moveForward();
    if (cars[i].x > width ) cars[i].reset();


    //// 如果小雞碰到車子，呼叫小雞 reset
    if (isHit(chicken.x, chicken.y, chicken.img.width,chicken.img.height, 
      cars[i].x, cars[i].y, cars[i].img.width, cars[i].img.height)) {
        chicken.reset();
    }
  }
}

boolean isHit(float ax, float ay, float aw, float ah, float bx, float by, float bw, float bh) {
  return (
    ax+aw > bx       && 
    ax    < bx + bw  &&
    ay+ah > by       && 
    ay    < by + bh  );
}

void keyPressed() {
  if (key == CODED ) {
    switch(keyCode) {
    case UP:
      chicken.moveUp();
      break;
    case DOWN:
      chicken.moveDown();
      break;
    case LEFT:
      chicken.moveLeft();
      break;
    case RIGHT:
      chicken.moveRight();
      break;
    }
  }
}