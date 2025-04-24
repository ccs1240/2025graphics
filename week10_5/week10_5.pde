PImage postman,head,body,uparm1,hand1,uparm2,hand2;
float [] angle = new float[20]; // 準備20個關節的變數
int ID = 0; // 現在要處理的關節ID (第幾個關節)
void mouseDragged(){
  angle[ID] += mouseX - pmouseX;
}
void keyPressed(){
  if(key=='1') ID = 1; // 左邊臂
  if(key=='2') ID = 2; // 左邊手
  if(key=='3') ID = 3; // 右邊臂
  if(key=='4') ID = 4; // 右邊手
  if(key=='5') ID = 5; // (待用)
  if(key=='6') ID = 6; // (待用)
  if(key=='0') ID = 0; // 頭
}
void setup(){
  size(560,560);
  postman = loadImage("postman.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
  uparm1 = loadImage("uparm1.png");
  hand1 = loadImage("hand1.png");
  uparm2 = loadImage("uparm2.png");
  hand2 = loadImage("hand2.png");
}
void draw(){
  background(#FFFFF2);
  image(postman,0,0);
  fill(255,0,255,128); // 半透明的紫色
  rect(0,0,560,560); // 蓋上去
  pushMatrix(); // 左
    translate(+185,+261); 
    rotate(radians(angle[1]));
    translate(-185,-261); 
    image(uparm1,0,0); // 左邊上手臂
  pushMatrix();
    translate(+116,+265); 
    rotate(radians(angle[2]));
    translate(-116,-265); 
    image(hand1,0,0); // 左邊手肘
    popMatrix();
  popMatrix();
  pushMatrix(); // 右
    translate(+290,+262); 
    rotate(radians(angle[3]));
    translate(-290,-262); 
    image(uparm2,0,0); // 右邊上手臂
    pushMatrix();
    translate(+357,+259); 
    rotate(radians(angle[4]));
    translate(-357,-259); 
    image(hand2,0,0); // 右邊手肘
    popMatrix();
  popMatrix();

  pushMatrix();
    translate(+236,+231); // 再放回去正確的位置
    rotate(radians(angle[0]));
    translate(-236,-231); // 把頭的旋轉中心, 放到(0,0)
    image(head,0,0); // 再畫頭
  popMatrix();
  image(body,0,0); // 再畫身體
}
