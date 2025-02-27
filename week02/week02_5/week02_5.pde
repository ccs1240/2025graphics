//week02_5
//新的開始要描圖
PImage img;
void setup(){
  size(400,400);
  img=loadImage("c.png");
}
void draw(){
   background(img);
   fill(255,mouseX);
   println(mouseX);//半透明的色彩白色Alpha值是128
   rect(0,0,400,400);
   stroke(255,0,0);
   if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
}///if mouse be pressed after draw line give two location,now and few seconds mouse before
