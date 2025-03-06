//week03-5-mousecat????
void setup(){
  size(400,400);
}
float x,y;
void draw(){
  background(255);
  ellipse(x,y,40,40);
  ellipse(mouseX,mouseY,40,20);
  x=(x*19+mouseX)/20;
  y=(y*19+mouseY)/20;
}
