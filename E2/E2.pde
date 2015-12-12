

final int carNum = 10 ; 
Car[] cars = new Car[carNum];  


void setup () {
  size(600, 600);

  //// 創建 cars , 並指定速度 
  for (int i = 0; i < carNum; i++){
    cars[i] = new Car( 0 , 50 * (i+1) , random(3,5)) ; 
    cars[i].reset();
  }
    
}

void draw () {
  background(255);

  for (int i = 0; i < carNum; i++) {
    // 把車子畫出來
    cars[i].display();

    // 車子往前跑
    cars[i].moveForward();

    // 如果車子超過邊界了，就要回到原點。
    if (cars[i].x > width ) cars[i].reset();
  }
}