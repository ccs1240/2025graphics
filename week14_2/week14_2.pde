 ///week14_2Pfont
 PFont font1,font2,font3;
 void setup(){
   size(300,300);
   font1=createFont("Times New Roman Bold Italic",50);
   font2=createFont("微軟正黑體 Bold",50);
   font3=createFont("elffont-rock.otf",50);
 }
 void draw(){
   background(0);///黑色的背景
   cursor(CROSS);
   fill(255);///default is white fill color
   textFont(font1);
   text("Hello 中文",mouseX+20,mouseY-20);
   fill(#CE3030);//*Tool color selector*---choose the color whatever you want
   textFont(font2);
   text("Hello 中文",mouseX+20,mouseY+50);
   textFont(font3);
   text("ㄍㄋㄋ",mouseX+20,mouseY+100);
 }
