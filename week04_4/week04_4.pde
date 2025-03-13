void setup(){
size(400,400,P3D);
}
void draw(){
background(128);

translate(width/2,height/2);

rotateZ(radians (mouseX)); //本周的上下轉

ellipse(0,0,100,150);
}
