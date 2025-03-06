void setup(){
 size(400,400);
}
float startX=10,startY=10;
float stopX=390,stopY=390;
void draw(){
  ellipse(startX,startY,10,10);
  ellipse(stopX,stopY,10,10);
  //lerp()可以做內插 要給他0.0到1.0之間的數
  float midX=lerp(startX,stopX,frameCount/200.0);
  float midY=lerp(startY,stopY,frameCount/200.0);
  ///frameCount是第幾個FARME 一小時60分，一分=60秒，一秒等於60FRAME
  ellipse(midX,midY,10,10);
  
}
