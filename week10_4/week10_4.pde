PImage postman,head,body,uparm1,hand1,uparm2,hand2;
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
  pushMatrix();
    translate(+185,+261); 
    //rotate(radians(mouseX));
    translate(-185,-261); 
    image(uparm1,0,0); // 上手臂
  popMatrix();
  pushMatrix();
    translate(+116,+265); 
    //rotate(radians(mouseX));
    translate(-116,-265); 
    image(hand1,0,0); // 手肘
  popMatrix();
  pushMatrix();
    translate(+290,+262); 
    //rotate(radians(mouseX));
    translate(-290,-262); 
    image(uparm2,0,0); // 右邊上手臂
    pushMatrix();
    translate(+357,+259); 
    //rotate(radians(mouseX));
    translate(-357,-259); 
    image(hand2,0,0); // 右邊手肘
    popMatrix();
  popMatrix();

  pushMatrix();
    translate(+232,+200); // 再放回去正確的位置
    //rotate(radians(mouseX));
    translate(-232,-200); // 把頭的旋轉中心, 放到(0,0)
    image(head,0,0); // 再畫頭
  popMatrix();
  image(body,0,0); // 再畫身體
}
