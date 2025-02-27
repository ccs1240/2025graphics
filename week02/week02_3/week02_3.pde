void setup(){
    size(400,400);
    background(255);
    fill(238);
    noStroke();
    float s=400/14;//計算格子的大小
    for(int i=0;i<14;i++){///左手I對應Y座標
      for(int j=0;j<14;j++){///右手J對應X座標
        if((i+j)%2==0) rect(j*s,i*s,s,s);
        ///rect(j*s*2,i*s*2,s,s);///先試一下位置
        ///rect(0,i*s*2,s,s);
      }
    }
}
void draw(){
  stroke(255,0,0);
  if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
}///if mouse be pressed after draw line give two location,now and few seconds mouse before
