///week04_11
PShape sun;
void setup(){
size(400,400,P3D);
sun=createShape(SPHERE,100);
PImage img = loadImage("sun.jpg");
sun.setTexture(img);
}
void draw(){
  background(0);
  translate(width/2,height/2);
  shape(sun);
}
