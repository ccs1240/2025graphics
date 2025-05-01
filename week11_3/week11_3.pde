//week11_3
PImage postman, head, body, uparm1, hand1, uparm2, hand2,foot1,foot2;
void setup(){
  size(560,560);
  postman = loadImage("postman.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
  uparm1 = loadImage("uparm1.png");
  hand1 = loadImage("hand1.png");
  uparm2 = loadImage("uparm2.png");
  hand2 = loadImage("hand2.png");
  foot1 = loadImage("foot1.png");  foot2 = loadImage("foot2.png");
}
float[]angleX=new float[10];
float[]angleY=new float[10];
int ID = 0;
ArrayList<String> lines= new ArrayList <String>();
void keyPressed(){
  if(key=='s'){
    String now="";//要放現在全部關節的值
    for(int i=0;i<10;i++){
      now+=angleX[i]+" ";
      now+=angleY[i]+" ";
    }
    lines.add(now);
    String[] arr= new String[lines.size()];
    lines.toArray(arr);
    saveStrings("angles.txt",arr);
    println("現在存檔:"+now);
  }
  if(key=='r'){
    String [] file = loadStrings("angles.txt");
    if(file != null){//如果有讀到檔案
      for(int i=0;i<file.length;i++){//就檔案內容逐行
        lines.add(file[i]);//加到lines資料結構裡
        println("現在存檔:"+file[i]);
      }
    }
  }
  if(key=='p') playing = !playing;
  if(key=='1') ID=1;//左臂
  if(key=='2') ID=2;//左手
  if(key=='3') ID=3;//右臂
  if(key=='4') ID=4;//右手
  if(key=='5') ID=5;//待用
  if(key=='6') ID=6;//待用
  if(key=='0') ID=0;//頭
}
boolean playing = false;
void mouseDragged(){
  angleX[ID]+= mouseX-pmouseX;
  angleY[ID]+= mouseY-pmouseY;
}
int R=0;
void myInterpolate(){
  if(lines.size()>=2){
    float alpha=(frameCount%30)/30.0;
    if(alpha==0.0) R=(R+1)%lines.size();
    int R2=(R+1)%lines.size();
    float[]oldAngle =float(split(lines.get(R),' '));
    float[]newAngle =float(split(lines.get(R2),' '));
    for(int i=0;i<10;i++){
      angleX[i] = oldAngle[i*2+0]*(1-alpha)+newAngle[i]*alpha;
      angleY[i] = oldAngle[i*2+0]*(1-alpha)+newAngle[i]*alpha;
    }
  }
}
void draw(){
  background(#FFFFF2);
  if(playing) myInterpolate();
  image(body,0,0);
  pushMatrix();
  translate(299,130);
  rotate(radians(angleX[0]));
  translate(-299,-129);
  image(head,0,0);
  popMatrix();
  pushMatrix();
    translate(257,275);
    rotate(radians(angleX[5]));
    translate(-257,-275);
    image(foot1,0,0);
  popMatrix();
  pushMatrix();
    translate(338,275);
    rotate(radians(angleX[6]));
    translate(-338,-275);
    image(foot2,0,0);
  popMatrix();
  pushMatrix();
    translate(237,155);
    rotate(radians(angleX[1]));
    translate(-237,-155);
    image(uparm1,0,0);
    pushMatrix();
      translate(170,152);
      rotate(radians(angleX[2]));
      translate(-170,-152);
      image(hand1,0,0);
    popMatrix();
  popMatrix();
    pushMatrix();
    translate(357,164);
    rotate(radians(angleX[3]));
    translate(-357,-164);
    image(uparm2,0,0);
    pushMatrix();
      translate(424,154);
      rotate(radians(angleX[4]));
      translate(-424,-154);
      image(hand2,0,0);
    popMatrix();
  popMatrix();

}
