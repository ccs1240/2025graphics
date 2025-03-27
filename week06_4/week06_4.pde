void setup(){
  size(500,400,P3D);
}
void draw(){
  background(255);//step00
  translate(width/2,height/2);//step000
  sphere(10);//step04放個圓球當世界中心的參考
  
  box(200,50,25);//手肘
  
  fill(252,131,77);
  pushMatrix();//S03
  translate(x,y);///S06
  if(mousePressed)rotateZ(radians(frameCount));
  translate(25,0,0);//S02往右邊推讓左端放中心
  box(50,25,50);///S01小手腕
 popMatrix();//S03
}
float x=0,y=0;//S06會動的位置
void mouseDragged(){//S06
  x+=mouseX-pmouseX;
  y+=mouseY-pmouseY;
  println("x:"+x+"y:"+y);//S07印出來
}
