//week14_1 pFont
///學過了PImage PVector P...

size(300,300);
textSize(50);
text("Hello",10,50);
PFont font = createFont("Times New Roman",50);
textFont(font);
text("Hello",10,100);
///print(PFont.list());
for(String name:PFont.list()) println(name);
