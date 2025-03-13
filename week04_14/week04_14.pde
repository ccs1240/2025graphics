///week04-14
PShape sun,earth,moon;
void setup(){
size(400, 400, P3D);
sun=createShape(SPHERE,70);
PImage img = loadImage("sun.jpg");
sun.setTexture(img);

earth=createShape(SPHERE,30);
img = loadImage("earth.jpg");
earth.setTexture(img);

moon=createShape(SPHERE,10);
img = loadImage("moon.jpg");
moon.setTexture(img);
}
void draw(){
background(128);
translate(width/2,height/2);
shape(sun);
rotateY(radians(frameCount));
pushMatrix();
translate(150,0);
rotateY(radians(frameCount));
shape(earth);//地球
pushMatrix();
translate(50,0);
rotateY(radians(frameCount));
shape(moon);//月球
popMatrix();
popMatrix();
}
