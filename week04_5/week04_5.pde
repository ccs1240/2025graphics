//week04-1
void setup(){

size(400, 400, P3D);
}

void draw(){
background(128);
translate(width/2,height/2);
pushMatrix();
translate(0, 100);
box(50);
pushMatrix();
translate(0,-20);
rotateZ(radians(mouseX));
translate(0, -50);

box(10, 100, 10); //可轉動的長條
popMatrix();
popMatrix();
}
