void setup(){
  size(500,400,P3D);
}
void draw(){
  background(255);//
  translate(width/2,height/2);//
  sphere(10);// 
  
  fill(252,131,77);
  pushMatrix();//s04新的一組
  translate(x,y);///s05新的轉動
    ///s03把程式往右縮排
    box(200,50,25);//s05手肘

    pushMatrix();
    translate(100,0);///S01 把剛前一步發現得100,0放好
    ///if(mousePressed)rotateZ(radians(frameCount));S02 if刪掉
    rotateZ(radians(frameCount));///S02換成只轉動
    translate(25,0,0);//S02往右邊推讓左端放中心
    box(50,25,50);///小手腕
   popMatrix();//
   popMatrix();//
}
float x=0,y=0;//S06會動的位置
void mouseDragged(){//S06
  x+=mouseX-pmouseX;
  y+=mouseY-pmouseY;
  println("x:"+x+"y:"+y);//S07印出來
}
