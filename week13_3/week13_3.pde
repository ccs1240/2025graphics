//week13-3
//再把貼圖加進去
PImage img;
void setup(){
  size(400,400,P3D);
  img=loadImage("chessboard.png");
  textureMode(NORMAL);
}
void draw(){
  background(128);//灰背景
  beginShape();//開始畫
  texture(img);//把圖片當貼圖
  vertex(40,80,0,0);//4個頂點vertex的四邊形 會裁出2個三絞刑
  vertex(320,20,1,0);
  vertex(380,360,1,1);
  vertex(160,380,0,1);
  endShape();
}
