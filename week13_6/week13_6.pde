import processing.video.*;
PImage img;
Movie movie;
void setup(){
  size(400, 400, P3D);
  movie = new Movie(this, "street.mov");  // 720x480
  movie.loop(); // 記得要把視訊「循環播放」
  img = loadImage("chessboard.png");
  textureMode(NORMAL);
  video = new Capture(this, 640, 480); // 建立攝影機物件
  video.start(); // 要記得「開始播放」
}
void draw() {
  camera(200,200,200,200+cos(radians(frameCount)),200,200+sin(radians(frameCount)),0,1,0);
  background(128);
  if (movie.available()) {
    movie.read();
  }
  beginShape();
    texture(img);
    vertex(0, 0, 0, 0, 0);
    vertex(400, 0, 0, 1, 0);
    vertex(400, 400, 0, 1, 1);
    vertex(0, 400, 0, 0, 1);
  endShape();
  image(movie, 0, 0, 360, 240);
  if (video.available()) {
    video.read();
  }
  beginShape();
    texture(video);  // 使用攝影機畫面作為貼圖
    vertex(0, 0, 0, 0, 0);
    vertex(0, 400, 0, 0, 1);
    vertex(0, 400, 400, 1, 1);
    vertex(0, 0, 400, 1, 0);
  endShape();
}
