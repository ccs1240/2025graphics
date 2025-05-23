//week02-8_
ArrayList<Integer> x, y; // 先有2個(還沒準備好)的(小的)資造結構，等mousePressed再新增準備
ArrayList<ArrayList<Integer>> xx = new ArrayList<ArrayList<Integer>>();//大的資料結構
ArrayList<ArrayList<Integer>> yy = new ArrayList<ArrayList<Integer>>();
PImage img;
void setup(){
  size(400,400);
  img = loadImage("c.png");//每次新的檔案，要再把圖片(拉進來)
}//記得把圖片檔，(像上周一樣)拉到程式裡
void draw(){
  background(img);
  fill(255,200);//半透明的色彩 白色，alpha值是128
  rect(0,0,400,400);//畫超大的四邊形，全部蓋住
  //上面是week02-4， 下面用迴圈，從資料結構取出來
  for(int I=0; I<xx.size(); I++){//大寫I對應大的資料結構
    ArrayList<Integer> x = xx.get(I);//取出裡面的小的資料結構
    ArrayList<Integer> y = yy.get(I);
    for(int i=1; i<x.size(); i++){//小的，在照舊畫
      line(x.get(i), y.get(i), x.get(i-1), y.get(i-1));
    }
  }
}
void keyPressed(){//小心，注音輸入法，會卡住按鍵，要換成英文輸入
  if(key=='s'||key=='S'){//如果按下英文的小寫or大寫s想save存檔的話
    for(int I=0; I<xx.size(); I++){//大寫I對應大的資料結構
    ArrayList<Integer> x = xx.get(I);//取出裡面的小的資料結構
    ArrayList<Integer> y = yy.get(I);
    println("beginShape();"); //beginShape();
    for(int i=1; i<x.size(); i++){//小的，在照舊畫
     println("vertex("+ x.get(i) +", " + y.get(i) +");");
      }//改在keyPressed()按下s或S時，再全部印!
      println("endShape();"); //endShape();
    }
  }
  noFill();
  strokeWeight(5);
  draw1();
}
void mouseDragged(){
  //println("vertex(mouseX, mouseY);");
  println("vertex("+ mouseX +", " + mouseY +");");
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){//滑鼠按下去時，建(新的)資料結構
  x = new ArrayList<Integer>(); xx.add(x);
  y = new ArrayList<Integer>(); yy.add(y);
}
void draw1(){
  beginShape();
  vertex(125, 60);
  vertex(126, 60);
  vertex(126, 61);
  vertex(128, 62);
  vertex(129, 63);
  vertex(131, 66);
  vertex(135, 67);
  vertex(137, 70);
  vertex(138, 70);
  vertex(140, 72);
  vertex(142, 73);
  vertex(144, 74);
  vertex(145, 75);
  vertex(147, 77);
  vertex(148, 79);
  vertex(150, 81);
  vertex(150, 83);
  vertex(150, 84);
  vertex(151, 85);
  vertex(151, 86);
  vertex(151, 87);
  vertex(151, 88);
  vertex(151, 91);
  vertex(150, 95);
  vertex(148, 98);
  vertex(148, 100);
  vertex(146, 102);
  vertex(148, 100);
  vertex(149, 99);
  vertex(155, 95);
  vertex(158, 93);
  vertex(159, 92);
  vertex(161, 91);
  vertex(161, 90);
  vertex(162, 88);
  vertex(160, 88);
  vertex(159, 88);
  vertex(156, 88);
  vertex(153, 89);
  vertex(152, 89);
  vertex(151, 91);
  vertex(150, 93);
  vertex(151, 93);
  vertex(152, 93);
  vertex(153, 93);
  vertex(155, 93);
  endShape();
}
