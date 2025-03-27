void setup(){
  size(500,400,P3D);
}
void draw(){
  background(255);//
  translate(width/2,height/2);//
  sphere(10);// 
  
  fill(252,131,77);
  
  box(50,200,25);//S03arm
  
  pushMatrix();//
  translate(x,y);
  if(mousePressed)rotateZ(radians(frameCount));//S02把轉放入
  translate(100,0);///把手肘的移動輛100,0放入
    ///
    box(200,50,25);//

    pushMatrix();
    translate(100,0);///
    ///if(mousePressed)rotateZ(radians(frameCount));S02 if刪掉
    rotateZ(radians(frameCount));///
    translate(25,0,0);//
    box(50,25,50);///
   popMatrix();//
   popMatrix();//
}
float x=0,y=0;//
void mouseDragged(){
  x+=mouseX-pmouseX;
  y+=mouseY-pmouseY;
  println("x:"+x+"y:"+y);//
}
