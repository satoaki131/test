int[] x = new int[8];
int y;
int speed;
int number;

void setup(){
  background(0);
  number = 8;
  size(400, 400);
  for(int i = 0; i < number; i++){
    x[i] = i * 40;
  }
  y = 0;
  speed = 1;
}

void draw(){
  background(0);
  fill(255, 0, 0);
  
  for(int i = 0; i < number; i++){
    x[i] += speed;
    rect(x[i], y, 30, 30);
  }
  if(x[number - 1] > width - 30 || x[0] < 0){
     y += 30;
     speed *= -1;
   }
   if(y > 310){
     y =0;
   }
 
}
