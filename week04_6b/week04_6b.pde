void setup(){

size(400, 400, P3D);
}
void draw(){
background(128);
translate(mouseX,mouseY);//加這行
rotateZ(radians(frameCount));////對Z軸旋轉
translate(0, -50);///把下端移到中心
box(10, 100, 10);///可轉動的長條
}
