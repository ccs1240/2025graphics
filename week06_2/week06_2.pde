void setup(){
size(500,500,P3D);
}
void draw(){
background(142);
ellipse(width/2,height/2,200,200);
translate(width/2,height/2); //把東西放在畫面中心
pushMatrix(); //第五周教過matrix保護
if(mousePressed) rotateZ(radians (frameCount));//對著下面中心旋轉
translate(-50,0,0); //把棒子往左移一半,讓右端放在正中央
box(100,30,30); //横的棒子
popMatrix(); //第五周教過matrix保護
}
