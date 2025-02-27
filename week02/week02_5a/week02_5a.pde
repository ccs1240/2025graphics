//week02_5_1A COMBINE
//新的開始要描圖
ArrayList<Integer> x=new ArrayList<Integer>();
ArrayList<Integer> y=new ArrayList<Integer>();
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
   for(int i=1;i<x.size();i++){
     line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
}
}
 void mouseDragged(){
    x.add(mouseX);
    y.add(mouseY);
}///if mouse be pressed after draw line give two location,now and few seconds mouse before
