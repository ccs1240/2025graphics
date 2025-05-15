//week13-2-camera-movie-eye-center-up
//電腦圖學繪圖時,會設定camera的相關係數
import processing.video.*;
Movie movie;
void setup(){
  size(720,480,P3D);
  movie = new Movie(this,"street.mov");
  movie.loop();//迴圈播放
}
void draw(){
  background(128);
  //processing.org/referce/camera_.html
  camera(mouseX, mouseY,500,360,240,0,0,1,0);//很多參數
  //eyex,eyey,eyez,centerx,centery,centerz,upx,upy,upz
  //把影片中心點當主角
  if (movie.available()) movie.read();//if 有新的變讀入
  image(movie,0,0);//放影片,放在(0,0)
}
