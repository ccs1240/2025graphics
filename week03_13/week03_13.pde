//week03-13 3D matrix
void setup(){
   size(600,400,P3D);
}
void draw(){
  background(128);
  pushMatrix();///備份矩陣
  lights();
  translate(300,100); 
  rotateY(radians(frameCount));
  sphere(100);
  popMatrix();///清空矩陣
  pushMatrix();
translate(100,100);
 rotateY(radians(frameCount));
sphere(100);

popMatrix();
}
